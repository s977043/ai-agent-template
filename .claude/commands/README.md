This directory is intended to hold Claude Code slash command definitions.

The template does **not** include the actual command definitions.  To enable Spec‑Driven Development in your project, copy the appropriate command files from the original [claude‑code‑spec](https://github.com/gotalab/claude-code-spec) repository.  The commands reside under `.claude/commands/kiro/` in that project and define interactions such as `/kiro:steering`, `/kiro:spec‑init`, `/kiro:spec‑requirements`, `/kiro:spec‑design`, and `/kiro:spec‑tasks`.

After copying the desired command files into this directory, Claude Code will recognize the slash commands defined within and enforce your specification workflow accordingly.
