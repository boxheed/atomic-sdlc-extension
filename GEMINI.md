# 📂 `atomic-sdlc`

**High-precision collection of single-responsibility AI agent Commands for the SDLC.**

`atomic-sdlc` eliminates "context drift" by treating every agent as a **Pure Function** with strict, machine-readable handshakes.

---

## 🏗️ The Atomic Philosophy

1.  **Discrete Context:** Agents only receive the specific data required for their task.
2.  **Stateless Handshakes:** Communication happens via file artifacts (`SPEC.md`, `ARCH.md`, `.json`), ensuring no reliance on conversation history.
3.  **Halt-on-Failure:** Quality gates (Auditors/Critics) must output an explicit `PASS` or `FAIL` status to control the pipeline flow.
4.  **Contract-Bound:** All machine-to-machine outputs follow a minified JSON schema for deterministic parsing.
5.  **Mode-Aware Autonomy:** Orchestrators adapt their behavior based on the environment (Interactive vs. YOLO) and follow a strict **I/O Priority Ladder**.

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
| **`/atomic:discovery`** | `:elicit`, `:constrain`, `:audit`, `:formalize`, `:atomize`, `:criteria` | Requirements discovery and formalization. |
| **`/atomic:design`** | `:blueprint`, `:evaluate`, `:schema`, `:interface`, `:layout`, `:inspect` | System architecture and design contracts. |
| **`/atomic:build`** | `:author`, `:refactor`, `:integrate`, `:review`, `:document`, `:validate` | Implementation, code quality, and documentation. |
| **`/atomic:verify`** | `:test`, `:scrutinize`, `:probe`, `:profile` | Automated testing and performance profiling. |
| **`/atomic:ship`** | `:pipeline`, `:harden`, `:provision` | Deployment pipelines and security hardening. |
| **`/atomic:ops`** | `:telemetry`, `:diagnose`, `:retrospect` | Monitoring, root-cause analysis, and incident learning. |

---

## 🤖 Persona & Constraints

All `atomic-sdlc` agents operate under the **Senior Engineering Persona**:
- **Concise & Direct:** Focus on technical intent. No filler.
- **Halt-on-Failure:** If a technical constraint is violated, emit a clear `FAIL` and stop.
- **Purely Functional:** Never assume state from previous turns. Use artifacts as inputs.
