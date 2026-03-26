# Implementation Plan: Implement Adaptive Handshake Protocol

## Phase 1: Logic Design & Core Refactor
This phase focuses on updating the 6 Master Agents with the "Adaptive Handshake" logic.

- [ ] Task: Update `/atomic:discovery` with Mode-Aware branching and I/O Priority logic.
- [ ] Task: Propagate the same branching logic to Design, Build, Verify, Ship, and Ops agents.
- [ ] Task: Implement the "Autonomous Fallback" for `--yolo` mode in all orchestrators.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Core Refactor' (Protocol in workflow.md)

## Phase 2: Atomic Skill Refactor & Artifact Discovery
This phase focuses on ensuring individual skills obey the "Explicit Wins" rule.

- [ ] Task: Refactor sub-skills (e.g., `audit`, `blueprint`, `author`) to prioritize `{{args}}` over discovery.
- [ ] Task: Enhance Strategy 3 discovery to check `conductor/index.md` for project-level context.
- [ ] Task: Ensure all `ask_user` calls in sub-skills are guarded by an interactivity check.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Skill Refactor' (Protocol in workflow.md)

## Phase 3: Final Verification & CLI UX
This phase focuses on verifying the zero-hang execution and final documentation updates.

- [ ] Task: Verify non-blocking behavior in a simulated `gemini --yolo` environment.
- [ ] Task: Update `GEMINI.md` and `README.md` to document the new I/O Priority and YOLO behavior.
- [ ] Task: Perform a final cross-track documentation synchronization.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Final Review' (Protocol in workflow.md)
