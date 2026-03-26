# 📂 `atomic-sdlc`

**The 2026 Modular Suite of Gemini CLI Extensions for the Software Development Lifecycle.**

`atomic-sdlc` is a high-precision collection of single-responsibility AI agent skills. Unlike "monolithic" AI assistants, these skills are **Atomic**: they function as pure technical units that perform one specific transformation (e.g., auditing a requirement, generating a schema, or diagnosing a production crash) with strict, machine-readable handshakes.

---

## 🏗️ The Atomic Philosophy

Most AI implementations fail due to "context drift." `atomic-sdlc` eliminates this by treating every agent as a **Pure Function**:

1.  **Discrete Context:** Agents only receive the specific data required for their task.
2.  **Stateless Handshakes:** Communication happens via file artifacts (`SPEC.md`, `ARCH.md`, `.json`), ensuring no reliance on conversation history.
3.  **Halt-on-Failure:** Quality gates (Auditors/Critics) must output an explicit `PASS` or `FAIL` status to control the pipeline flow.
4.  **Contract-Bound:** All machine-to-machine outputs follow a minified JSON schema for deterministic parsing.

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

### 🛠️ The Atomic Skillset (Master Registry)

| Phase (Master Command) | Verbs (Atomic Sub-Skills) | Description |
| :--- | :--- | :--- |
| **`/atomic:discovery`** | `elicit`, `constrain`, `audit`, `formalize`, `atomize`, `criteria` | Requirements discovery and formalization. |
| **`/atomic:design`** | `blueprint`, `evaluate`, `schema`, `interface`, `layout`, `inspect` | System architecture and design contracts. |
| **`/atomic:build`** | `author`, `refactor`, `integrate`, `review`, `document`, `verify` | Implementation, code quality, and documentation. |
| **`/atomic:verify`** | `test`, `scrutinize`, `probe`, `profile` | Automated testing and performance profiling. |
| **`/atomic:ship`** | `pipeline`, `harden`, `provision` | Deployment pipelines and security hardening. |
| **`/atomic:ops`** | `telemetry`, `diagnose`, `retrospect` | Monitoring, root-cause analysis, and incident learning. |

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
├── commands/
│   └── [verb].toml          # CLI definitions & agent prompts
```
## 🤝 Contributing
This project thrives on Atomic Contributions. To add a skill:

1.  Define a Single Responsibility.
2.  Create a .toml command in /commands with a clear persona.
3.  Ensure the prompt uses read_file and write_file.
4.  Submit a PR; the /atomic:review agent will audit your contribution.