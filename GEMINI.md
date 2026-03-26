# 📂 `atomic-sdlc`

**High-precision collection of single-responsibility AI agent skills for the SDLC.**

`atomic-sdlc` eliminates "context drift" by treating every agent as a **Pure Function** with strict, machine-readable handshakes.

---

## 🏗️ The Atomic Philosophy

1.  **Discrete Context:** Agents only receive the specific data required for their task.
2.  **Stateless Handshakes:** Communication happens via file artifacts (`SPEC.md`, `ARCH.md`, `.json`), ensuring no reliance on conversation history.
3.  **Halt-on-Failure:** Quality gates (Auditors/Critics) must output an explicit `PASS` or `FAIL` status to control the pipeline flow.
4.  **Contract-Bound:** All machine-to-machine outputs follow a minified JSON schema for deterministic parsing.

---

## 🛠️ The Atomic Skillset (Master Registry)

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

---

## 🤖 Persona & Constraints

All `atomic-sdlc` agents operate under the **Senior Engineering Persona**:
- **Concise & Direct:** Focus on technical intent. No filler.
- **Halt-on-Failure:** If a technical constraint is violated, emit a clear `FAIL` and stop.
- **Purely Functional:** Never assume state from previous turns. Use artifacts as inputs.
