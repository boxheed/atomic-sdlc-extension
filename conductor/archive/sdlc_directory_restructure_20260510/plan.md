# Plan: SDLC Directory Restructuring

## Phase 1: Command Definition Updates

### [x] Task 1.1: Update Discovery Commands (b25b3e7)
- Update `discovery.toml` (Heuristics)
- Update `discovery/extract.toml`, `limits.toml`, `spec.toml`, `slice.toml`, `criteria.toml`, `audit.toml` to use `sdlc/` prefix.

### [x] Task 1.2: Update Design Commands (d52390c)
- Update `design.toml` (Heuristics)
- Update `design/architect.toml`, `data.toml`, `api.toml`, `ui.toml`, `audit.toml` to use `sdlc/` prefix.

### [x] Task 1.3: Update Build & Verify Commands (e3ee471)
- Update `build.toml`, `verify.toml` (Heuristics)
- Update all worker commands in `build/` and `verify/` to use `sdlc/` prefix.

### [x] Task 1.4: Update Ship & Ops Commands (41f1a51)
- Update `ship.toml`, `ops.toml` (Heuristics)
- Update all worker commands in `ship/` and `ops/` to use `sdlc/` prefix.

## Phase 2: Documentation & Cleanup

### [x] Task 2.1: Update `GEMINI.md` to document the `sdlc/` container. (9a962dc)
- Update `GEMINI.md` to document the `sdlc/` container.
- Update `conductor/tech-stack.md` and `conductor/product-guidelines.md`.

## Success Criteria
- [ ] No `atomic-sdlc` artifacts default to the workspace root.
- [ ] Every command correctly identifies artifacts within the `sdlc/` folder.
- [ ] Documentation clearly identifies `sdlc/` as the artifact home.
