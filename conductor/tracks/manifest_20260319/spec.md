# Track Specification: Create gemini-extension.json Manifest

## Objective
Create a `gemini-extension.json` file as the primary manifest for the Gemini CLI extension, adhering to the official specification. This will replace the reliance on the `extensions` field in `package.json`.

## Core Requirements
- **Create `gemini-extension.json`:** Generate the manifest file in the root directory.
- **Fields:**
    - `name`: `atomic-sdlc`
    - `version`: `0.1.0` (synchronize with `package.json`)
    - `description`: "A modular suite of high-precision, atomic AI agent skills for the SDLC"
    - `contextFileName`: `GEMINI.md` (if we have one, otherwise default)
    - `commands`: Define the `/atomic` command.
- **Deprecate `package.json` extension field:** Remove the `extensions` field from `package.json` as it is no longer the primary manifest for Gemini CLI.

## Acceptance Criteria
- `gemini-extension.json` exists and is valid JSON.
- `gemini extension install .` works using the new manifest.
- The `/atomic` command is correctly registered.

## Out of Scope
- Migrating skills to MCP servers (this will be a separate track if needed).
- Changing the existing command logic in `config/extension.yaml`.
