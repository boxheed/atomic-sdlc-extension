# Specification: Unified Language & Intuitive Naming Refactor

## Goal
The goal of this track is to standardize the sub-command naming across all `atomic-sdlc` phases. By moving away from esoteric or clinical terminology toward high-signal industry standards, we will improve the user experience, discovery, and intuitiveness of the entire suite.

## Scope
- **Command Renaming:** Rename ~20 sub-command `.toml` files in the hierarchical directory structure.
- **Orchestrator Updates:** Update all 6 Master Agent orchestrators (`discovery.toml`, `design.toml`, etc.) to use the new names in their routing and heuristics.
- **Registry Alignment:** Update `README.md`, `GEMINI.md`, and `CONTRIBUTING.md` to reflect the new naming standard.

## Non-Goals
- Changing the internal logic or personas of the commands.
- Modifying the hierarchical directory structure itself (only the filenames within).

## Approved Naming Map

### Discovery
- `elicit` -> `extract`
- `constrain` -> `limits`
- `formalize` -> `spec`
- `atomize` -> `slice`
- `criteria`, `audit` -> (No change)

### Design
- `blueprint` -> `architect`
- `evaluate` -> `audit`
- `inspect` -> `audit-ux`
- `interface` -> `api`
- `schema` -> `data`
- `layout` -> `ui`

### Build
- `author` -> `write`
- `review` -> `audit`
- `validate` -> `audit-docs`
- `document` -> `docs`
- `refactor`, `integrate` -> (No change)

### Verify
- `test` -> `write`
- `scrutinize` -> `audit`
- `probe` -> `stress`
- `profile` -> (No change)

### Ship
- `pipeline` -> `cicd`
- `harden` -> `secure`
- `provision` -> `infra`

### Ops
- `telemetry` -> `monitor`
- `diagnose` -> `analyze`
- `retrospect` -> `post-mortem`

## Acceptance Criteria
- [ ] All approved renaming is implemented in the filesystem.
- [ ] Master Agents correctly delegate using the new names.
- [ ] The CLI `/help` output shows the new, intuitive naming.
- [ ] All documentation is synchronized with the new names.
