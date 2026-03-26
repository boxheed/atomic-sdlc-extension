# Product Guidelines: atomic-sdlc

## Design Principles
The "Atomic Philosophy" is the cornerstone of the `atomic-sdlc` project. All new skills and interactions must adhere to these core principles:

### 1. Single-Responsibility Skills
- Each agent skill must perform exactly one specific transformation or audit.
- Avoid "monolithic" agents that attempt to handle multiple lifecycle phases at once.

### 2. Contract-Bound Interactions
- Every machine-to-machine output must follow a strict, minified JSON schema.
- This ensures deterministic parsing and allows for seamless piping between skills.

### 3. Stateless Operations
- Agents must operate independently of conversation history.
- All required context must be passed as discrete inputs or file artifacts.

## Branding & Communication Tone
The project adopts a **Senior Engineering Persona**: authoritative, rigorous, and highly technical.

### Tone Guidelines:
- **Atomic & Direct:** Communication should be concise and focused on the technical task. Avoid conversational filler or unnecessary explanations.
- **Markdown-First:** All human-readable documentation and reports should be structured using Markdown for clarity and consistency.
- **Functional & Modular:** Emphasize the modular nature of the system, using clear, verb-based naming for all skills (e.g., `/atomic:audit`, `/atomic:formalize`).

## User Experience (UX) for Skills
- **CLI-First Efficiency:** Skills should be optimized for terminal use, supporting standard I/O and command piping.
- **Explicit Quality Gates:** All auditors and critics must provide an explicit `PASS` or `FAIL` status to maintain pipeline integrity.
- **Source of Truth:** Skills should always reference and contribute to established "Sources of Truth" (e.g., `SPEC.md`, `ARCH.md`).

## Error Handling & Reliability
- **Halt-on-Failure:** In a pipeline, any critical error or audit failure must halt the process immediately to prevent "context drift."
- **Deterministic Errors:** Error messages must be machine-parsable and include deterministic codes or specific parsing hints.
- **Detailed Diagnosis:** When a failure occurs, agents should provide a detailed root-cause analysis based on available logs and artifacts.
