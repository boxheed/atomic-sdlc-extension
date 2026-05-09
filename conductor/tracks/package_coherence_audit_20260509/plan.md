# Implementation Plan: Package Coherence Audit & Cleanup

## Phase 1: Core Configuration Fix
This phase focuses on fixing the broken build process.

- [x] Task: Update `package.json` to remove the `skills/` reference from the `package` script. a26371b
- [ ] Task: Verify that `npm run package` successfully generates `extension.zip`.

## Phase 2: Documentation Alignment
This phase ensures that the project's documentation matches its implementation.

- [ ] Task: Audit and update `README.md` for stale `skills/` references and architecture descriptions.
- [ ] Task: Audit and update `GEMINI.md` for stale `skills/` references.
- [ ] Task: Audit and update `CONTRIBUTING.md` for stale `skills/` references.

## Phase 3: Final Verification
Final check of the project's health.

- [ ] Task: Run `npm run check` to ensure no other regression or linting issues.
