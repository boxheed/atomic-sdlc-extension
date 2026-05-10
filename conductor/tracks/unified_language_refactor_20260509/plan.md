# Implementation Plan: Unified Language & Intuitive Naming Refactor

## Phase 1: Discovery & Design Rename [checkpoint: dc10ba0]
Rename sub-commands for the first two phases and update orchestrators.

- [x] Task: Rename discovery sub-commands: `elicit`->`extract`, `constrain`->`limits`, `formalize`->`spec`, `atomize`->`slice`. 38eab8b
- [x] Task: Update `commands/atomic/discovery.toml` logic and descriptions. 1a4996e
- [x] Task: Rename design sub-commands: `blueprint`->`architect`, `evaluate`->`audit`, `inspect`->`audit-ux`, `interface`->`api`, `schema`->`data`, `layout`->`ui`. 86c1723
- [x] Task: Update `commands/atomic/design.toml` logic and descriptions. 0cfb3f9

## Phase 2: Build & Verify Rename
Rename sub-commands for implementation and testing phases.

- [ ] Task: Rename build sub-commands: `author`->`write`, `review`->`audit`, `validate`->`audit-docs`, `document`->`docs`.
- [ ] Task: Update `commands/atomic/build.toml` logic and descriptions.
- [ ] Task: Rename verify sub-commands: `test`->`write`, `scrutinize`->`audit`, `probe`->`stress`.
- [ ] Task: Update `commands/atomic/verify.toml` logic and descriptions.

## Phase 3: Ship & Ops Rename
Rename sub-commands for deployment and maintenance phases.

- [ ] Task: Rename ship sub-commands: `pipeline`->`cicd`, `harden`->`secure`, `provision`->`infra`.
- [ ] Task: Update `commands/atomic/ship.toml` logic and descriptions.
- [ ] Task: Rename ops sub-commands: `telemetry`->`monitor`, `diagnose`->`analyze`, `retrospect`->`post-mortem`.
- [ ] Task: Update `commands/atomic/ops.toml` logic and descriptions.

## Phase 4: Documentation & Final Polish
Update all project documentation and verify the build.

- [ ] Task: Update `README.md` Master Registry with new names.
- [ ] Task: Update `GEMINI.md` and `CONTRIBUTING.md`.
- [ ] Task: Final `npm run check` and verification.
