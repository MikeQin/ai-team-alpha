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
   ```
   In Claude Code conversation:
   "Use the Will subagent to create requirements for a todo app"
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

```
In Claude Code conversation:
"Use the <Agent Name> subagent to <your request>"
```

### 🎯 Planning & Requirements

**Product Owner (Will)**
```
# Define project requirements
"Use the Will subagent to create comprehensive requirements for an e-commerce platform"

# Generate user stories
"Use the Will subagent to write user stories for user authentication and profile management"

# Feature prioritization
"Use the Will subagent to help prioritize these features: payments, inventory, reviews, recommendations"
```

**System Architect (Mike)**
```
# Design system architecture
"Use the Mike subagent to design a microservices architecture for handling 100k concurrent users"

# Technology recommendations
"Use the Mike subagent to recommend tech stack for a real-time chat application with file sharing"

# Database design
"Use the Mike subagent to design database schema for a social media platform"
```

### 🔒 Security & Compliance

**Security Architect (Sarah)**
```
# Security architecture review
"Use the Sarah subagent to review the security architecture for our payment processing system"

# Threat modeling
"Use the Sarah subagent to perform threat modeling for user authentication flow"

# Compliance guidance
"Use the Sarah subagent to ensure GDPR compliance for user data collection"
```

### 💻 Development

**Fullstack Developer (Luke)**
```
# Complete application development
"Use the Luke subagent to create a task management app with React frontend and FastAPI backend"

# Cross-platform development
"Use the Luke subagent to build a mobile app with Flutter and web dashboard with Next.js"

# API development
"Use the Luke subagent to create RESTful API with authentication and real-time notifications"
```

### 🏗️ Infrastructure & Operations

**Infrastructure Engineer (Alex)**
```
# CI/CD pipeline setup
"Use the Alex subagent to set up GitHub Actions for automated testing and deployment"

# Container orchestration
"Use the Alex subagent to create Docker and Kubernetes configs for microservices deployment"

# Performance optimization
"Use the Alex subagent to optimize database performance for high-traffic application"
```

### 🧪 Quality Assurance

**QA Engineer (Vijay)**
```
# Test strategy development
"Use the Vijay subagent to create comprehensive testing strategy for our new API"

# Test case generation
"Use the Vijay subagent to generate test cases for user authentication flow"

# Performance testing
"Use the Vijay subagent to design performance testing plan for handling 10k concurrent users"
```

### 🔍 Code Quality & Debugging

**Code Reviewer (Marcus)**
```
# Code review
"Use the Marcus subagent to review the recent changes in my authentication module"

# Security audit
"Use the Marcus subagent to audit this payment processing code for security vulnerabilities"

# Best practices review
"Use the Marcus subagent to review this React component for performance and maintainability"
```

**Debugger (Diego)**
```
# Error investigation
"Use the Diego subagent to help debug this 500 error in my API endpoint"

# Performance issues
"Use the Diego subagent to investigate why my React app is rendering slowly"

# Test failures
"Use the Diego subagent to debug these failing unit tests in my authentication service"
```

**Data Scientist (Elena)**
```
# SQL query optimization
"Use the Elena subagent to optimize this complex query for better performance"

# Data analysis
"Use the Elena subagent to analyze user engagement metrics from our PostgreSQL database"

# BigQuery operations
"Use the Elena subagent to create BigQuery queries to analyze user behavior patterns"
```

## 🔄 Workflow Examples

### Complete Project Workflow

```
# 1. Define requirements
"Use the Will subagent to create requirements for a blog platform"

# 2. Design architecture
"Use the Mike subagent to design scalable architecture for the blog platform"

# 3. Security review
"Use the Sarah subagent to review security requirements for blog platform"

# 4. Implement application
"Use the Luke subagent to implement the blog platform with Next.js and PostgreSQL"

# 5. Set up infrastructure
"Use the Alex subagent to set up CI/CD and deployment for the blog platform"

# 6. Create tests
"Use the Vijay subagent to create comprehensive test suite for blog platform"

# 7. Code review
"Use the Marcus subagent to review all code for quality and security"

# 8. Debug issues
"Use the Diego subagent to debug any issues found during testing"
```

### Feature Development Workflow

```
# 1. Define feature
"Use the Will subagent to define user authentication feature requirements"

# 2. Implement feature
"Use the Luke subagent to implement JWT-based authentication with password reset"

# 3. Review code
"Use the Marcus subagent to review authentication implementation"

# 4. Create tests
"Use the Vijay subagent to create tests for authentication feature"

# 5. Debug issues
"Use the Diego subagent to fix any issues found in authentication tests"
```

## 📁 Project Structure

```
ai-team-alpha/
├── .claude/
│   ├── agents/                          # Agent configuration files
│   │   ├── code-reviewer-marcus.md      # Marcus - Code review specialist
│   │   ├── data-scientist-elena.md      # Elena - Data analysis expert
│   │   ├── debugger-diego.md            # Diego - Debugging specialist
│   │   ├── fullstack-luke.md            # Luke - Fullstack developer
│   │   ├── infrastructure-alex.md       # Alex - Infrastructure engineer
│   │   ├── product-owner-will.md        # Will - Product owner
│   │   ├── security-architect-sarah.md  # Sarah - Security architect
│   │   ├── senior-qa-vijay.md           # Vijay - QA engineer
│   │   └── system-architect-mike.md     # Mike - System architect
│   └── settings.local.json              # Local Claude Code settings
├── .github/                             # GitHub configuration
│   ├── ISSUE_TEMPLATE/                  # Issue templates
│   │   ├── agent_improvement.yml        # Agent improvement requests
│   │   ├── bug_report.yml               # Bug reports
│   │   └── feature_request.yml          # Feature requests
│   ├── workflows/                       # GitHub Actions workflows
│   │   ├── ci.yml                       # Continuous integration
│   │   └── dependabot.yml               # Dependabot workflow
│   ├── dependabot.yml                   # Dependabot configuration
│   └── pull_request_template.md         # PR template
├── .gitignore                           # Git ignore rules
├── CLAUDE.md                            # Framework documentation for Claude Code
├── CONTRIBUTING.md                      # Contribution guidelines
├── LICENSE                              # MIT license
├── MARKETING.md                         # Marketing article
├── README.md                            # Project documentation
├── SECURITY.md                          # Security policy
└── install-agents.sh                    # Installation script
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