# Track Specification: Gemini Extension Commandline Installation Compatibility

## Objective
Make the project compatible with the `gemini extension install` command by creating a `package.json` file. This will allow the project to be installed as a standard Gemini CLI extension.

## Core Requirements
- **Create `package.json`:** Generate a `package.json` file in the root directory.
- **Package Name:** The name of the package shall be `atomic-sdlc`.
- **Version:** The initial version shall be `0.1.0`.
- **Description:** The description shall be "A modular suite of high-precision, atomic AI agent skills for the SDLC".
- **Gemini Extension Entrypoint:** The `package.json` must contain an `extensions` field pointing to the `config/extension.yaml` file.

## Acceptance Criteria
- The project can be successfully installed using `gemini extension install .` from the root directory.
- After installation, the `/atomic` command and its sub-commands are available and functional in the Gemini CLI.

## Out of Scope
- This track does not include publishing the package to any public or private registry.
- This track does not involve any changes to the existing extension logic, only the packaging.
