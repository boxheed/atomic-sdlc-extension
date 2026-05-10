# Specification: Refine Atomic Command Hints

## Goal
Improve the utility of CLI hints for the `/atomic` suite by moving from passive, technical descriptions to action-oriented, value-driven summaries that highlight input/output artifacts.

## Scope
1.  **Master Commands:** Update descriptions for the 6 top-level phases in `commands/atomic/*.toml`.
2.  **Sub-Commands:** Update descriptions for all atomic sub-skills in `commands/atomic/**/*.toml`.

## Success Criteria
- Hints follow the format: `<Action Verb> <Target Artifact> [from <Input Artifacts>]`.
- Master command descriptions clearly state the transformation value (e.g., "Transform raw requirements into SPEC.md").
- All `.toml` files in the `commands/atomic/` tree are reviewed and updated.
