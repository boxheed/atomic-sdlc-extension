# 📂 `atomic-sdlc`

**The 2026 Modular Suite of Gemini CLI Extensions for the Software Development Lifecycle.**

`atomic-sdlc` is a high-precision collection of single-responsibility AI agent **Commands**. Unlike "monolithic" AI assistants, these agents are **Atomic**: they function as pure technical units that perform one specific transformation (e.g., auditing a requirement, generating a schema, or diagnosing a production crash) with strict, machine-readable handshakes.

---

## 🏗️ The Atomic Philosophy

Most AI implementations fail due to "context drift." `atomic-sdlc` eliminates this by treating every agent as a **Pure Function**:

1.  **Discrete Context:** Agents only receive the specific data required for their task.
2.  **Stateless Handshakes:** Communication happens via file artifacts (`SPEC.md`, `ARCH.md`, `.json`), ensuring no reliance on conversation history.
3.  **Halt-on-Failure:** Quality gates (Auditors/Critics) must output an explicit `PASS` or `FAIL` status to control the pipeline flow.
4.  **Contract-Bound:** All machine-to-machine outputs follow a minified JSON schema for deterministic parsing.
5.  **Mode-Aware Autonomy:** Agents adapt to their environment (Interactive vs. YOLO) using a strict **I/O Priority Ladder** (Explicit Args > Inferred Discovery > Interactive Fallback).

---

## 🚦 Mode-Aware Autonomy (The Handshake)

All Master Agents follow a strict execution priority to ensure precision and prevent "hangs":

1.  **Explicit Arguments:** Providing a verb or path (e.g., `/atomic:design blueprint`) bypasses all discovery and executes immediately.
2.  **Inferred Discovery (Strategy 3):** If no arguments are provided, agents scan the workspace (including `conductor/index.md`) to identify the next logical step.
3.  **Adaptive Branching:**
    -   **YOLO Mode:** If `--yolo` is detected or the environment is non-interactive, the agent autonomously executes the discovered next step.
    -   **Interactive Mode:** If interactive, the agent presents a recommendation and asks the user for confirmation via a selection menu.

---

## 🗺️ The Pipeline Flow

[Image of a modular software development lifecycle showing the flow from discovery to maintenance]

The framework follows a sequential "Handshake" where the output of one phase becomes the "Source of Truth" for the next.

1.  **Discovery:** Stakeholder Input $\rightarrow$ `SPEC.md`
2.  **Design:** `SPEC.md` $\rightarrow$ `ARCH.md` & `CONTRACTS`
3.  **Implementation:** `CONTRACTS` $\rightarrow$ `SOURCE_CODE`
4.  **Verification:** `SOURCE_CODE` $\rightarrow$ `PASS/FAIL`
5.  **Maintenance:** `LOGS` $\rightarrow$ `RETROSPECTIVE`

---

## 🤖 AI-Driven Maintenance

This repository is designed to be maintained and evolved by AI. 

An `.ai-instructions.md` file is located in the root. When using a coding assistant (Gemini in VS Code, IDX, or Cursor) to update or add agents, it will automatically adhere to the **Atomic Laws** (Verb-based naming, Tool-inference, No embedded scripts).

**To update an agent:**
> "Gemini, use the project rules to refactor `/atomic:audit` to include a check for data privacy compliance."

---

## 🚀 Quick Start

1.  **Install Gemini CLI:** Ensure your worker is authenticated.
2.  **Install Extension:**
    ```bash
    gemini extensions install [https://github.com/your-org/atomic-sdlc](https://github.com/your-org/atomic-sdlc)
    ```
3.  **Run a Command:**
    ```bash
    gemini /atomic:blueprint ./docs/SPEC.md ./docs/ARCH.md
    ```

---

### 🛠️ The Atomic Command-Set (Master Registry)

| Command Name | Category | Description | Purpose | Status |
| :--- | :--- | :--- | :--- | :--- |
| **Discovery** | | | | |
| **`/atomic:discovery`** | **Master** | **Orchestrates the Discovery Phase.** | **Autonomous Requirements Discovery.** | ✅ |
| `/atomic:discovery:elicit` | Discovery | Extracts core needs from raw input. | Filters noise for true value. | ✅ |
| `/atomic:discovery:constrain`| Discovery | Identifies technical NFRs. | Sets the system boundaries. | ✅ |
| `/atomic:discovery:audit` | Discovery | Examines drafts for ambiguity. | The Gatekeeper for quality. | ✅ |
| `/atomic:discovery:formalize`| Utility | Reconciles logs into a Spec. | Creates the Source of Truth. | ✅ |
| `/atomic:discovery:atomize` | Discovery | Slices Spec into User Stories. | Converts "What" into tasks. | ✅ |
| `/atomic:discovery:criteria` | Discovery | Generates Gherkin scenarios. | Defines "Done" objectively. | ✅ |
| **Design** | | | | |
| **`/atomic:design`** | **Master** | **Orchestrates the Design Phase.** | **Autonomous Architectural Design.** | ✅ |
| `/atomic:design:blueprint` | Design | Architects high-level design. | The Master Plan for Design. | ✅ |
| `/atomic:design:evaluate` | Design | Critiques blueprint for risk. | Prevents over-engineering. | ✅ |
| `/atomic:design:schema` | Design | Generates DB structures. | Builds the data layer. | ✅ |
| `/atomic:design:interface` | Design | Generates API contracts. | Builds the boundary layer. | ✅ |
| `/atomic:design:layout` | Design | Generates UI wireframes. | Defines the user journey. | ✅ |
| `/atomic:design:inspect` | Design | Performs UX usability audits. | Validates human interface. | ✅ |
| **Build** | | | | |
| **`/atomic:build`** | **Master** | **Orchestrates the Build Phase.** | **Autonomous System Implementation.** | ✅ |
| `/atomic:build:author` | Build | Writes modular code. | Turns design into logic. | ✅ |
| `/atomic:build:refactor` | Build | Cleans up code smells/debt. | Ensures "Clean" code. | ✅ |
| `/atomic:build:integrate` | Build | Checks for module regressions. | Fits unit into the system. | ✅ |
| `/atomic:build:review` | Build | Performs logic/security review. | Automated Peer Reviewer. | ✅ |
| `/atomic:build:document` | Build | Writes tech documentation. | Ensures maintainability. | ✅ |
| `/atomic:build:validate` | Build | Audits docs against code. | Prevents stale documentation. | ✅ |
| **Verify** | | | | |
| **`/atomic:verify`** | **Master** | **Orchestrates the Verification Phase.** | **Autonomous Testing & Profiling.** | ✅ |
| `/atomic:verify:test` | Verify | Authors unit tests. | Proves code correctness. | ✅ |
| `/atomic:verify:scrutinize`| Verify | Critiques tests for gaps. | Ensures effective testing. | ✅ |
| `/atomic:verify:probe` | Verify | Hunts for "unhappy paths." | Stress-tests resilience. | ✅ |
| `/atomic:verify:profile` | Verify | Identifies NFR bottlenecks. | Ensures performance goals. | ✅ |
| **Ship** | | | | |
| **`/atomic:ship`** | **Master** | **Orchestrates the Ship Phase.** | **Autonomous CI/CD & Provisioning.** | ✅ |
| `/atomic:ship:pipeline` | Ship | Generates CI/CD scripts. | Automates the ship path. | ✅ |
| `/atomic:ship:harden` | Ship | Scans for security holes. | Prevents insecure deploys. | ✅ |
| `/atomic:ship:provision` | Ship | Generates IaC (Terraform). | Matches prod to dev. | ✅ |
| **Ops** | | | | |
| **`/atomic:ops`** | **Master** | **Orchestrates the Ops Phase.** | **Autonomous Monitoring & Learning.** | ✅ |
| `/atomic:ops:telemetry` | Ops | Suggests monitoring points. | Visibility into live health. | ✅ |
| `/atomic:ops:diagnose` | Ops | Root-cause analysis of logs. | Accelerates bug fixing. | ✅ |
| `/atomic:ops:retrospect`| Ops | Critiques incident response. | Facilitates Learning Loop. | ✅ |
| **Reporting** | | | | |
| `/atomic:utility:format-md` | Utility | Transforms JSON into Reports. | Makes machine data readable. | ✅ |

### ⚠️ Deprecated

| Command Name | Category | Description | Purpose | Status |
| :--- | :--- | :--- | :--- | :--- |
| `/atomic:analyse` | Design | Reviews and expands existing requirements. | Replaced by `/atomic:elicit`. | ❌ |
| `/atomic:architect` | Design | Proposes technical system changes. | Replaced by `/atomic:blueprint`. | ❌ |

---

## 📦 Extension Structure

```text
atomic-sdlc/
├── gemini-extension.json    # Manifest and versioning
├── GEMINI.md                # Project-specific AI instructions
├── commands/
│   └── atomic/
│       ├── [phase].toml      # Master Agent orchestrators
│       └── [phase]/
│           └── [verb].toml   # Worker sub-commands
└── conductor/               # Conductor project management
```
## 🤝 Contributing
This project thrives on Atomic Contributions. To add a command:

1.  Define a Single Responsibility.
2.  Create a .toml command in `/commands/atomic/` with a clear persona.
3.  Ensure the prompt uses `read_file` and `write_file`.
4.  Submit a PR; the `/atomic:review` agent will audit your contribution.
