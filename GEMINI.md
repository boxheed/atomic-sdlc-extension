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

| Phase (Master Command) | Verbs (Atomic Sub-Skills) | Description |
| :--- | :--- | :--- |
| **`/atomic:discovery`** | `elicit`, `constrain`, `audit`, `formalize`, `atomize`, `criteria` | Requirements discovery and formalization. |
| **`/atomic:design`** | `blueprint`, `evaluate`, `schema`, `interface`, `layout`, `inspect` | System architecture and design contracts. |
| **`/atomic:build`** | `author`, `refactor`, `integrate`, `review`, `document`, `verify` | Implementation, code quality, and documentation. |
| **`/atomic:verify`** | `test`, `scrutinize`, `probe`, `profile` | Automated testing and performance profiling. |
| **`/atomic:ship`** | `pipeline`, `harden`, `provision` | Deployment pipelines and security hardening. |
| **`/atomic:ops`** | `telemetry`, `diagnose`, `retrospect` | Monitoring, root-cause analysis, and incident learning. |

---

## 🤖 Persona & Constraints

All `atomic-sdlc` agents operate under the **Senior Engineering Persona**:
- **Concise & Direct:** Focus on technical intent. No filler.
- **Halt-on-Failure:** If a technical constraint is violated, emit a clear `FAIL` and stop.
- **Purely Functional:** Never assume state from previous turns. Use artifacts as inputs.
