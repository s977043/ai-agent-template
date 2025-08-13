# Design: feature‑template

## Architecture

Outline the high‑level architecture for this feature.  Use layered architecture (e.g., CLI → UseCase → Adapter → Domain) or another pattern appropriate to your project.  Describe how data flows between components and any important design constraints.

## Components

List the core components or classes/modules involved in the implementation.  For example:

- **AgentCli**: Parses command‑line arguments and orchestrates execution.
- **AgentCore**: Encapsulates the main business logic for the feature.
- **DataAdapter**: Handles interactions with external systems (e.g., file I/O, APIs).

## Sequence (happy path)

1. The user invokes the command with appropriate arguments.
2. The CLI layer validates inputs and constructs a request object.
3. The core logic processes the request, invoking adapters as needed.
4. Results are returned to the user or written to output files.

Include diagrams or pseudocode as necessary to clarify complex workflows.
