# Plan: Atomic SDLC Artifact Standardization

## Phase 1: Command Definition Updates (The "Atomic" Changes)

### [x] Task 1.1: Standardize Discovery Commands (1680793)
- Update `discovery/extract.toml` -> `DISCOVERY_REQUIREMENTS.json`
- Update `discovery/limits.toml` -> `DISCOVERY_CONSTRAINTS.json`
- Update `discovery/spec.toml` -> `DISCOVERY_SPEC.md` (Input: REQUIREMENTS, CONSTRAINTS)
- Update `discovery/slice.toml` -> `DISCOVERY_STORIES.json` (Input: SPEC)
- Update `discovery/criteria.toml` -> `DISCOVERY_CRITERIA.json` (Input: STORIES/SPEC)
- Update `discovery/audit.toml` -> `DISCOVERY_AUDIT.json`

### Task 1.2: Standardize Design Commands
- Update `design/architect.toml` -> `DESIGN_ARCH.md` (Input: SPEC)
- Update `design/data.toml` -> `DESIGN_SCHEMA.sql` (Input: SPEC/ARCH)
- Update `design/api.toml` -> `DESIGN_API_CONTRACT.yaml` (Input: SPEC/ARCH)
- Update `design/ui.toml` -> `DESIGN_UI_SPEC.md` (Input: SPEC)
- Update `design/audit.toml` -> `DESIGN_AUDIT.json`

### Task 1.3: Standardize Build & Verify Commands
- Update `build/write.toml`, `build/audit.toml`, `build/integrate.toml`, `build/docs.toml`.
- Update `verify/write.toml`, `verify/audit.toml`, `verify/stress.toml`, `verify/profile.toml`.

## Phase 2: Documentation & Validation
- Update `GEMINI.md` to reflect the new naming conventions.
- Verify each command's discovery logic via manual test runs (if possible) or prompt inspection.

## Success Criteria
- [ ] All `.toml` files use the `[PHASE]_[RESULT]` convention.
- [ ] No `ELICITATION.json` or `NFR_CONSTRAINTS.json` references remain.
- [ ] `GEMINI.md` documentation matches implementation.
