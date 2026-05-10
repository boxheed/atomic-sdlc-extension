# Specification: Migrate Versioning Tool to commit-and-tag-version

## Goal
The goal of this track is to replace the deprecated and unmaintained `standard-version` package with its community-maintained fork, `commit-and-tag-version`. This will resolve existing security vulnerabilities in the build-time dependency tree and ensure the project uses a modern, supported tool for automated versioning and changelog generation.

## Scope
- **Dependency Update:** Uninstall `standard-version` and install `commit-and-tag-version`.
- **Script Update:** Update the `release` script in `package.json` to use the new command.
- **Documentation Update:** Update `tech-stack.md` and any other references to the versioning tool.
- **Configuration:** Ensure existing `.versionrc.json` is respected by the new tool.

## Non-Goals
- Changing the versioning strategy (semver).
- Changing the changelog format.
- Introducing full CI/CD automation (e.g., `release-please`).

## Acceptance Criteria
- [ ] `standard-version` is removed from `devDependencies`.
- [ ] `commit-and-tag-version` is added to `devDependencies`.
- [ ] `npm run release -- --dry-run` executes successfully and produces the expected output.
- [ ] `tech-stack.md` correctly lists the new tool.
- [ ] Existing `.versionrc.json` configuration remains functional.
