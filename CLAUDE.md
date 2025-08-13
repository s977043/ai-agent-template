# Claude Code Spec-Driven Template for AI Agents

This repository provides a template for building AI agents using a Spec‑Driven Development (SDD) process.  It draws inspiration from Kiro’s specification‑driven workflow for Claude Code.

## Getting Started

1. **Clone this template** or use it directly as a template on GitHub.
2. Copy the `.claude/commands` directory and this `CLAUDE.md` into your own project when you start a new AI agent.  These files define the slash commands and guardrails used by Claude Code.
3. Run `/kiro:steering` in Claude Code to create a steering document describing your product vision, principles, and decision policies.
4. Initialize the first specification with `/kiro:spec-init "Your project description"`.
5. For each feature, run `/kiro:spec-requirements <feature-name>` to define requirements, `/kiro:spec-design <feature-name>` to design the implementation, and `/kiro:spec-tasks <feature-name>` to break the work into tasks.
6. Implement tasks in order, writing tests first where possible.  Keep your specifications up to date when requirements or designs change.

## Repository Structure

```
.
├── .claude/commands/      # Slash command definitions (to be copied from Kiro)
├── CLAUDE.md              # This file; defines high‑level spec‑driven guidelines
├── steering/
│   └── product‑steering.md # Template steering document for your product
└── specs/
    └── feature‑template/
        ├── requirements.md # Template requirements specification
        ├── design.md       # Template technical design
        └── tasks.md        # Template list of implementation tasks
```

## Notes

This template does **not** include the actual slash command definitions.  Those are available in the original Kiro repository (https://github.com/gotalab/claude-code-spec).  See `.claude/commands/README.md` for guidance on how to obtain them.
