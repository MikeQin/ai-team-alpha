# AI Team Alpha - Claude Code Configuration

This project provides 9 specialized AI subagents that enhance Claude Code with role-based expertise for comprehensive software development workflows.

## Project Overview

**AI Team Alpha** is a collection of specialized subagents designed to work seamlessly with Claude Code, providing expert-level assistance across all phases of software development - from requirements gathering to deployment and maintenance.

## Available Agents

### Planning & Architecture

**Product Owner - Will**
- Requirements gathering and user story creation
- Feature prioritization and backlog management  
- Stakeholder analysis and acceptance criteria definition
- Use for: Project planning, feature definition, requirements clarification

**System Architect - Mike**
- Technical architecture and system design
- Technology stack recommendations and API design
- Scalability planning and data modeling
- Use for: Architecture decisions, system design, tech stack selection

**Security Architect - Sarah** 
- Security architecture and threat modeling
- Compliance requirements (GDPR, SOX, HIPAA)
- Penetration testing strategies and security reviews
- Use for: Security reviews, compliance guidance, threat analysis

### Development

**Fullstack Developer - Luke**
- Next.js, React, Flutter, FastAPI development
- Cross-platform web and mobile applications
- Modern development practices and performance optimization
- Use for: Complete application development across all platforms

**Infrastructure Engineer - Alex**
- DevOps, CI/CD pipelines, container orchestration
- Cloud infrastructure and deployment strategies
- Production operations and monitoring
- Use for: Infrastructure setup, deployment, operations

### Quality & Maintenance

**QA Engineer - Vijay**
- Test case generation and automated testing strategies
- Performance testing and security testing validation
- Quality assurance processes and integration testing
- Use for: Testing strategies, test creation, quality assurance

**Code Reviewer - Marcus**
- Code quality review and security auditing
- Best practices enforcement and maintainability analysis
- Performance considerations and optimization suggestions
- Use for: Code reviews, security audits, quality checks

**Debugger - Diego**
- Root cause analysis and error resolution
- Test failure investigation and performance debugging
- Strategic debugging and prevention recommendations
- Use for: Error investigation, debugging, troubleshooting

**Data Scientist - Elena**
- SQL query optimization and BigQuery operations
- Data analysis and insights generation
- Database performance tuning and reporting
- Use for: Data analysis, SQL queries, database optimization

## Usage Patterns

### Complete Project Workflow
1. **Planning**: Start with Will (requirements) → Mike (architecture) → Sarah (security)
2. **Development**: Luke implements → Marcus reviews → Vijay tests
3. **Operations**: Alex deploys → Diego debugs issues → Elena analyzes metrics

### Feature Development Workflow
1. **Definition**: Will defines feature requirements
2. **Implementation**: Luke builds the feature
3. **Quality**: Marcus reviews + Vijay tests
4. **Debugging**: Diego resolves any issues

### Maintenance Workflow
1. **Monitoring**: Elena analyzes performance data
2. **Issues**: Diego investigates and fixes problems
3. **Reviews**: Marcus ensures code quality
4. **Operations**: Alex manages deployments

## Agent Selection Guidelines

### When to Use Each Agent

**Will (Product Owner)** - When you need:
- Clear project requirements or user stories
- Feature prioritization or backlog management
- Stakeholder communication or acceptance criteria

**Mike (System Architect)** - When you need:
- Technical architecture decisions
- Technology stack recommendations
- System design or scalability planning

**Sarah (Security Architect)** - When you need:
- Security reviews or compliance guidance
- Threat modeling or penetration testing
- Security architecture or vulnerability assessment

**Luke (Fullstack Developer)** - When you need:
- Any development work (web, mobile, backend)
- Cross-platform application development
- Modern framework implementation

**Alex (Infrastructure Engineer)** - When you need:
- CI/CD pipeline setup or deployment strategies
- Infrastructure management or container orchestration
- Production operations or performance optimization

**Vijay (QA Engineer)** - When you need:
- Testing strategies or test case creation
- Quality assurance processes
- Performance or security testing validation

**Marcus (Code Reviewer)** - When you need:
- Code quality and security review
- Best practices enforcement
- Performance optimization suggestions

**Diego (Debugger)** - When you need:
- Error investigation or bug fixing
- Test failure analysis
- Performance debugging or troubleshooting

**Elena (Data Scientist)** - When you need:
- Data analysis or SQL query optimization
- Database performance tuning
- Business intelligence or reporting

## Best Practices

### Agent Collaboration
- **Sequential workflows**: Use agents in logical order (plan → build → test → deploy)
- **Parallel consultation**: Get multiple perspectives on complex decisions
- **Iterative refinement**: Use agents to refine and improve work from other agents

### Project Phase Alignment
- **Discovery**: Will + Mike + Sarah
- **Development**: Luke + Marcus (continuous review)
- **Testing**: Vijay + Diego (issue resolution)
- **Deployment**: Alex + Elena (monitoring)

### Code Quality Maintenance
- Use Marcus proactively after significant code changes
- Invoke Diego immediately when encountering errors
- Leverage Vijay for comprehensive testing strategies
- Consult Elena for data-driven optimization decisions

## Configuration Details

All agents are configured with:
- **Model**: Sonnet for optimal performance and cost efficiency
- **Specialized Tools**: Curated tool access based on role requirements
- **Custom Colors**: Visual differentiation in Claude Code UI
- **Role-Specific Behavior**: Optimized prompts and workflows

## Installation & Setup

Agents are installed to `~/.claude/agents/` and become available immediately in Claude Code sessions.

```bash
# Install all agents
./install-agents.sh

# Verify installation
ls ~/.claude/agents/

# Start using
claude --agent product-owner-will "Define requirements for my app"
```

## Troubleshooting

### Common Issues
- **Agent not found**: Verify installation with `ls ~/.claude/agents/`
- **Unexpected behavior**: Check agent configuration in respective `.md` file
- **Permission issues**: Ensure proper file permissions after installation

### Getting Help
- Use Diego for debugging agent behavior issues
- Consult Marcus for questions about agent code quality standards
- Reference individual agent files in `.claude/agents/` for detailed capabilities

## Contributing

When contributing to agent configurations:
1. Follow existing agent file structure and conventions
2. Test agent behavior thoroughly across different scenarios  
3. Update documentation to reflect any capability changes
4. Ensure consistent naming and formatting standards

## Security Considerations

- Agent configurations are stored locally in `~/.claude/agents/`
- No sensitive data should be included in agent files
- Use Sarah for security reviews of any agent modifications
- Regular security audits recommended for production usage

---

*AI Team Alpha v1.0.0 - Specialized subagents for Claude Code development workflows*