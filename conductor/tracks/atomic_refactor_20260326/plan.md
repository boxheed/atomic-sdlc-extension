# Implementation Plan: Refactor atomic-sdlc to Phase-Based Namespacing and Artifact Discovery

## Phase 1: Prototype the Master Agent Concept
This phase focuses on creating the first Master Agent (`Discovery`) as a proof-of-concept.

- [ ] Task: Create `/atomic:discovery` Master Agent as a dispatcher.
- [ ] Task: Implement the "Verb-Routing" logic to call `elicit`, `audit`, etc.
- [ ] Task: Integrate "Artifact Discovery" for the `Discovery` phase.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Discovery Prototype' (Protocol in workflow.md)

## Phase 2: Refactor All Skills to Hierarchical Namespaces
This phase involves restructuring the remaining 30+ skills under their respective Master Agents.

- [ ] Task: Implement Master Agents for `Design`, `Build`, `Verify`, `Ship`, and `Ops`.
- [ ] Task: Refactor existing skills to support the "Artifact-First" context ingestion.
- [ ] Task: Update the `Master Registry` and `README.md` for the new structure.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Full Refactor' (Protocol in workflow.md)

## Phase 3: Final UX Enhancement & Documentation
This phase focuses on fine-tuning the CLI experience and ensuring the documentation is complete.

- [ ] Task: Implement the "Next Agent" meta-skill (Strategy 4) within the Master Agents.
- [ ] Task: Perform a final comprehensive coherence audit of all documentation.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Final Review' (Protocol in workflow.md)
