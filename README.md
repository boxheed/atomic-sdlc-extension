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
### 🛠️ The Atomic Skillset (Master Registry)

| Command Name | Category | Description | Purpose | Status |
| :--- | :--- | :--- | :--- | :--- |
| **Discovery** | | | | |
| `/atomic:elicit` | Discovery | Extracts core needs from raw stakeholder input. | Filters noise to find true business value. | ✅ |
| `/atomic:constrain` | Discovery | Identifies NFRs (Security, Perf, Scalability). | Sets the technical boundaries for the system. | ✅ |
| `/atomic:audit` | Discovery | Examines drafts for ambiguity and contradictions. | The "Gatekeeper" for requirement quality. | ✅ |
| `/atomic:formalize` | Utility | Reconciles logs into a formal Specification. | Creates the "Source of Truth" artifact. | ✅ |
| `/atomic:atomize` | Discovery | Slices the Specification into vertical User Stories. | Converts the "What" into actionable tasks. | ✅ |
| `/atomic:criteria` | Discovery | Generates Gherkin Given/When/Then scenarios. | Defines the objective "Definition of Done." | ✅ |
| **Design** | | | | |
| `/atomic:blueprint` | Design | Architects high-level design and component manifest. | The "Master Plan" for the Design phase. | ✅ |
| `/atomic:evaluate` | Design | Critiques the blueprint for over-engineering/risk. | Ensures the tech plan is sound and scalable. | ✅ |
| `/atomic:schema` | Design | Generates database structures (SQL/NoSQL). | Builds the "Internal" data layer. | ✅ |
| `/atomic:interface` | Design | Generates API contracts (OpenAPI/Swagger). | Builds the "External" communication layer. | ✅ |
| `/atomic:layout` | Design | Generates structural UI wireframes/user flows. | Defines the user's interface and journey. | ✅ |
| `/atomic:inspect` | Design | Performs heuristic usability audits on layouts. | Ensures the "Human" side of the design works. | ✅ |
| **Implementation** | | | | |
| `/atomic:author` | Implementation | Writes modular code based on design contracts. | Turns blueprints into functional logic. | ✅ |
| `/atomic:refactor` | Implementation | Cleans up code smells, debt, and style alignment. | Ensures the code is "Clean" before the PR. | ✅ |
| `/atomic:integrate` | Implementation | Checks for cross-module regressions and breaks. | Ensures the new unit fits the existing system. | ✅ |
| `/atomic:review` | Implementation | Performs a code review for logic and security. | Acts as the "Quality Gate" for the codebase. | ✅ |
| `/atomic:document` | Implementation | Writes "how/why" technical documentation. | Ensures the system is maintainable by humans. | ✅ |
| `/atomic:verify` | Implementation | Audits documentation against the actual code logic. | Prevents "Stale Docs" from misleading devs. | ✅ |
| **Verification** | | | | |
| `/atomic:test` | Verification | Authors unit tests for individual logic paths. | Proves code correctness at the lowest level. | ✅ |
| `/atomic:scrutinize` | Verification | Critiques test suites for coverage and weak logic. | Ensures the tests are actually effective. | ✅ |
| `/atomic:probe` | Verification | Hunts for "unhappy paths" and stress-test data. | Prevents crashes from unexpected behavior. | ✅ |
| `/atomic:profile` | Verification | Identifies performance/NFR bottlenecks in code. | Ensures latency and memory goals are met. | ✅ |
| **Deployment** | | | | |
| `/atomic:pipeline` | Deployment | Generates CI/CD scripts (GitHub Actions, etc.). | Automates the path from code to production. | ❌ |
| `/atomic:harden` | Deployment | Scans configs/dependencies for security holes. | Prevents "Insecure-by-Default" deployments. | ❌ |
| `/atomic:provision` | Deployment | Generates Infrastructure-as-Code (IaC/Terraform). | Ensures production matches dev environments. | ❌ |
| **Maintenance** | | | | |
| `/atomic:telemetry` | Maintenance | Suggests instrumentation and logging points. | Provides visibility into live code health. | ❌ |
| `/atomic:diagnose` | Maintenance | Analyzes error logs to find failure root causes. | Accelerates the fix for production bugs. | ❌ |
| `/atomic:retrospect` | Maintenance | Critiques incident response for process fixes. | Facilitates the "Learning Loop" for the team. | ❌ |
| **Reporting** | | | | |
| `/atomic:format-md` | Utility | Transforms JSON artifacts into human reports. | Makes machine data readable for people. | ✅ |

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