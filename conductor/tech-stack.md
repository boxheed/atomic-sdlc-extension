# Technology Stack

## Extension and Skill Architecture
The suite is built as a modular collection of Gemini CLI extensions and atomic skills.
- **Skill Definitions:** Primarily authored in `SKILL.md` (Markdown) for human readability and rich instruction support.
- **Extension Metadata:** Managed via `package.json` for installation and `config/extension.yaml` for tool definitions and command routing.

## Prompt Engineering Strategy
A standardized approach to prompting ensures consistency and high precision across all skills:
- **Chain-of-Thought (CoT):** Prompts are structured to encourage step-by-step reasoning before task execution.
- **Few-Shot Prompting:** Skills include high-quality examples to guide the AI's output format and technical style.
- **Role-Based Instruction:** Each skill defines a clear persona and strict operational boundaries for security and intent alignment.

## Validation and Quality Assurance
To maintain a high standard of accuracy and safety, the following tools and processes are employed:
- **Automated Prompt Evaluation:** Utilizing frameworks like `Promptfoo` to test prompt quality, prevent regressions, and verify model alignment.
- **CLI Integration Testing:** Automated shell script scenarios to verify the end-to-end behavior of extensions within the Gemini CLI.
- **Security and Quality Audits:** A rigorous manual review process for all prompt logic, focusing on security (PII protection, injection prevention) and technical integrity.

## Development and Distribution
- **Version Control:** Managed as a Git-based repository, allowing for granular tracking of prompt changes and configuration updates.
- **Distribution:** Distributed via a version-controlled repository (Git), enabling users to easily clone, update, and contribute to the suite.
