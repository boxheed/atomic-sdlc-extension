# Tech Stack: atomic-sdlc

## Core Technologies
- **JavaScript/TypeScript (Node.js):** The primary language for packaging and managing the extension's dependencies.
- **Gemini CLI Framework:** The underlying platform for executing atomic AI agent skills and managing tool calls.
- **TOML:** Used for defining the metadata, inputs, and outputs for each atomic skill.

## Tooling & Automation
- **standard-version:** Automates versioning and CHANGELOG generation following the Conventional Commits specification.
- **npm:** Package manager for handling dev dependencies and packaging the extension.
- **Git:** Source control for managing the evolution of the codebase and its skills.

## Architecture & Protocols
- **Atomic Command Architecture:** A modular system of single-responsibility, stateless agents.
- **Adaptive Handshake Protocol:** Implements an I/O Priority Ladder (Explicit Args > Inferred Discovery > Interactive Fallback) to ensure precision and autonomy.
- **Mode-Aware Branching:** Dynamic behavior adjustment between interactive and non-interactive (YOLO) environments.
- **Deterministic Handshakes:** Contract-bound interactions using minified JSON schemas to ensure reliable data transfer between skills.
- **Markdown-First Reporting:** Using structured Markdown for all human-readable outputs and project documentation.
- **State Management:** All commands must be stateless, with required context provided through discrete file artifacts.

## Quality Gates
- **Contract Verification:** Ensuring all tool outputs match the defined JSON schemas.
- **Automated Auditing:** Using specialized skills (e.g., `/atomic:audit`) to perform quality checks on generated artifacts.
