# 🤖 The Atomic Agent Framework: Design & Maintenance Guide

## 1. Purpose & Vision
The **Atomic Agent Framework** is a modular, verb-based AI orchestration system designed for a 2026-standard SDLC. Unlike "monolithic" AI prompts, this system breaks every phase of software development into **Atomic Commands**. 

Each agent is a "pure function": it takes specific inputs, performs one specific transformation, and writes a deterministic output.

## 2. Core Design Philosophy (The "Atomic Laws")
When updating or creating agents, the maintaining AI must adhere to these five laws:

1.  **Verb-Based Atomicity:** Every agent name must be a verb (e.g., `/atomic:audit`, not `/atomic:auditor`). The scope must be limited to one specific task.
2.  **Stateless Handshakes:** Agents do not rely on conversation memory. They must use the `read_file` tool to ingest state from previous artifacts and `write_file` to persist their work.
3.  **Path Inference:** Agents must never hardcode file paths. They should infer paths from the `{{args}}` passed to them or from standard project structures (e.g., `conductor/index.md`).
4.  **Halt-on-Failure:** If an agent identifies a logic flaw (Audit, Scrutinize, Evaluate), it must output a `FAIL` status in a minified JSON object and stop the pipeline.
5.  **No Embedded Scripts:** Agents are declared in static `.toml` files. Logic resides in the **Prompt**, not in external Python/Bash scripts, ensuring the framework remains "Prompt-Native."

## 3. The SDLC Pipeline Map
The framework follows a strict "Waterfall-of-Agile" flow. An agent's output is the next agent's context.


| Phase | Handshake Artifact | Primary "Truth" Source |
| :--- | :--- | :--- |
| **Discovery** | `SPEC.md` | Stakeholder Input |
| **Design** | `ARCH.md` & `CONTRACTS` | `SPEC.md` |
| **Implementation** | `SOURCE_CODE` | `CONTRACTS` + `USER_STORIES` |
| **Verification** | `TEST_LOGS` | `GHERKIN_CRITERIA` |

## 4. Technical Specification for `.toml` Files
All agents must follow this structure in `/commands/atomic/`:

```toml
description = "Clear, one-sentence purpose."

prompt = """
# Role
[Specific Senior Persona]

# Task
[The specific transformation required]

# Process
1. Context Ingestion (Use read_file)
2. Logic/Analysis
3. Output Generation (Use write_file)

# Output Handling (STRICT)
- Minified JSON for Machine-to-Machine agents.
- Clean Markdown/Code for Human-facing agents.
- No conversational filler.

# Input Command
{{args}}
\"\"\"
```

## 5. Maintenance Checklist for AI Editors
When tasked with updating an agent, you MUST:

1.  **Check Regressions:** Does the change in output format break the "Handshake" for the next agent in the Registry?
2.  **Verify Tool Usage:** Ensure the agent is using `read_file` for all context and `write_file` for all results.
3.  **JSON Schema Integrity:** If the agent outputs JSON, ensure the keys remain consistent with the Master Registry definitions.
4.  **Tone Alignment:** Maintain the "Senior Peer" persona—concise, direct, and technically rigorous.

## 6. Current Master Registry
This is documented in the [README.md](./README.md) file.

