# Specification: Implement Adaptive Handshake Protocol for Mode-Aware Autonomy

## Goal
To refactor the `atomic-sdlc` suite to support a highly autonomous yet controllable workflow. The system must adapt its behavior based on the execution mode (Interactive vs. YOLO) and follow a strict priority for I/O (Explicit Arguments > Inferred Discovery > Interactive Fallback).

## Scope
- **Mode-Aware Branching:** Master Agents must detect the execution environment and choose between interactive menus and autonomous next-step execution.
- **I/O Priority Ladder:** Implementation of "Explicit Wins" logic across all 6 Master Agents and their sub-skills.
- **Dynamic Artifact Discovery:** Refinement of the Strategy 3 heuristics to be more robust and context-aware (e.g., checking `conductor/index.md`).
- **Non-Blocking Execution:** Ensuring no `ask_user` calls are made during `--yolo` or non-interactive CLI runs.

## Non-Goals
- Changing the technical logic of the atomic transformations (e.g., how a schema is generated).
- Introducing persistent state databases.

## Acceptance Criteria
- [ ] Running a Master Agent without arguments in an interactive session presents a menu of sub-skills.
- [ ] Running a Master Agent without arguments in `--yolo` mode autonomously identifies and executes the next logical step.
- [ ] Providing a path override in `{{args}}` bypasses all discovery and menus.
- [ ] The system never "hangs" on a prompt when executed in a non-interactive environment.
- [ ] All machine-to-machine JSON handshakes remain deterministic.
