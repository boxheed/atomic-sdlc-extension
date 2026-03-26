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

| Command Name | Category | Description | Purpose | Status |
| :--- | :--- | :--- | :--- | :--- |
| **Discovery** | | | | |
| `/atomic:elicit` | Discovery | Extracts core needs from raw input. | Filters noise for true value. | ✅ |
| `/atomic:constrain`| Discovery | Identifies technical NFRs. | Sets the system boundaries. | ✅ |
| `/atomic:audit` | Discovery | Examines drafts for ambiguity. | The Gatekeeper for quality. | ✅ |
| `/atomic:formalize`| Utility | Reconciles logs into a Spec. | Creates the Source of Truth. | ✅ |
| `/atomic:atomize` | Discovery | Slices Spec into User Stories. | Converts "What" into tasks. | ✅ |
| `/atomic:criteria` | Discovery | Generates Gherkin scenarios. | Defines "Done" objectively. | ✅ |
| **Design** | | | | |
| `/atomic:blueprint` | Design | Architects high-level design. | The Master Plan for Design. | ✅ |
| `/atomic:evaluate` | Design | Critiques blueprint for risk. | Prevents over-engineering. | ✅ |
| `/atomic:schema` | Design | Generates DB structures. | Builds the data layer. | ✅ |
| `/atomic:interface` | Design | Generates API contracts. | Builds the boundary layer. | ✅ |
| `/atomic:layout` | Design | Generates UI wireframes. | Defines the user journey. | ✅ |
| `/atomic:inspect` | Design | Performs UX usability audits. | Validates human interface. | ✅ |
| **Implementation** | | | | |
| `/atomic:author` | Implementation| Writes modular code. | Turns design into logic. | ✅ |
| `/atomic:refactor` | Implementation| Cleans up code smells/debt. | Ensures "Clean" code. | ✅ |
| `/atomic:integrate` | Implementation| Checks for module regressions. | Fits unit into the system. | ✅ |
| `/atomic:review` | Implementation| Performs logic/security review. | Automated Peer Reviewer. | ✅ |
| `/atomic:document` | Implementation| Writes tech documentation. | Ensures maintainability. | ✅ |
| `/atomic:verify` | Implementation| Audits docs against code. | Prevents stale documentation. | ✅ |
| **Verification** | | | | |
| `/atomic:test` | Verification | Authors unit tests. | Proves code correctness. | ✅ |
| `/atomic:scrutinize`| Verification | Critiques tests for gaps. | Ensures effective testing. | ✅ |
| `/atomic:probe` | Verification | Hunts for "unhappy paths." | Stress-tests resilience. | ✅ |
| `/atomic:profile` | Verification | Identifies NFR bottlenecks. | Ensures performance goals. | ✅ |
| **Deployment** | | | | |
| `/atomic:pipeline` | Deployment | Generates CI/CD scripts. | Automates the ship path. | ✅ |
| `/atomic:harden` | Deployment | Scans for security holes. | Prevents insecure deploys. | ✅ |
| `/atomic:provision` | Deployment | Generates IaC (Terraform). | Matches prod to dev. | ✅ |
| **Maintenance** | | | | |
| `/atomic:telemetry` | Maintenance | Suggests monitoring points. | Visibility into live health. | ✅ |
| `/atomic:diagnose` | Maintenance | Root-cause analysis of logs. | Accelerates bug fixing. | ✅ |
| `/atomic:retrospect`| Maintenance | Critiques incident response. | Facilitates Learning Loop. | ✅ |
| **Reporting** | | | | |
| `/atomic:format-md` | Utility | Transforms JSON into Reports. | Makes machine data readable. | ✅ |

### ⚠️ Deprecated
| Command | Category | Responsibility |
|---------|----------|----------------|
| `/atomic:analyse` | Design | To review and expand existing requirements |
| `/atomic:architect` | Design | To review requirements and system and propose the technical changes |

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