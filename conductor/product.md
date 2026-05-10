# Product Definition: atomic-sdlc

## Initial Concept
A modular suite of high-precision, atomic AI agent skills for the Software Development Lifecycle (SDLC).

## Vision & Purpose
To eliminate "context drift" and reduce manual toil across the entire SDLC by providing single-responsibility, stateless agents that perform precise technical transformations with deterministic, machine-readable handshakes.

## Target Audience
- **Software Engineers & Architects:** For precise code generation, refactoring, and technical audits.
- **DevOps & SRE Teams:** For automating deployment pipelines, security hardening, and incident diagnosis.
- **Product Managers & Owners:** For extracting requirements, defining limits, and ensuring quality gates are met.

## Core Value Proposition
- **Reducing Toil:** Automating repetitive, high-precision tasks like requirement auditing and technical writing.
- **Improving Quality:** Introducing strict quality gates and deterministic outputs (JSON schema) to ensure reliability.
- **Scalability:** A modular architecture that allows for the addition of new specialized skills without increasing system complexity.

## Scope of Skills
The suite covers the full SDLC spectrum:
- **Discovery:** Extraction, limits, auditing, and specification of requirements.
- **Design:** Blueprints, evaluation, schema generation, and interface definitions.
- **Implementation:** Authoring code, refactoring, integration, and documentation.
- **Verification:** Test writing, stressing for edge cases, and performance profiling.
- **Deployment:** CI/CD generation, security hardening, and infrastructure provisioning.
- **Maintenance:** Monitoring, root-cause analysis, and post-mortem reporting.

## Workflow & Integration
- **Mode-Aware Autonomy:** Features an adaptive handshake protocol that switches between interactive guidance and autonomous execution based on the environment (YOLO mode).
- **CLI-First:** Optimized for terminal usage, allowing for powerful command piping.
- **CI/CD Integration:** Designed to run within automated build and release pipelines (e.g., GitHub Actions).
- **IDE-Ready:** Seamlessly integrated into development environments like VS Code and Cursor via the Gemini CLI extension.
