# Implementation Plan: Hierarchical Master & Workers Refactor

## Phase 1: Discovery Phase Migration [checkpoint: d9ae22c]
Move discovery sub-skills to nested directory and update the Master Agent.

- [x] Task: Create `commands/atomic/discovery/` directory. eb7fa2e
- [x] Task: Move `elicit`, `constrain`, `audit`, `formalize`, `atomize`, and `criteria` to the new directory. 919f5e2
- [x] Task: Update `commands/atomic/discovery.toml` to call the nested `/atomic:discovery:[verb]` paths. b37c1d3
- [x] Task: Verify `/atomic:discovery` and direct access to `/atomic:discovery:elicit`. b37c1d3

## Phase 2: Design Phase Migration
Move design sub-skills to nested directory and update the Master Agent.

- [x] Task: Create `commands/atomic/design/` directory. 84b9c13
- [x] Task: Move `blueprint`, `evaluate`, `schema`, `interface`, `layout`, and `inspect` to the new directory. f836947
- [x] Task: Update `commands/atomic/design.toml` to call nested paths. 3467aeb
- [x] Task: Verify Design phase orchestration. 3467aeb

## Phase 3: Build Phase Migration & Verify Resolution
Move build sub-skills and resolve the `verify` naming collision.

- [ ] Task: Create `commands/atomic/build/` directory.
- [ ] Task: Move `author`, `refactor`, `integrate`, `review`, and `document` to the new directory.
- [ ] Task: Create `commands/atomic/build/validate.toml` (renamed from the build-level `verify` logic).
- [ ] Task: Update `commands/atomic/build.toml` to call nested paths and use the new `validate` verb.
- [ ] Task: Verify Build phase orchestration and the resolution of the `verify` collision.

## Phase 4: Verify, Ship, & Ops Phase Migration
Finalize the restructuring for the remaining phases.

- [ ] Task: Create subdirectories for `verify`, `ship`, and `ops`.
- [ ] Task: Move remaining sub-skills to their respective nested directories.
- [ ] Task: Update Master Agents (`verify.toml`, `ship.toml`, `ops.toml`) to call nested paths.
- [ ] Task: Move `format-md.toml` to a `utility/` or appropriate subdirectory.

## Phase 5: Documentation & Registry Alignment
Ensure the project state matches the new architecture.

- [ ] Task: Update `README.md` Master Registry with the hierarchical command names.
- [ ] Task: Update `GEMINI.md` and `CONTRIBUTING.md` with new path examples.
- [ ] Task: Perform a final `npm run check` and `npm run package`.
