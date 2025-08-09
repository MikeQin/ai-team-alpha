# Contributing to AI Team Alpha

Thank you for your interest in contributing to AI Team Alpha! This project provides 9 specialized AI subagents for Claude Code to enhance development workflows.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Contributing Process](#contributing-process)
- [Agent Development Guidelines](#agent-development-guidelines)
- [Testing](#testing)
- [Documentation](#documentation)
- [Community](#community)

## Code of Conduct

This project adheres to a code of conduct. By participating, you agree to uphold this code. Please report unacceptable behavior to the project maintainers.

### Our Standards

- Be respectful and inclusive
- Focus on constructive feedback
- Accept responsibility for mistakes
- Prioritize community benefit over individual gain

## Getting Started

### Prerequisites

- [Claude Code](https://claude.ai/code) access
- Git for version control
- Basic understanding of markdown formatting
- Familiarity with AI agent concepts

### First Contribution

1. Look for issues labeled `good first issue` or `help wanted`
2. Comment on the issue to express interest
3. Wait for maintainer assignment before starting work
4. Follow the contributing process below

## Development Setup

1. **Fork and clone the repository:**
   ```bash
   git fork https://github.com/your-org/ai-team-alpha
   cd ai-team-alpha
   ```

2. **Install the agents locally for testing:**
   ```bash
   ./install-agents.sh
   ```

3. **Test the agents:**
   ```bash
   claude --agent product-owner-will "Test requirements gathering"
   claude --agent system-architect-mike "Test architecture design"
   ```

## Contributing Process

### 1. Create an Issue

Before making changes:
- Check existing issues to avoid duplicates
- Create a detailed issue describing the problem or enhancement
- Include use cases and expected outcomes
- Wait for maintainer feedback and approval

### 2. Branch Strategy

```bash
# Create feature branch from main
git checkout main
git pull origin main
git checkout -b feature/your-feature-name

# For bug fixes
git checkout -b fix/issue-description

# For documentation
git checkout -b docs/documentation-update
```

### 3. Make Changes

Follow these guidelines:
- Keep commits focused and atomic
- Write clear commit messages
- Test your changes thoroughly
- Update documentation as needed

### 4. Commit Guidelines

Use conventional commit format:
```
type(scope): description

[optional body]

[optional footer]
```

Types:
- `feat`: New feature or agent capability
- `fix`: Bug fix or issue resolution
- `docs`: Documentation updates
- `refactor`: Code refactoring without functionality changes
- `test`: Testing improvements
- `chore`: Maintenance tasks

Examples:
```bash
git commit -m "feat(agents): add new debugging capabilities to Diego"
git commit -m "fix(luke): resolve React component generation issue"
git commit -m "docs(readme): update installation instructions"
```

### 5. Submit Pull Request

1. Push your branch to your fork
2. Create a pull request with:
   - Clear title and description
   - Reference to related issues
   - List of changes made
   - Testing performed
   - Screenshots if applicable

## Agent Development Guidelines

### Agent Structure

Each agent should follow this structure:

```markdown
# Agent Name - Role

Brief description of the agent's purpose and specialty.

## Instructions

Detailed instructions for the agent's behavior, including:
- Primary responsibilities
- Communication style
- Specific tools and capabilities
- Workflow patterns
- Decision-making criteria

## Tools

List of specific tools this agent should prioritize:
- Tool categories
- Specific tool names
- Usage patterns

## Examples

Include practical examples of:
- Common use cases
- Input/output patterns
- Interaction styles
```

### Best Practices

1. **Clarity**: Instructions should be clear and unambiguous
2. **Specificity**: Define specific roles and boundaries
3. **Consistency**: Maintain consistent tone and structure
4. **Practicality**: Focus on real-world use cases
5. **Testing**: Test agents with various scenarios

### Agent Naming Convention

- Use descriptive role-based names
- Include primary expertise area
- Follow existing pattern: `{role}-{name}.md`
- Examples: `fullstack-luke.md`, `security-architect-sarah.md`

### Color Coding

Each agent should have a unique color for UI differentiation:
- Use standard color codes
- Avoid conflicts with existing agents
- Document color choices in agent files

## Testing

### Manual Testing

Test each agent with various scenarios:

```bash
# Test basic functionality
claude --agent agent-name "Simple test request"

# Test edge cases
claude --agent agent-name "Complex scenario with multiple requirements"

# Test integration with other agents
claude --agent agent-1 "Create requirements"
claude --agent agent-2 "Review the requirements from agent-1"
```

### Validation Checklist

Before submitting:
- [ ] Agent responds appropriately to role-specific requests
- [ ] Instructions are clear and actionable
- [ ] No conflicts with existing agents
- [ ] Proper markdown formatting
- [ ] Color coding is unique and documented
- [ ] Examples are practical and helpful

## Documentation

### Required Documentation

When contributing:
- Update README.md if adding new agents
- Add usage examples for new capabilities
- Update CONTRIBUTING.md for new processes
- Include inline documentation in agent files

### Documentation Standards

- Use clear, concise language
- Include practical examples
- Keep formatting consistent
- Test all code examples
- Update table of contents when needed

## Community

### Communication Channels

- **Issues**: For bug reports and feature requests
- **Discussions**: For general questions and ideas
- **Pull Requests**: For code review and collaboration

### Getting Help

If you need help:
1. Check existing documentation
2. Search closed issues
3. Create a new issue with detailed information
4. Join community discussions

### Recognition

Contributors are recognized through:
- GitHub contributor graphs
- Release notes mentions
- Community acknowledgments

## Release Process

### Versioning

We follow semantic versioning (SemVer):
- MAJOR: Breaking changes to agent interfaces
- MINOR: New agents or significant feature additions
- PATCH: Bug fixes and minor improvements

### Release Schedule

- Regular releases based on accumulated changes
- Emergency releases for critical bugs
- Beta releases for major new features

## Questions?

If you have questions not covered here:
1. Check the [README](README.md)
2. Browse existing [issues](https://github.com/your-org/ai-team-alpha/issues)
3. Start a [discussion](https://github.com/your-org/ai-team-alpha/discussions)
4. Create a new issue with the `question` label

---

Thank you for contributing to AI Team Alpha! Your contributions help make Claude Code development more efficient and enjoyable for everyone.