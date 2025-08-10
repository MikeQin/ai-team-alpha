# AI Team Alpha - Inter-Agent Communication Protocol

## Overview
This document defines standardized communication patterns between AI Team Alpha agents to enable seamless collaboration and efficient handoffs throughout the software development lifecycle.

## Core Principles

### 1. **Explicit Handoffs**
Agents should explicitly indicate when work should be passed to another agent, including:
- Clear context of what was accomplished
- Specific next steps or requirements for the receiving agent
- Any blockers, dependencies, or important considerations

### 2. **Standardized Output Formats**
Each agent should produce outputs in predictable formats to facilitate consumption by other agents.

### 3. **State Preservation**
Critical information must be preserved across agent handoffs to maintain context and prevent information loss.

## Communication Patterns

### Sequential Workflow Pattern
```
Will (requirements) → Mike (architecture) → Sarah (security review) → 
Luke (implementation) → Marcus (code review) → Vijay (testing) → 
Alex (deployment) → Elena (metrics)
```

### Collaborative Review Pattern
```
Luke (implementation) ⟷ Marcus (continuous review)
Vijay (testing) ⟷ Diego (issue resolution)
Alex (deployment) ⟷ Elena (monitoring)
```

### Problem Escalation Pattern
```
Any Agent → Diego (debugging) → Marcus (code quality) → Sarah (security audit)
```

## Standardized Handoff Formats

### 1. **Requirements Handoff (Will → Mike)**
```markdown
## Requirements Summary
**Feature**: [Feature name]
**Priority**: [High/Medium/Low]
**User Stories**: 
- [Story 1]
- [Story 2]

**Acceptance Criteria**:
- [Criteria 1]
- [Criteria 2]

**Constraints**:
- Technical: [constraints]
- Business: [constraints]
- Timeline: [constraints]

**Next Steps**: Architecture design needed for [specific aspects]
```

### 2. **Architecture Handoff (Mike → Sarah)**
```markdown
## Architecture Summary
**System Design**: [Brief overview]
**Key Components**: 
- [Component 1]: [Purpose]
- [Component 2]: [Purpose]

**Technology Stack**:
- Frontend: [tech]
- Backend: [tech]  
- Database: [tech]
- Infrastructure: [tech]

**Security Considerations**: [Areas requiring security review]
**Scalability Plan**: [Key scaling considerations]

**Next Steps**: Security review needed for [specific areas]
```

### 3. **Security Review Handoff (Sarah → Luke)**
```markdown
## Security Review Results
**Security Status**: [Approved/Needs Changes/Major Concerns]

**Required Security Controls**:
- [Control 1]: [Implementation requirement]
- [Control 2]: [Implementation requirement]

**Security Requirements**:
- Authentication: [requirements]
- Authorization: [requirements]
- Data Protection: [requirements]
- Compliance: [requirements]

**Security Blockers**: [Any items that must be resolved before implementation]

**Next Steps**: Implementation can proceed with security requirements integrated
```

### 4. **Implementation Handoff (Luke → Marcus)**
```markdown
## Implementation Summary
**Completed Features**: 
- [Feature 1]: [Files changed]
- [Feature 2]: [Files changed]

**Key Files Modified**:
- [file1]: [purpose of changes]
- [file2]: [purpose of changes]

**Technical Decisions Made**:
- [Decision 1]: [rationale]
- [Decision 2]: [rationale]

**Areas Needing Review**:
- Security: [specific areas]
- Performance: [specific areas]
- Code Quality: [specific areas]

**Next Steps**: Code review needed, focusing on [specific aspects]
```

### 5. **Code Review Handoff (Marcus → Vijay)**
```markdown
## Code Review Results
**Review Status**: [Approved/Needs Minor Changes/Major Issues]

**Critical Issues**: [Must fix before testing]
**Warnings**: [Should fix before testing]
**Suggestions**: [Consider for future improvements]

**Test Focus Areas**:
- [Area 1]: [Why this needs testing focus]
- [Area 2]: [Why this needs testing focus]

**Performance Notes**: [Any performance considerations for testing]
**Security Notes**: [Any security aspects to validate in testing]

**Next Steps**: Ready for testing with focus on [specific areas]
```

### 6. **Testing Handoff (Vijay → Alex)**
```markdown
## Testing Results Summary
**Test Status**: [Passed/Failed/Partial]

**Test Coverage**:
- Unit Tests: [%] - [status]
- Integration Tests: [%] - [status]  
- E2E Tests: [%] - [status]
- Performance Tests: [status]

**Critical Findings**:
- [Issue 1]: [severity] - [status]
- [Issue 2]: [severity] - [status]

**Deployment Readiness**: [Ready/Not Ready/Conditional]
**Deployment Notes**: [Special considerations for deployment]

**Next Steps**: [Ready for deployment / Fix issues first / Additional testing needed]
```

### 7. **Deployment Handoff (Alex → Elena)**
```markdown
## Deployment Summary
**Deployment Status**: [Success/Failed/Partial]
**Environment**: [Production/Staging/Development]

**Deployed Components**:
- [Component 1]: [version] - [status]
- [Component 2]: [version] - [status]

**Monitoring Endpoints**:
- Health Check: [URL]
- Metrics: [URL]
- Logs: [Location]

**Key Metrics to Monitor**:
- [Metric 1]: [expected range]
- [Metric 2]: [expected range]

**Performance Baselines**: [Expected performance characteristics]

**Next Steps**: Monitor deployment and analyze initial metrics
```

## Error Handling & Escalation

### When to Involve Diego (Debugger)
- Any agent encounters unexpected errors
- Tests fail without clear cause
- Performance issues are discovered
- System behavior doesn't match expectations

### Diego's Escalation Protocol
```markdown
## Debug Report
**Issue Type**: [Bug/Performance/System Error]
**Severity**: [Critical/High/Medium/Low]
**Root Cause**: [Analysis]

**Immediate Fix Applied**: [Yes/No] - [Details]
**Additional Work Needed**: [Description]

**Recommendations**:
- Code Quality: [If Marcus review needed]
- Security: [If Sarah review needed]
- Architecture: [If Mike review needed]

**Prevention Steps**: [How to prevent similar issues]
```

## Agent-Specific Communication Standards

### Will (Product Owner)
- **Output**: Clear requirements with acceptance criteria
- **Handoff Target**: Mike (architecture) or Luke (simple features)
- **Communication Style**: Business-focused, user-centric language

### Mike (System Architect)
- **Output**: Technical specifications with diagrams/documentation
- **Handoff Target**: Sarah (security review) or Luke (implementation)
- **Communication Style**: Technical but accessible, architecture-focused

### Sarah (Security Architect)
- **Output**: Security requirements and compliance checklists
- **Handoff Target**: Luke (secure implementation) or Marcus (security review)
- **Communication Style**: Risk-focused, compliance-oriented

### Luke (Fullstack Developer)
- **Output**: Working code with implementation notes
- **Handoff Target**: Marcus (code review)
- **Communication Style**: Implementation-focused, technical details

### Marcus (Code Reviewer)
- **Output**: Review feedback with prioritized issues
- **Handoff Target**: Vijay (testing) or Luke (fixes needed)
- **Communication Style**: Quality-focused, specific actionable feedback

### Vijay (QA Engineer)
- **Output**: Test results and quality metrics
- **Handoff Target**: Alex (deployment) or Diego (issue investigation)
- **Communication Style**: Quality metrics, test-focused

### Diego (Debugger)
- **Output**: Root cause analysis and fixes
- **Handoff Target**: Any agent based on issue type
- **Communication Style**: Problem-solving focused, systematic approach

### Alex (Infrastructure Engineer)
- **Output**: Deployment status and infrastructure health
- **Handoff Target**: Elena (monitoring) or Diego (issues)
- **Communication Style**: Operations-focused, reliability-oriented

### Elena (Data Scientist)
- **Output**: Metrics analysis and insights
- **Handoff Target**: Will (business insights) or Mike (performance optimization)
- **Communication Style**: Data-driven, analytical

## Workflow Optimization

### Parallel Work Streams
Agents can work in parallel when:
- Marcus reviews code while Luke continues implementation
- Vijay creates tests while Luke implements features
- Elena analyzes existing metrics while Alex prepares infrastructure

### Quality Gates
Each handoff includes quality gates:
1. **Will → Mike**: Requirements completeness check
2. **Mike → Sarah**: Architecture review completeness
3. **Sarah → Luke**: Security requirements clarity
4. **Luke → Marcus**: Implementation completeness
5. **Marcus → Vijay**: Code quality baseline met
6. **Vijay → Alex**: Test coverage and pass rate met
7. **Alex → Elena**: Successful deployment confirmation

## Implementation Guidelines

### For Agent Users
1. **Always specify the receiving agent** when completing work
2. **Use standardized handoff formats** for complex transfers
3. **Include context preservation** for multi-step workflows
4. **Escalate to Diego immediately** when encountering issues

### For Claude Code
1. **Parse handoff formats** to understand workflow state
2. **Auto-suggest next agent** based on current workflow stage
3. **Preserve context** across agent invocations
4. **Track workflow progress** through standardized outputs

---

*AI Team Alpha Communication Protocol v1.0 - Enabling seamless collaboration across specialized AI agents*