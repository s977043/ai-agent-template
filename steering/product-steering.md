# Product Steering (SDD Guardrails)

## Product Vision

Describe your target users, the pain points your AI agent solves, and the north-star metric that defines success.

## Principles

- **Small & Test‑First:** Work in small increments and write tests before implementation.
- **Readable & Clean Architecture:** Prioritize clear, maintainable code organized by layers (interface, use case, adapter, domain).
- **Non‑Functional Priorities:** List and rank performance, availability, security, and other non‑functional requirements relevant to your project.

## Decision Policy

- Always follow the sequence **specification → design → tasks**; do not jump ahead to implementation.
- Any change in implementation must be reflected back in the specification documents and reviewed.
- Document design decisions with trade‑off tables to justify choices.

## Definition of Ready

A specification is ready for implementation when user stories, acceptance criteria, and key constraints are clearly defined.

## Definition of Done

- Unit and integration tests pass.
- All specification documents (requirements, design, tasks, README) are updated as necessary.
- A basic security and performance check has been performed.
