# AI Team Alpha 🤖

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/version-1.0.0-green.svg)
![Claude Code](https://img.shields.io/badge/Claude%20Code-Compatible-purple.svg)
![Agents](https://img.shields.io/badge/agents-9-orange.svg)

> A collection of 9 specialized AI subagents for Claude Code that supercharge your development workflow with role-based expertise.

## 🚀 Quick Start

1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd ai-team-alpha
   ```

2. **Install agents:**
   ```bash
   ./install-agents.sh
   ```

3. **Start using in Claude Code:**
   ```bash
   claude --agent product-owner-will "Create requirements for a todo app"
   ```

## 👥 Meet Your AI Team

| Agent | Role | Specialty | Color |
|-------|------|-----------|-------|
| **Will** | Product Owner | Requirements gathering, user stories | - |
| **Mike** | System Architect | Technical design, scalability | - |
| **Sarah** | Security Architect | Security compliance, threat modeling | - |
| **Luke** | Fullstack Developer | Web, mobile, backend development | - |
| **Vijay** | QA Engineer | Testing strategies, quality assurance | - |
| **Alex** | Infrastructure Engineer | DevOps, deployment, CI/CD | - |
| **Marcus** | Code Reviewer | Code quality, security review | 🟠 |
| **Diego** | Debugger | Error resolution, troubleshooting | 🔴 |
| **Elena** | Data Scientist | SQL queries, data analysis | 🔵 |

## 📋 How to Use Subagents

### Basic Usage Pattern

```bash
claude --agent <agent-name> "<your request>"
```

### 🎯 Planning & Requirements

**Product Owner (Will)**
```bash
# Define project requirements
claude --agent product-owner-will "Create comprehensive requirements for an e-commerce platform"

# Generate user stories
claude --agent product-owner-will "Write user stories for user authentication and profile management"

# Feature prioritization
claude --agent product-owner-will "Help prioritize these features: payments, inventory, reviews, recommendations"
```

**System Architect (Mike)**
```bash
# Design system architecture
claude --agent system-architect-mike "Design a microservices architecture for handling 100k concurrent users"

# Technology recommendations
claude --agent system-architect-mike "Recommend tech stack for a real-time chat application with file sharing"

# Database design
claude --agent system-architect-mike "Design database schema for a social media platform"
```

### 🔒 Security & Compliance

**Security Architect (Sarah)**
```bash
# Security architecture review
claude --agent security-architect-sarah "Review the security architecture for our payment processing system"

# Threat modeling
claude --agent security-architect-sarah "Perform threat modeling for user authentication flow"

# Compliance guidance
claude --agent security-architect-sarah "Ensure GDPR compliance for user data collection"
```

### 💻 Development

**Fullstack Developer (Luke)**
```bash
# Complete application development
claude --agent fullstack-luke "Create a task management app with React frontend and FastAPI backend"

# Cross-platform development
claude --agent fullstack-luke "Build a mobile app with Flutter and web dashboard with Next.js"

# API development
claude --agent fullstack-luke "Create RESTful API with authentication and real-time notifications"
```

### 🏗️ Infrastructure & Operations

**Infrastructure Engineer (Alex)**
```bash
# CI/CD pipeline setup
claude --agent infrastructure-alex "Set up GitHub Actions for automated testing and deployment"

# Container orchestration
claude --agent infrastructure-alex "Create Docker and Kubernetes configs for microservices deployment"

# Performance optimization
claude --agent infrastructure-alex "Optimize database performance for high-traffic application"
```

### 🧪 Quality Assurance

**QA Engineer (Vijay)**
```bash
# Test strategy development
claude --agent senior-qa-vijay "Create comprehensive testing strategy for our new API"

# Test case generation
claude --agent senior-qa-vijay "Generate test cases for user authentication flow"

# Performance testing
claude --agent senior-qa-vijay "Design performance testing plan for handling 10k concurrent users"
```

### 🔍 Code Quality & Debugging

**Code Reviewer (Marcus)**
```bash
# Code review
claude --agent code-reviewer-marcus "Review the recent changes in my authentication module"

# Security audit
claude --agent code-reviewer-marcus "Audit this payment processing code for security vulnerabilities"

# Best practices review
claude --agent code-reviewer-marcus "Review this React component for performance and maintainability"
```

**Debugger (Diego)**
```bash
# Error investigation
claude --agent debugger-diego "Help debug this 500 error in my API endpoint"

# Performance issues
claude --agent debugger-diego "Investigate why my React app is rendering slowly"

# Test failures
claude --agent debugger-diego "Debug these failing unit tests in my authentication service"
```

**Data Scientist (Elena)**
```bash
# SQL query optimization
claude --agent data-scientist-elena "Optimize this complex query for better performance"

# Data analysis
claude --agent data-scientist-elena "Analyze user engagement metrics from our PostgreSQL database"

# BigQuery operations
claude --agent data-scientist-elena "Create BigQuery queries to analyze user behavior patterns"
```

## 🔄 Workflow Examples

### Complete Project Workflow

```bash
# 1. Define requirements
claude --agent product-owner-will "Create requirements for a blog platform"

# 2. Design architecture
claude --agent system-architect-mike "Design scalable architecture for the blog platform"

# 3. Security review
claude --agent security-architect-sarah "Review security requirements for blog platform"

# 4. Implement application
claude --agent fullstack-luke "Implement the blog platform with Next.js and PostgreSQL"

# 5. Set up infrastructure
claude --agent infrastructure-alex "Set up CI/CD and deployment for the blog platform"

# 6. Create tests
claude --agent senior-qa-vijay "Create comprehensive test suite for blog platform"

# 7. Code review
claude --agent code-reviewer-marcus "Review all code for quality and security"

# 8. Debug issues
claude --agent debugger-diego "Debug any issues found during testing"
```

### Feature Development Workflow

```bash
# 1. Define feature
claude --agent product-owner-will "Define user authentication feature requirements"

# 2. Implement feature
claude --agent fullstack-luke "Implement JWT-based authentication with password reset"

# 3. Review code
claude --agent code-reviewer-marcus "Review authentication implementation"

# 4. Create tests
claude --agent senior-qa-vijay "Create tests for authentication feature"

# 5. Debug issues
claude --agent debugger-diego "Fix any issues found in authentication tests"
```

## 📁 Project Structure

```
ai-team-alpha/
├── .claude/
│   └── agents/
│       ├── code-reviewer-marcus.md
│       ├── data-scientist-elena.md
│       ├── debugger-diego.md
│       ├── fullstack-luke.md
│       ├── infrastructure-alex.md
│       ├── product-owner-will.md
│       ├── security-architect-sarah.md
│       ├── senior-qa-vijay.md
│       └── system-architect-mike.md
├── install-agents.sh
├── README.md
└── CLAUDE.md
```

## 🎨 Agent Customization

Each agent can be customized by editing their respective `.md` files in `.claude/agents/`:

- **Model**: All agents use `sonnet` by default
- **Colors**: Each agent has a unique color for UI differentiation
- **Tools**: Specific tool access per agent role
- **Behavior**: Custom instructions and workflows

## 🤝 Best Practices

### When to Use Each Agent

- **Use Will** when you need clear requirements, user stories, or feature prioritization
- **Use Mike** for architectural decisions, technology choices, or system design
- **Use Sarah** for security reviews, compliance, or threat analysis  
- **Use Luke** for any development work across web, mobile, or backend
- **Use Alex** for infrastructure, deployment, or DevOps tasks
- **Use Vijay** for testing strategies, test creation, or QA processes
- **Use Marcus** after writing code for quality and security review
- **Use Diego** when encountering errors, bugs, or unexpected behavior
- **Use Elena** for data analysis, SQL queries, or database insights

### Workflow Tips

1. **Start with planning** - Use Will and Mike before development
2. **Security first** - Involve Sarah early for sensitive features
3. **Test continuously** - Use Vijay throughout development, not just at the end
4. **Review regularly** - Use Marcus after significant code changes
5. **Debug proactively** - Use Diego when tests fail or errors occur

## 📄 License

MIT License - see LICENSE file for details

## 🔗 Links

- [Claude Code Documentation](https://docs.anthropic.com/claude/docs/claude-code)
- [Issue Tracker](https://github.com/your-org/ai-team-alpha/issues)
- [Contributing Guidelines](CONTRIBUTING.md)

---

**Built with ❤️ for Claude Code developers**