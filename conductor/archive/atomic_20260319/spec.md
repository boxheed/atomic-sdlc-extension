# Track Specification: Update Command to /atomic

## Objective
Rename the core command namespace for the modular suite of Gemini CLI extensions from `gemini-suite` to `/atomic`. This change will unify the project's branding with its core goal of providing high-precision, atomic AI agent skills.

## Core Features
- **Namespace Rename:** Update the primary command name in `config/extension.yaml` from `gemini-suite` to `/atomic`.
- **Documentation Update:** Systematically update all project-level documentation, including `product.md`, `tech-stack.md`, and `product-guidelines.md`, to reflect the new command namespace.
- **Script and Test Refactoring:** Update all existing scripts (e.g., `scan_skills.sh`, `list_skills.sh`) and automated tests to use the new command.

## User Experience (UX)
- **Clear Branding:** The new command namespace `/atomic` provides a more concise and branding-aligned experience for users.
- **Breaking Change:** The previous `gemini-suite` command namespace will no longer be available, ensuring a clean and consistent command interface.

## Technical Design
- **Configuration Update:** The `name` field in `config/extension.yaml` will be modified to `/atomic`.
- **Global Search and Replace:** All occurrences of `gemini-suite` across the codebase (including within strings and documentation) will be updated to `/atomic`.
- **Validation:** Rerun the automated test suite and manual verification steps to ensure the name change is fully integrated and functional.

## Out of Scope
- This track is focused solely on the command name change and does not include adding new skills or modifying the core discovery logic.
