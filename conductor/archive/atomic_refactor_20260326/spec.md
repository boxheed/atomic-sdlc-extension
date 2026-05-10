# Specification: Refactor atomic-sdlc to Phase-Based Namespacing and Artifact Discovery

## Goal
The goal of this track is to improve the usability and discoverability of the `atomic-sdlc` suite by grouping its 30+ skills into 6 logical "Master Agents" (Namespacing) and making these agents aware of standard project artifacts (Artifact Discovery).

## Scope
- **6 Master Agents:** Discovery, Design, Build, Verify, Ship, Ops.
- **Master Agent Logic:** Dispatchers that can route sub-commands (verbs) and infer missing context paths.
- **Migration Path:** Updating existing `.toml` definitions to support hierarchical calls.
- **Artifact Discovery:** Logic for automatically locating standard files like `SPEC.md`, `ARCH.md`, `README.md`, etc.

## Non-Goals
- Changing the internal logic or prompts of the 30+ individual skills.
- Introducing persistent state or shared memory across agents.
- Modifying the underlying Gemini CLI framework.

## Acceptance Criteria
- [ ] Users can call skills using the new namespace (e.g., `/atomic:discovery audit`).
- [ ] Agents can execute without manual path arguments if standard artifacts exist in the workspace.
- [ ] The Master Registry in `README.md` and `GEMINI.md` reflects the new hierarchy.
- [ ] All machine-to-machine JSON handshakes between agents remain unchanged.
- [ ] The CLI `/help` command is uncluttered and clear.
