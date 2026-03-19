# Track Implementation Plan: Update Command to /atomic

## Phase 1: Core Configuration and Documentation Update

- [x] Task: Update the command namespace in `config/extension.yaml` from `gemini-suite` to `/atomic`. (240c638)
- [x] Task: Systematically replace all occurrences of `gemini-suite` with `/atomic` in `product.md`. (03b0cc2)
- [x] Task: Systematically replace all occurrences of `gemini-suite` with `/atomic` in `tech-stack.md`. (03b0cc2)
- [x] Task: Systematically replace all occurrences of `gemini-suite` with `/atomic` in `product-guidelines.md`. (6163b76)
- [ ] Task: Conductor - User Manual Verification 'Core Update' (Protocol in workflow.md)

## Phase 2: Scripts and Tests Refactoring

- [ ] Task: Update all existing scripts (e.g., `scan_skills.sh`, `list_skills.sh`) to use the new command name if necessary.
- [ ] Task: Refactor all automated test cases and verification scripts to reflect the change to `/atomic`.
- [ ] Task: Conductor - User Manual Verification 'Scripts and Tests' (Protocol in workflow.md)

## Phase 3: Final Integration and Validation

- [ ] Task: Perform a full run of the automated test suite to verify the name change.
- [ ] Task: Manually verify the discovery command using the new `/atomic` namespace.
- [ ] Task: Conductor - User Manual Verification 'Final Validation' (Protocol in workflow.md)
