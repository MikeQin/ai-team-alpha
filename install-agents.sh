#!/bin/bash

# install-agents.sh - AI Team Alpha Installation Script
# Installs 9 AI agents + framework documentation to user's Claude Code profile

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script information
SCRIPT_NAME="AI Team Alpha Installer"
VERSION="2.0.0"
AGENTS_SOURCE_DIR="./.claude/agents"
AGENTS_TARGET_DIR="$HOME/.claude/agents"

# Command line options
FORCE_INSTALL=false

# Banner
echo -e "${GREEN}╔══════════════════════════════════════════════════════════════╗"
echo -e "║                                                              ║"
echo -e "║   🤖 AI Team Alpha Installer v2.0.0 🤖                       ║"
echo -e "║                                                              ║"
echo -e "║   Installing 9 agents + framework docs + protocols          ║"
echo -e "║                                                              ║"
echo -e "╚══════════════════════════════════════════════════════════════╝${NC}"
echo

# Function to print status messages
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if we're in the right directory
check_source_directory() {
    print_status "Checking source directory..."
    
    if [ ! -d "$AGENTS_SOURCE_DIR" ]; then
        print_error "Agent source directory not found: $AGENTS_SOURCE_DIR"
        print_error "Please run this script from the cc-agents project root directory."
        exit 1
    fi
    
    # Check if we have all expected agent files
    local expected_agents=(
        "code-reviewer-marcus.md"
        "data-scientist-elena.md"
        "debugger-diego.md"
        "fullstack-luke.md"
        "infrastructure-alex.md"
        "product-owner-will.md"
        "security-architect-sarah.md"
        "senior-qa-vijay.md"
        "system-architect-mike.md"
    )
    
    local missing_agents=()
    for agent in "${expected_agents[@]}"; do
        if [ ! -f "$AGENTS_SOURCE_DIR/$agent" ]; then
            missing_agents+=("$agent")
        fi
    done
    
    # Check for CLAUDE.md in project root
    if [ ! -f "CLAUDE.md" ]; then
        missing_agents+=("CLAUDE.md (in project root)")
    fi
    
    if [ ${#missing_agents[@]} -gt 0 ]; then
        print_error "Missing agent configuration files:"
        for agent in "${missing_agents[@]}"; do
            print_error "  - $agent"
        done
        exit 1
    fi
    
    
    # Check for AGENT_COMMUNICATION_PROTOCOL.md in agents directory
    if [ ! -f "$AGENTS_SOURCE_DIR/AGENT_COMMUNICATION_PROTOCOL.md" ]; then
        missing_agents+=("AGENT_COMMUNICATION_PROTOCOL.md")
    fi
    
    if [ ${#missing_agents[@]} -gt 0 ]; then
        print_error "Missing agent configuration files:"
        for agent in "${missing_agents[@]}"; do
            print_error "  - $agent"
        done
        exit 1
    fi
    
    print_success "Found all 11 expected files (9 agents + framework documentation + communication protocol)"
}

# Function to create target directory
create_target_directory() {
    print_status "Creating target directory: $AGENTS_TARGET_DIR"
    
    # Create ~/.claude directory if it doesn't exist
    if [ ! -d "$HOME/.claude" ]; then
        mkdir -p "$HOME/.claude"
        print_success "Created ~/.claude directory"
    fi
    
    # Create ~/.claude/agents directory if it doesn't exist
    if [ ! -d "$AGENTS_TARGET_DIR" ]; then
        mkdir -p "$AGENTS_TARGET_DIR"
        print_success "Created $AGENTS_TARGET_DIR directory"
    else
        print_warning "Target directory already exists: $AGENTS_TARGET_DIR"
    fi
}

# Function to check for existing agents and prompt for overwrite
check_existing_agents() {
    if [ -d "$AGENTS_TARGET_DIR" ] && [ "$(ls -A $AGENTS_TARGET_DIR 2>/dev/null)" ]; then
        local existing_count=$(find "$AGENTS_TARGET_DIR" -name "*.md" -type f | wc -l)
        
        echo
        print_warning "Existing agent installation detected!"
        print_status "Found $existing_count agent configuration files in: $AGENTS_TARGET_DIR"
        echo
        
        # List existing agents
        print_status "Existing agents:"
        find "$AGENTS_TARGET_DIR" -name "*.md" -type f -exec basename {} \; | sort | while read -r agent; do
            echo "  • $agent"
        done
        
        echo
        print_warning "This installation will overwrite existing agent configurations."
        print_status "A backup will be created automatically before overwriting."
        echo
        
        # Skip prompt if force install is enabled
        if [ "$FORCE_INSTALL" = true ]; then
            print_status "Force install enabled - proceeding without confirmation..."
            return 0
        fi
        
        # Prompt for confirmation
        while true; do
            echo -n "Do you want to proceed and overwrite existing agents? (y/N): "
            read -r response
            case $response in
                [Yy]* )
                    print_success "Proceeding with installation..."
                    return 0
                    ;;
                [Nn]* | "" )
                    print_status "Installation cancelled by user."
                    print_status "Your existing agents remain unchanged."
                    exit 0
                    ;;
                * )
                    print_error "Please answer yes (y) or no (n)."
                    ;;
            esac
        done
    fi
}

# Function to backup existing agents
backup_existing_agents() {
    if [ -d "$AGENTS_TARGET_DIR" ] && [ "$(ls -A $AGENTS_TARGET_DIR 2>/dev/null)" ]; then
        local backup_dir="$AGENTS_TARGET_DIR.backup.$(date +%Y%m%d_%H%M%S)"
        print_status "Creating backup of existing agents..."
        print_status "Backup location: $backup_dir"
        
        cp -r "$AGENTS_TARGET_DIR" "$backup_dir"
        
        if [ $? -eq 0 ]; then
            print_success "Backup created successfully: $backup_dir"
        else
            print_error "Failed to create backup!"
            print_error "Installation aborted to prevent data loss."
            exit 1
        fi
    fi
}

# Function to install agents
install_agents() {
    print_status "Installing AI Team Alpha..."
    
    local installed_count=0
    local skipped_count=0
    
    # Copy agent files from .claude/agents/
    for agent_file in "$AGENTS_SOURCE_DIR"/*.md; do
        if [ -f "$agent_file" ]; then
            local agent_name=$(basename "$agent_file")
            local target_file="$AGENTS_TARGET_DIR/$agent_name"
            
            # Copy the agent file
            cp "$agent_file" "$target_file"
            
            if [ $? -eq 0 ]; then
                print_success "Installed: $agent_name"
                installed_count=$((installed_count + 1))
            else
                print_error "Failed to install: $agent_name"
            fi
        fi
    done
    
    # Copy CLAUDE.md from project root
    if [ -f "CLAUDE.md" ]; then
        cp "CLAUDE.md" "$AGENTS_TARGET_DIR/CLAUDE.md"
        if [ $? -eq 0 ]; then
            print_success "Installed: CLAUDE.md (framework documentation)"
            installed_count=$((installed_count + 1))
        else
            print_error "Failed to install: CLAUDE.md"
        fi
    fi
    
    echo
    echo
    print_success "Installation completed!"
    print_success "Installed $installed_count agent configuration files"
    print_status "✅ 9 specialized AI agents"
    print_status "✅ Framework documentation (CLAUDE.md)"
    print_status "✅ Inter-agent communication protocol"
}

# Function to verify installation
verify_installation() {
    print_status "Verifying installation..."
    
    local agent_count=$(find "$AGENTS_TARGET_DIR" -name "*.md" -type f | wc -l)
    
    if [ "$agent_count" -eq 11 ]; then
        print_success "Verification passed: All 11 files installed correctly (9 agents + framework documentation + communication protocol)"
    else
        print_warning "Verification warning: Found $agent_count files (expected 11: 9 agents + CLAUDE.md + AGENT_COMMUNICATION_PROTOCOL.md)"
    fi
    
    echo
    print_status "Installed agents:"
    ls -la "$AGENTS_TARGET_DIR"/*.md | while read -r line; do
        echo "  $line"
    done
}

# Function to show usage instructions
show_usage_instructions() {
    echo
    echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗"
    echo -e "║                                                              ║"
    echo -e "║                    🎉 Installation Complete!                 ║"
    echo -e "║                                                              ║"
    echo -e "╚══════════════════════════════════════════════════════════════╝${NC}"
    echo
    print_success "The AI Team Alpha is now installed and ready to use!"
    echo
    print_status "Available agents:"
    echo "  • Will (PO) - Product Owner for requirements gathering"
    echo "  • Mike (Architect) - System Architect for technical design"
    echo "  • Sarah (Security Architect) - Security architecture and compliance"
    echo "  • Luke (Fullstack) - Full-stack development across web, mobile, and backend"
    echo "  • Vijay (QA) - Quality assurance and testing strategies"
    echo "  • Alex (Infrastructure) - DevOps, infrastructure, and deployment"
    echo "  • Marcus (Code Reviewer) - Code quality and security review"
    echo "  • Diego (Debugger) - Error resolution and troubleshooting"
    echo "  • Elena (Data Scientist) - Data analysis and SQL queries"
    echo
    print_status "Usage examples (enter in Claude Code conversation):"
    echo "  \"Use the Will subagent to create a task management app\""
    echo "  \"Use the Mike subagent to design scalable architecture\""
    echo "  \"Use the Luke subagent to implement dashboard\""
    echo "  \"Use the Marcus subagent to review recent changes\""
    echo
    print_status "For complete documentation, see:"
    echo "  • README.md - Comprehensive project documentation and advanced features"
    echo "  • CLAUDE.md - Framework documentation and agent capabilities"
    echo "  • AGENT_COMMUNICATION_PROTOCOL.md - Inter-agent workflow patterns"
    echo "  • MARKETING.md - Enterprise features and success stories"
    echo
    print_success "Happy coding with your AI Team Alpha v2.0! 🚀⚡"
}

# Main installation process
main() {
    echo "Starting installation process..."
    echo
    
    # Check if running from correct directory
    check_source_directory
    
    # Create target directory
    create_target_directory
    
    # Check for existing agents and prompt for overwrite
    check_existing_agents
    
    # Backup existing agents if any
    backup_existing_agents
    
    # Install agents
    install_agents
    
    # Verify installation
    verify_installation
    
    # Show usage instructions
    show_usage_instructions
}

# Function to show help
show_help() {
    echo "Usage: $0 [OPTIONS]"
    echo
    echo "Install AI Team Alpha to Claude Code profile (~/.claude/agents/)"
    echo
    echo "Options:"
    echo "  -f, --force     Force installation without confirmation prompts"
    echo "  -h, --help      Show this help message"
    echo "  -v, --version   Show version information"
    echo
    echo "Examples:"
    echo "  $0              # Interactive installation with prompts"
    echo "  $0 --force      # Force install, overwrite without asking"
    echo
}

# Function to show version
show_version() {
    echo "$SCRIPT_NAME v$VERSION"
}

# Parse command line arguments
parse_arguments() {
    while [[ $# -gt 0 ]]; do
        case $1 in
            -f|--force)
                FORCE_INSTALL=true
                shift
                ;;
            -h|--help)
                show_help
                exit 0
                ;;
            -v|--version)
                show_version
                exit 0
                ;;
            *)
                print_error "Unknown option: $1"
                echo "Use --help for usage information."
                exit 1
                ;;
        esac
    done
}

# Handle script interruption
cleanup() {
    echo
    print_warning "Installation interrupted by user"
    exit 1
}

trap cleanup SIGINT SIGTERM

# Parse command line arguments first
parse_arguments "$@"

# Check if running as root (not recommended)
if [ "$EUID" -eq 0 ]; then
    print_warning "Running as root is not recommended"
    print_warning "This will install agents to /root/.claude/agents/"
    
    if [ "$FORCE_INSTALL" != true ]; then
        echo -n "Continue anyway? (y/N): "
        read -r response
        if [[ ! "$response" =~ ^[Yy]$ ]]; then
            print_status "Installation cancelled"
            exit 0
        fi
    else
        print_status "Force install enabled - proceeding as root..."
    fi
fi

# Show force install notice
if [ "$FORCE_INSTALL" = true ]; then
    print_status "Force install mode enabled - skipping confirmation prompts"
fi

# Run main installation
main

exit 0