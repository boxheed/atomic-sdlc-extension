# 📂 `atomic-sdlc`

**High-precision collection of single-responsibility AI agent Commands for the SDLC.**

`atomic-sdlc` eliminates "context drift" by treating every agent as a **Pure Function** with strict, machine-readable handshakes.

---

## 🏗️ The Atomic Philosophy

1.  **Discrete Context:** Agents only receive the specific data required for their task.
2.  **Stateless Handshakes:** Communication happens via standardized file artifacts (e.g., `DISCOVERY_SPEC.md`, `DESIGN_ARCH.md`, `BUILD_AUDIT.json`), ensuring no reliance on conversation history.
3.  **Halt-on-Failure:** Quality gates (Auditors/Critics) must output an explicit `PASS` or `FAIL` status to a `[PHASE]_AUDIT.json` file to control the pipeline flow.
4.  **Contract-Bound:** All machine-to-machine outputs follow a minified JSON schema for deterministic parsing.
5.  **Standardized Artifact Naming:** All artifacts follow the `[PHASE]_[RESULT].[EXT]` convention for predictability.

---

## 📦 Artifact Registry (Phase-Result Convention)

| Phase | Core Result Artifacts |
| :--- | :--- |
| **DISCOVERY** | `REQUIREMENTS.json`, `CONSTRAINTS.json`, `SPEC.md`, `STORIES.json`, `CRITERIA.json`, `AUDIT.json` |
| **DESIGN** | `ARCH.md`, `SCHEMA.sql`, `API_CONTRACT.yaml`, `UI_SPEC.md`, `AUDIT.json` |
| **BUILD** | `AUDIT.json`, `INTEGRATION_AUDIT.json`, `TECHNICAL_DOCS.md` |
| **VERIFY** | `AUDIT.json`, `STRESS_REPORT.json`, `PROFILE_REPORT.json` |
| **SHIP** | `CICD_CONFIG.yml`, `INFRA_IAC.tf`, `SECURITY_AUDIT.json` |
| **OPS** | `MONITOR_PLAN.json`, `RCA_REPORT.json`, `POST_MORTEM.md` |

---

## 🚦 Mode-Aware Autonomy (The Handshake)

All Master Agents follow a strict execution priority to ensure precision and prevent "hangs":

1.  **Explicit Arguments:** Providing a verb or path (e.g., `/atomic:design blueprint`) bypasses all discovery and executes immediately.
2.  **Inferred Discovery (Strategy 3):** If no arguments are provided, agents scan the workspace (including `conductor/index.md`) to identify the next logical step.
3.  **Adaptive Branching:**
    -   **YOLO Mode:** If `--yolo` is detected or the environment is non-interactive, the agent autonomously executes the discovered next step.
    -   **Interactive Mode:** If interactive, the agent presents a recommendation and asks the user for confirmation via a selection menu.

---

## 🛠️ The Atomic Skillset (Master Registry)

| Phase (Master Command) | Verbs (Atomic Sub-Skills) | Description |
| :--- | :--- | :--- |
| **`/atomic:discovery`** | `:extract`, `:limits`, `:audit`, `:spec`, `:slice`, `:criteria` | Requirements discovery and formalization. |
| **`/atomic:design`** | `:architect`, `:audit`, `:data`, `:api`, `:ui`, `:audit-ux` | System architecture and design contracts. |
| **`/atomic:build`** | `:write`, `:refactor`, `:integrate`, `:audit`, `:docs`, `:audit-docs` | Implementation, code quality, and documentation. |
| **`/atomic:verify`** | `:write`, `:audit`, `:stress`, `:profile` | Automated testing and performance profiling. |
| **`/atomic:ship`** | `:cicd`, `:secure`, `:infra` | Deployment pipelines and security hardening. |
| **`/atomic:ops`** | `:monitor`, `:analyze`, `:post-mortem` | Monitoring, root-cause analysis, and incident learning. |

---

## 🤖 Persona & Constraints

All `atomic-sdlc` agents operate under the **Senior Engineering Persona**:
- **Concise & Direct:** Focus on technical intent. No filler.
- **Halt-on-Failure:** If a technical constraint is violated, emit a clear `FAIL` and stop.
- **Purely Functional:** Never assume state from previous turns. Use artifacts as inputs.
