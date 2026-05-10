# Implementation Plan: Implement Adaptive Handshake Protocol

## Phase 1: Logic Design & Pilot (Discovery)
- [x] Task: Update `/atomic:discovery` with Mode-Aware branching and I/O Priority logic. (4467204)
- [x] Task: Manual Verification of `discovery.toml` logic.

## Phase 2: Core Refactor (Design & Build)
- [x] Task: Propagate branching logic to `/atomic:design`. (386f84c)
- [x] Task: Propagate branching logic to `/atomic:build`. (386f84c)
- [x] Task: Manual Verification of Design/Build orchestrators.

## Phase 3: Core Refactor (Verify, Ship, & Ops)
- [x] Task: Propagate branching logic to `/atomic:verify`, `/atomic:ship`, and `/atomic:ops`. (04e2d78)
- [x] Task: Implement the "Autonomous Fallback" logic across all orchestrators (ensure no hangs in --yolo).
- [x] Task: Conductor - User Manual Verification 'Phase 1-3: Core Refactor' (Protocol in workflow.md)

## Phase 4: Atomic Skill Refactor & Artifact Discovery
This phase focuses on ensuring individual skills obey the "Explicit Wins" rule.

- [x] Task: Refactor sub-skills (e.g., `elicit`, `formalize`, `audit`, `atomize`, `criteria`, `blueprint`, `author`) to prioritize `{{args}}` over discovery. (7da5d44)
- [x] Task: Enhance Strategy 3 discovery to check `conductor/index.md` for project-level context. (7da5d44)
- [x] Task: Ensure all `ask_user` calls in sub-skills are guarded by an interactivity check. (7da5d44)
- [x] Task: Conductor - User Manual Verification 'Phase 4: Skill Refactor' (Protocol in workflow.md)

## Phase 5: Final Verification & CLI UX
This phase focuses on verifying the zero-hang execution and final documentation updates.

- [x] Task: Verify non-blocking behavior in a simulated `gemini --yolo` environment. (8a9b0c1)
- [x] Task: Update `GEMINI.md` and `README.md` to document the new I/O Priority and YOLO behavior. (8a9b0c1)
- [x] Task: Perform a final cross-track documentation synchronization.
- [x] Task: Conductor - User Manual Verification 'Phase 5: Final Review' (Protocol in workflow.md)
