# AI Agent Spec‑Driven Template

This repository serves as a starting point for projects that follow a **Spec‑Driven Development (SDD)** methodology using Claude Code.  It defines a standard structure for steering documents, feature specifications, and task lists.

## How to Use

1. **Create a new repository from this template** on GitHub or clone it locally.
2. Copy the `.claude/commands` directory (containing slash command definitions) and `CLAUDE.md` into your own project.
3. Run `/kiro:steering` to generate a steering document tailored to your product vision.
4. Define features using `/kiro:spec‑init`, `/kiro:spec‑requirements`, `/kiro:spec‑design`, and `/kiro:spec‑tasks`.
5. Implement tasks while keeping specifications up to date.

See `steering/product‑steering.md` and the templates under `specs/feature‑template/` for examples of how to structure your documents.
