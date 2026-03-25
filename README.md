# 📂 `atomic-sdlc`

**A Modular Suite of Gemini CLI Extensions for the Software Development Lifecycle.**

``atomic-sdlc`` is a collection of high-precision, single-responsibility AI agent skills. Unlike "monolithic" AI assistants, these skills are designed to be atomic: they do exactly one thing (e.g., audit a requirement, profile latency, or detect logic flaws) and they do it with strict, machine-readable output.This repository is built to be consumed by Workflow Engines and executed on Remote Workers using the Gemini CLI.

## 🧩 The Atomic Philosophy

Most AI agents fail because they try to do too much, leading to "context drift" and hallucinations. `atomic-sdlc` follows the Single Responsibility Principle:

1. Discrete Context: Every skill only receives the data it needs to perform its specific task.
2. Contract-Bound: All outputs are validated against a JSON Schema before being returned.
3. Stateless & Chainable: Skills are designed to be piped together (e.g., `Audit -> Atomize -> Scaffold`).

## 🏗️ Architecture

1. Workflow Engine: (e.g., Jenkins, GitHub Actions, or a custom engine) orchestrates the sequence of tasks.
2. Worker: A "dumb" execution node with the Gemini CLI installed.
3. Extension: The worker pulls the `atomic-sdlc` extension, which contains the persona (Prompt) and the interface (Command).
4. Gemini CLI: The runtime that executes the skill and validates the handshake.

## 🚀 Quick Start

1. Install Gemini CLI on your WorkerEnsure your worker has the Gemini CLI runtime installed and authenticated.
2. Install the Extension
```Bash
gemini extensions install https://github.com/your-org/`atomic-sdlc`
```
3. Run an Atomic Audit
```Bash
gemini /atomic:audit --requirement "Users should be able to upload a 2MB profile picture."
```

## 🛠️ Available Atomic Skills

| Command Name | Category | Description | Purpose | Available |
| :--- | :--- | :--- | :--- | :--- |
| **Discovery** | | | | |
| `/atomic:elicit` | Discovery | Extracts core needs from raw stakeholder input. | Filters noise to find true business value. | ✅ |
| `/atomic:audit` | Discovery | Audits requirements for ambiguity, feasibility, and contradictions. | Ensures requirements are "ready for dev." | ✅ |
| `/atomic:atomize` | Discovery | Breaks large requirements into the smallest testable units. | Prevents scope creep and simplifies tracking. | ✅ |
| `/atomic:criteria` | Discovery | Generates "Given/When/Then" acceptance criteria. | Defines the objective "definition of done." | ✅ |
| `/atomic:constrain` | Discovery | Identifies technical guardrails (Security, Perf, etc.)	Raw stakeholder input. | A JSON file of NFRs and assumptions. | ✅ |
| **Design** | | | | 
| `/atomic:blueprint` | Design | Architectures the high-level design and manifest. | Decides which design components (DB, API, etc.) are needed.| ✅ |
| `/atomic:schema` | Design | Generates database structures (SQL/NoSQL) from entities. | Ensures data integrity before code is written. | ✅ |
| `/atomic:evaluate` | Design | Reviews schemas/API specs for normalization and scalability. | Prevents "technical debt" in the blueprint. | ✅ |
| `/atomic:interface` | Design | Drafts OpenAPI/Swagger specs for system endpoints. | Creates the "contract" for front/back-end dev. | ✅ |
| `/atomic:layout` | Design | Generates low-fidelity structural UI layouts. | Validates user flow before aesthetic design. | ✅ |
| `/atomic:inspect` | Design | Analyzes wireframes for usability and flow logic. | Identifies friction points before implementation. | ✅ |
| **Implementation** | | | | |
| `/atomic:author` | Implementation | Generates modular, single-purpose functions/classes. | Converts blueprints into functional logic. | ✅ |
| `/atomic:review` | Implementation | Reviews code for logic flaws, naming, and complexity. | Acts as an automated "Peer Reviewer." | ✅ |
| `/atomic:document` | Implementation | Writes "how/why" documentation based on code logic. | Ensures the system is maintainable by humans. | ✅ |
| `/atomic:verify` | Implementation | Verifies that documentation matches the actual code logic. | Prevents "Stale Docs" that mislead developers. | ✅ |
| **Verification** | | | | |
| `/atomic:test` | Verification | Authors unit tests for individual logic paths. | Proves code correctness at the lowest level. | ✅ |
| `/atomic:scrutinize` | Verification | Critiques test suites for coverage gaps and "weak" assertions. | Ensures the tests are actually effective. | ✅ |
| `/atomic:probe` | Verification | Identifies "unhappy paths" and stress-test inputs. | Prevents crashes from unexpected behavior. | ✅ |
| `/atomic:profile` | Verification | Identifies CPU/Memory bottlenecks in a code block. | Ensures performance goals are met. | ❌ |
| **Deployment** | | | | |
| `/atomic:pipeline` | Deployment | Generates CI/CD scripts for automated movement. | Automates the path from code to production. | ❌ |
| `/atomic:sec-audit` | Deployment | Scans IaC and pipeline configs for security holes. | Prevents "Insecure-by-Default" deployments. | ❌ |
| `/atomic:provision` | Deployment | Generates Infrastructure-as-Code (IaC) for environments. | Ensures production matches dev environments. | ❌ |
| **Maintenance** | | | | |
| `/atomic:telemetry` | Maintenance | Suggests instrumentation points for health monitoring. | Provides real-time visibility into live code. | ❌ |
| `/atomic:rca` | Maintenance | Analyzes error logs to find the source of a failure. | Finds the root cause of production bugs. | ❌ |
| `/atomic:post-mortem` | Maintenance | Critiques an incident response to suggest process fixes. | Facilitates "The Learning Loop" for the team. | ❌ |
| **Utility & Reporting** | | | | |
| `/atomic:format-md` | Utility | Transforms atomic JSON artifacts into formatted Markdown reports. | Bridges the gap between machine data and human stakeholders. | ✅ |
| `/atomic:formalize`| Utility | Resolves agent logs into a formal Specification. | Creates a clean "Source of Truth" while archiving history. | ✅ |


### Deprecated
| Command | Category | Responsibility |
|---------|----------|----------------|
| `/atomic:analyse` | Design | To review and expand existing requirements |
| `/atomic:architect` | Design | To review requirements and system and propose the technical changes |

## 📦 Extension Structure

Each skill is isolated to prevent dependency rot:

```Plaintext
atomic-sdlc/
├── gemini-extension.json    # Manifest and versioning
├── commands/
│   ├── audit.toml           # CLI argument definitions for /audit
│   └── latency.toml         # CLI argument definitions for /latency
├── prompts/
│   ├── auditor.md           # The "Brain" (System Instructions)
│   └── profiler.md          # The "Brain" (System Instructions)
└── schemas/
    ├── auditor_output.json  # Strict JSON validation contract
    └── latency_output.json  # Strict JSON validation contract
``` 

## 🤝 Contributing

This project thrives on Atomic Contributions. If you want to add a skill:Define a Single Responsibility.Create a Markdown Prompt with a clear persona.Define a JSON Schema for the output.Submit a PR with the new .toml command.