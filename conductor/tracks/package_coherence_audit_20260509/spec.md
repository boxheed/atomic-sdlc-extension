# Specification: Package Coherence Audit & Cleanup

## Goal
The goal of this track is to resolve inconsistencies in the project's configuration and documentation caused by the architectural shift from "Agent Skills" (`skills/` directory) to "Namespaced Commands" (`commands/` directory).

## Scope
- **Configuration Cleanup:** Remove stale references to the `skills/` directory in `package.json`.
- **Documentation Audit:** Update `README.md`, `GEMINI.md`, `CONTRIBUTING.md`, and any other relevant files to reflect the current Command-based structure.
- **Build Verification:** Ensure the `npm run package` command functions correctly and produces a valid extension artifact.

## Non-Goals
- Re-introducing the `skills/` directory.
- Changing the internal logic of existing commands.
- Modifying the Gemini CLI core behavior.

## Acceptance Criteria
- [ ] `package.json` no longer references the non-existent `skills/` directory.
- [ ] `npm run package` completes successfully without errors.
- [ ] `README.md` correctly describes how to use and contribute to the "Namespaced Commands."
- [ ] No stale references to "skills/" paths exist in the root documentation.
