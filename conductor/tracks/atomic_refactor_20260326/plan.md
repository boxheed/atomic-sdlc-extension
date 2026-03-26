# Implementation Plan: Refactor atomic-sdlc to Phase-Based Namespacing and Artifact Discovery

## Phase 1: Prototype the Master Agent Concept [checkpoint: 1f30b51]
This phase focuses on creating the first Master Agent (`Discovery`) as a proof-of-concept.

- [x] Task: Create `/atomic:discovery` Master Agent as a dispatcher. 2892591
- [x] Task: Implement the "Verb-Routing" logic to call `elicit`, `audit`, etc. 473e07b
- [x] Task: Integrate "Artifact Discovery" for the `Discovery` phase. 0112d97
- [x] Task: Conductor - User Manual Verification 'Phase 1: Discovery Prototype' (Protocol in workflow.md)

## Phase 2: Refactor All Skills to Hierarchical Namespaces [checkpoint: 45c023c]
This phase involves restructuring the remaining 30+ skills under their respective Master Agents.

- [x] Task: Implement Master Agents for `Design`, `Build`, `Verify`, `Ship`, and `Ops`. 5f14dfa
- [x] Task: Refactor existing skills to support the "Artifact-First" context ingestion. a4488a7
- [x] Task: Update the `Master Registry` and `README.md` for the new structure. 58dbc2f
- [x] Task: Conductor - User Manual Verification 'Phase 2: Full Refactor' (Protocol in workflow.md)

## Phase 3: Final UX Enhancement & Documentation [checkpoint: d2bc999]
This phase focuses on fine-tuning the CLI experience and ensuring the documentation is complete.

- [x] Task: Implement the "Next Agent" meta-skill (Strategy 4) within the Master Agents. f9beb41
- [x] Task: Perform a final comprehensive coherence audit of all documentation.
- [x] Task: Conductor - User Manual Verification 'Phase 3: Final Review' (Protocol in workflow.md)
