# Product Guidelines

## Prose Style
Documentation and AI-generated content must be **highly technical and precise**. Use structured language and precise terminology to describe tasks and outcomes. Maintain grammatical accuracy and consistent casing for all technical terms (e.g., "SDLC," "Gemini CLI," "API").

## Branding and Naming
- **Command Names:** All commands within the suite must use kebab-case (e.g., `/atomic <command>`).
- **Consistency:** Ensure consistent naming across all extensions and atomic skills.
- **Standardized Terms:** Adhere strictly to the established terminology of the project and the Gemini CLI ecosystem.

## UX Principles
- **Transparency First:** Always provide a clear explanation of what the AI agent is doing and the rationale behind its actions. The user should never be in the dark about the system's intent.
- **Maximum Efficiency:** Strive to minimize unnecessary turns and tool calls. Each interaction should be purposeful and move the task forward.
- **Accuracy and Safety:** Prioritize accuracy and reliability over speed. When performing complex or high-impact operations, the system must ask for user confirmation and provide a clear path for review.

## Error Handling
- **Actionable Error Messages:** When a task fails or an error occurs, provide short, clear, and actionable advice on how to resolve the issue.
- **Clarity over Complexity:** Avoid overly verbose or cryptic technical jargon unless it directly contributes to the user's ability to fix the problem.
