# Plan: Marketplace Release Readiness

## Phase 1: Pragmatic Security Gates

### [x] Task 1.1: Implement Policy Guardrails (49ac5b3)
- Create `policies/git_safety.toml`
- Create `policies/artifact_safety.toml`

### [x] Task 1.2: Manifest Hardening (747093c)
- Update `gemini-extension.json` with the `excludeTools` nuclear block.

## Phase 2: Tooling & Validation

### [x] Task 2.1: Implement TOML Linting (357c194)
- Add `lint:toml` script to `package.json` using a standard TOML validator.
- Verify all `commands/atomic/` files pass.

### [x] Task 2.2: Package Optimization (255d99f)
- Ensure `package` script in `package.json` correctly excludes development-only artifacts.

## Phase 3: Marketplace Metadata

### [x] Task 3.1: Finalize README.md (d6bc901)
- Update `README.md` with "Senior Engineering" persona and the standardized `sdlc/` directory structure.

### [x] Task 3.2: Tagging & Versioning (verified)
- Sync `version` across `package.json` and `gemini-extension.json`.

## Success Criteria
- [ ] No nuclear system commands are accessible to the agent.
- [ ] Git pushes and Spec overwrites require manual confirmation.
- [ ] All TOML command definitions pass syntax validation.
- [ ] Marketplace crawler can discover the extension via GitHub topics (manual step).
