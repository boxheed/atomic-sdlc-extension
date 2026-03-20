# 📂 `atomic-sdlc`

**A Modular Suite of Gemini CLI Extensions for the Software Development Lifecycle.**

``atomic-sdlc`` is a collection of high-precision, single-responsibility AI agent skills. Unlike "monolithic" AI assistants, these skills are designed to be atomic: they do exactly one thing (e.g., audit a requirement, profile latency, or detect logic flaws) and they do it with strict, machine-readable output.This repository is built to be consumed by Workflow Engines and executed on Remote Workers using the Gemini CLI.

## 🧩 The Atomic Philosophy

Most AI agents fail because they try to do too much, leading to "context drift" and hallucinations. `atomic-sdlc` follows the Single Responsibility Principle:

1. Discrete Context: Every skill only receives the data it needs to perform its specific task.
2. Contract-Bound: All outputs are validated against a JSON Schema before being returned.
3. Stateless & Chainable: Skills are designed to be piped together (e.g., `Audit -> Atomize -> Scaffold`).

## 🏗️ Architecture

1. Workflow Engine: (e.g., Jenkins, GitHub Actions, or a custom engine) orchestrates the sequence of tasks.
2. Worker: A "dumb" execution node with the Gemini CLI installed.
3. Extension: The worker pulls the `atomic-sdlc` extension, which contains the persona (Prompt) and the interface (Command).
4. Gemini CLI: The runtime that executes the skill and validates the handshake.

## 🚀 Quick Start

1. Install Gemini CLI on your WorkerEnsure your worker has the Gemini CLI runtime installed and authenticated.
2. Install the Extension
```Bash
gemini extensions install https://github.com/your-org/`atomic-sdlc`
```
3. Run an Atomic Audit
```Bash
gemini /atomic:audit --requirement "Users should be able to upload a 2MB profile picture."
```

## 🛠️ Available Atomic Skills

| Command | Category | Responsibility |
|---------|----------|----------------|
| `/atomic:analyse` | Design | To review and expand existing requirements |
| `/atomic:architect` | Design | To review requirements and system and propose the technical changes |

## 📦 Extension Structure

Each skill is isolated to prevent dependency rot:

```Plaintext
atomic-sdlc/
├── gemini-extension.json    # Manifest and versioning
├── commands/
│   ├── audit.toml           # CLI argument definitions for /audit
│   └── latency.toml         # CLI argument definitions for /latency
├── prompts/
│   ├── auditor.md           # The "Brain" (System Instructions)
│   └── profiler.md          # The "Brain" (System Instructions)
└── schemas/
    ├── auditor_output.json  # Strict JSON validation contract
    └── latency_output.json  # Strict JSON validation contract
``` 

## 🤝 Contributing

This project thrives on Atomic Contributions. If you want to add a skill:Define a Single Responsibility.Create a Markdown Prompt with a clear persona.Define a JSON Schema for the output.Submit a PR with the new .toml command.