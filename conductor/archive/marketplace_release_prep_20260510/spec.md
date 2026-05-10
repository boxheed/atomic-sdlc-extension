# Specification: Marketplace Release Readiness

## Goal
Prepare the `atomic-sdlc` repository for official listing on the Gemini CLI Marketplace by enforcing pragmatic safety gates and validating command integrity.

## Safety & Security Policies

### 1. The Git Guard (`policies/git_safety.toml`)
Require manual confirmation for:
- `git push` (Remote state changes)
- `git reset --hard` (Local work destruction)

### 2. The Artifact Guard (`policies/artifact_safety.toml`)
Require manual confirmation for:
- Overwriting `sdlc/DISCOVERY_SPEC.md`
- Overwriting `sdlc/DESIGN_ARCH.md`

### 3. The Nuclear Block (`gemini-extension.json`)
Explicitly exclude the following "Nuclear" commands via `excludeTools`:
- **System Control:** `shutdown`, `reboot`, `halt`
- **Service Disruption:** `systemctl stop`, `systemctl restart`, `systemctl disable`, `service stop`, `service restart`
- **Root Escalation:** `sudo`
- **Destructive IO:** `rm -rf /`, `rm -rf /*`, `mkfs*`, `dd if=*`
- **Permission Hijacking:** `chmod 777`

## Validation & Quality
- **Command Linting:** Add a `lint:toml` script to `package.json` to ensure all TOML command definitions are valid.
- **Marketplace Polish:** Finalize `README.md` with branding and "Phase-Result" convention details.
