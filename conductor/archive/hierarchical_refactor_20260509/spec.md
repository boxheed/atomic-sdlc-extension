# Specification: Hierarchical Master & Workers Refactor

## Goal
The goal of this track is to restructure the `atomic-sdlc` command set from a flat namespace into a hierarchical "Master & Workers" pattern. This will resolve naming collisions, improve CLI discovery, and maintain 100% reliability for CI/CD automation.

## Scope
- **Directory Restructuring:** Move ~30 sub-skill `.toml` files into phase-specific subdirectories (e.g., `commands/atomic/build/`).
- **Orchestrator Updates:** Update the 6 Master Agents (`discovery`, `design`, `build`, `verify`, `ship`, `ops`) to route requests to the new nested command paths.
- **Namespace Resolution:** Resolve the collision where the Build Phase's `verify` verb is shadowed by the Verification Master Agent.
- **Registry Alignment:** Update all documentation to reflect the new `/atomic:phase:verb` invocation pattern.

## Non-Goals
- Changing the internal logic or personas of the individual sub-skills.
- Modifying the Gemini CLI core framework.
- Introducing new project artifacts.

## Acceptance Criteria
- [ ] Users can access sub-skills via nested paths (e.g., `/atomic:build:author`).
- [ ] Master Agents correctly recommend and delegate to nested commands.
- [ ] The naming collision between Build-Verify and Test-Verify is resolved.
- [ ] Root `/help` only displays the 6 high-level Master Agents and namespaced groups.
- [ ] All documentation (README, GEMINI, CONTRIBUTING) accurately reflects the hierarchy.
