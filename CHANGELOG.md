# Changelog

All notable changes to this project will be documented in this file. See [commit-and-tag-version](https://github.com/absolute-version/commit-and-tag-version) for commit guidelines.

## [0.3.5](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.3.4...v0.3.5) (2026-05-18)

## [0.3.4](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.3.3...v0.3.4) (2026-05-18)


### Features

* **manifest:** explicitly declare commands and policies for better gallery indexing ([05ef03c](https://github.com/boxheed/atomic-sdlc-extension/commit/05ef03cdb2bd787792fc084075db121f0f12527f))

## [0.3.3](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.3.2...v0.3.3) (2026-05-14)


### Bug Fixes

* **gallery:** update policy schema and add extension metadata for gallery indexing ([6caa21c](https://github.com/boxheed/atomic-sdlc-extension/commit/6caa21c0bbe0ddbb598a210cd8a25e73b15598b0))

## [0.3.2](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.3.1...v0.3.2) (2026-05-10)


### Features

* **atomic:** Implement Adaptive Handshake Protocol in design.toml and build.toml ([386f84c](https://github.com/boxheed/atomic-sdlc-extension/commit/386f84ca80d57e8b18ae15efbaf3f77417795524))
* **atomic:** Implement Adaptive Handshake Protocol in discovery.toml (Pilot) ([4467204](https://github.com/boxheed/atomic-sdlc-extension/commit/44672040f2d48a6c72b0d0b414ce53d370f17039))
* **atomic:** Implement Adaptive Handshake Protocol in verify, ship, and ops orchestrators ([04e2d78](https://github.com/boxheed/atomic-sdlc-extension/commit/04e2d78dccafaed5b850c214bf884ec6460bb428))
* **atomic:** Refactor sub-skills for Adaptive Handshake and enhance Strategy 3 ([7da5d44](https://github.com/boxheed/atomic-sdlc-extension/commit/7da5d4426772719f6d3cd97124e49454f2434985))
* **build:** Create nested build commands directory ([07fba22](https://github.com/boxheed/atomic-sdlc-extension/commit/07fba2243b9be3d95ae2d5b2179d5ab8f32ef65c))
* **build:** Create validate command for documentation auditing ([ffaa85b](https://github.com/boxheed/atomic-sdlc-extension/commit/ffaa85b70fe11406a67b1ba82fcb2adb9a873b4b))
* **build:** Move build sub-commands to nested directory ([6cb83da](https://github.com/boxheed/atomic-sdlc-extension/commit/6cb83da7b36c99224e64b4e48a76ae17dba11be2))
* **build:** Rename build sub-commands for clarity ([8c57dca](https://github.com/boxheed/atomic-sdlc-extension/commit/8c57dca6456f831938b6e6718533877d740dd86c))
* **build:** Update Build Master Agent with unified language ([b1d502b](https://github.com/boxheed/atomic-sdlc-extension/commit/b1d502b83c4501c55753ff5c726483b04b1f062b))
* **build:** Update Master Agent to use nested commands and validate verb ([2da45e4](https://github.com/boxheed/atomic-sdlc-extension/commit/2da45e4557695909d28fbe1cd9486835c844e9b0))
* **conductor:** Initialize Hierarchical Master & Workers Refactor track ([aee76e9](https://github.com/boxheed/atomic-sdlc-extension/commit/aee76e93b604b4b3b0db20160e1b45869a4e3174))
* **design:** Create nested design commands directory ([84b9c13](https://github.com/boxheed/atomic-sdlc-extension/commit/84b9c13875d6d154b8e89ec41b8778fd52166446))
* **design:** Move design sub-commands to nested directory ([f836947](https://github.com/boxheed/atomic-sdlc-extension/commit/f83694700706d7b5e0892c6eed84f754d78ae704))
* **design:** Rename design sub-commands for clarity ([86c1723](https://github.com/boxheed/atomic-sdlc-extension/commit/86c1723e24ed8dac0d32f583abb38bd772975773))
* **design:** Standardize artifact names to DESIGN_[RESULT] ([367445a](https://github.com/boxheed/atomic-sdlc-extension/commit/367445a4b41bd24b317dbde520e4a1f288de818c))
* **design:** Update Design Master Agent with unified language ([0cfb3f9](https://github.com/boxheed/atomic-sdlc-extension/commit/0cfb3f9deec0cca12260b50f7678fa999b1140a4))
* **design:** Update Master Agent to call nested commands ([3467aeb](https://github.com/boxheed/atomic-sdlc-extension/commit/3467aeb38bc92e03eefe653dc8c03d2d96a9b0ca))
* **discovery:** Create Discovery Master Agent dispatcher ([2892591](https://github.com/boxheed/atomic-sdlc-extension/commit/2892591da066478d53769a9fde72c8e955ad575d))
* **discovery:** Create nested discovery commands directory ([eb7fa2e](https://github.com/boxheed/atomic-sdlc-extension/commit/eb7fa2e259919eeff4b9dfeadf3cbc1a7e5a49dd))
* **discovery:** Implement Verb-Routing logic ([473e07b](https://github.com/boxheed/atomic-sdlc-extension/commit/473e07b3a3249494de013abb4503a9419a543042))
* **discovery:** Integrate Artifact Discovery for standard paths ([0112d97](https://github.com/boxheed/atomic-sdlc-extension/commit/0112d975f91b7f984157a10fdc2330cc5c577023))
* **discovery:** Move discovery sub-commands to nested directory ([919f5e2](https://github.com/boxheed/atomic-sdlc-extension/commit/919f5e248affd933a92ad12473666b7f7cab7af3))
* **discovery:** Rename discovery sub-commands for clarity ([38eab8b](https://github.com/boxheed/atomic-sdlc-extension/commit/38eab8b6c87954c4ec84ba7b02c875129ea8641d))
* **discovery:** Standardize artifact names to DISCOVERY_[RESULT] ([1680793](https://github.com/boxheed/atomic-sdlc-extension/commit/1680793b0c92c50b52fa662a51675327ba87002b))
* **discovery:** Update Discovery Master Agent with unified language ([1a4996e](https://github.com/boxheed/atomic-sdlc-extension/commit/1a4996e5eff248fce6825ea39332548aa3010299))
* **discovery:** Update Master Agent to call nested commands ([b37c1d3](https://github.com/boxheed/atomic-sdlc-extension/commit/b37c1d360988f1a1689058728ad156fcb34f6997))
* **hierarchy:** Create nested directories for verify, ship, and ops commands ([99d8aab](https://github.com/boxheed/atomic-sdlc-extension/commit/99d8aab558fade3bed8c6b397f6c818321d99dc7))
* **hierarchy:** Move format-md to utility subdirectory ([11796fc](https://github.com/boxheed/atomic-sdlc-extension/commit/11796fc1191518a891d94b586856620e41100de7))
* **hierarchy:** Move remaining sub-commands to nested directories ([dfe8ba6](https://github.com/boxheed/atomic-sdlc-extension/commit/dfe8ba63c07d3af2eed75116657f97dcdedebae7))
* **hierarchy:** Update remaining Master Agents to call nested commands ([3487032](https://github.com/boxheed/atomic-sdlc-extension/commit/3487032785032a99ba6ffffaa0a48a21eb2eb775))
* **master-agents:** Implement Master Agents for Design, Build, Verify, Ship, and Ops ([5f14dfa](https://github.com/boxheed/atomic-sdlc-extension/commit/5f14dfa4d9ca5ce4963e7f16268ac15b8c5121dd))
* **ops:** Rename ops sub-commands for clarity ([aa3f113](https://github.com/boxheed/atomic-sdlc-extension/commit/aa3f113ddc1bd0e8cfca58d766d3eaa17038c693))
* **ops:** Update Ops Master Agent with unified language ([90db256](https://github.com/boxheed/atomic-sdlc-extension/commit/90db256811a706b100f4bba9be73c8654a42fca6))
* **orchestration:** Update Master Agent heuristics and descriptions for standardized artifacts ([03897af](https://github.com/boxheed/atomic-sdlc-extension/commit/03897afa99fcf4ed8bd2e454e997b6358fa5a723))
* **restructure:** Update build/verify artifacts to use sdlc/ folder ([e3ee471](https://github.com/boxheed/atomic-sdlc-extension/commit/e3ee4714c8d81bbf4f980066613d0b8393d2894b))
* **restructure:** Update design artifacts to use sdlc/ folder ([d52390c](https://github.com/boxheed/atomic-sdlc-extension/commit/d52390c40cef0922092699708aed7008de9e773c))
* **restructure:** Update discovery artifacts to use sdlc/ folder ([b25b3e7](https://github.com/boxheed/atomic-sdlc-extension/commit/b25b3e769f9fbc5a580abe2688389f85d1289226))
* **restructure:** Update ship/ops artifacts to use sdlc/ folder ([41f1a51](https://github.com/boxheed/atomic-sdlc-extension/commit/41f1a51a1b928f41e667ade21a5f985da3864b08))
* **security:** Harden manifest with excludeTools nuclear block ([747093c](https://github.com/boxheed/atomic-sdlc-extension/commit/747093c6099d84509d334514605435d3ab5eb2bf))
* **security:** Implement pragmatic Git and artifact safety policies ([49ac5b3](https://github.com/boxheed/atomic-sdlc-extension/commit/49ac5b3ef9676a32f3e5221df19191b8b40ac83e))
* **ship:** Rename ship sub-commands for clarity ([671cd68](https://github.com/boxheed/atomic-sdlc-extension/commit/671cd688efe3cc28e02f17be3680decd0f073682))
* **ship:** Update Ship Master Agent with unified language ([d44d8f2](https://github.com/boxheed/atomic-sdlc-extension/commit/d44d8f2e6395117ac29b13e28c1252b6e23e143d))
* **skills:** Refactor skills to support Artifact-First context ingestion ([a4488a7](https://github.com/boxheed/atomic-sdlc-extension/commit/a4488a793b01b3542cd11c7b6672dae872df894d))
* **standardization:** Standardize BUILD, VERIFY, SHIP, and OPS artifact names ([24c911d](https://github.com/boxheed/atomic-sdlc-extension/commit/24c911d99706e0e9897d86c5218ceb62740b9998))
* **tooling:** Implement TOML linting for command definitions ([357c194](https://github.com/boxheed/atomic-sdlc-extension/commit/357c1943fbb3d2db3c61e57fedad96a4a7c8f307))
* **ux:** Implement Next Agent meta-skill (Strategy 4) ([f9beb41](https://github.com/boxheed/atomic-sdlc-extension/commit/f9beb412c2b64b377725331eb9b5ec23f4896d8b))
* **verify:** Rename verify sub-commands for clarity ([78d2b22](https://github.com/boxheed/atomic-sdlc-extension/commit/78d2b2228ab1d4945e4138e5f8e1dacf00d03913))
* **verify:** Update Verify Master Agent with unified language ([c90ada7](https://github.com/boxheed/atomic-sdlc-extension/commit/c90ada733fc5c9226076fa360b4a498d60941b1d))


### Bug Fixes

* **conductor:** Apply review suggestions for track 'Refine Atomic Command Hints & Master Descriptions' ([da0e260](https://github.com/boxheed/atomic-sdlc-extension/commit/da0e2609f619c0f7cd1bd7dac1fdfc464b12927e))
* corrected inconsistencies in /skills references ([98bb12f](https://github.com/boxheed/atomic-sdlc-extension/commit/98bb12f73fe0632401857ff915f1b3e6c4b666fe))
* removed some extensions ([1e76e87](https://github.com/boxheed/atomic-sdlc-extension/commit/1e76e8707532a455452cb55169f5c30721d757dd))

### [0.3.1](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.3.0...v0.3.1) (2026-03-26)

## [0.3.0](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.16...v0.3.0) (2026-03-26)


### ⚠ BREAKING CHANGES

* added missing agent and removed the deprecated ones

### Bug Fixes

* added missing agent and removed the deprecated ones ([5580bed](https://github.com/boxheed/atomic-sdlc-extension/commit/5580bedb03f02d629858f0c24828297a9bcb3051))

### [0.2.16](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.15...v0.2.16) (2026-03-26)

### [0.2.15](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.14...v0.2.15) (2026-03-26)


### Features

* added diagnose, retrospect and telemetry agents ([11a342b](https://github.com/boxheed/atomic-sdlc-extension/commit/11a342b6be3de2980c05743e0ac5b86e108c5b33))

### [0.2.14](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.13...v0.2.14) (2026-03-26)


### Features

* added pipeline, harden and provision agents ([81a87e8](https://github.com/boxheed/atomic-sdlc-extension/commit/81a87e85245a13937efa9f4784d1f55684b95d79))

### [0.2.13](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.12...v0.2.13) (2026-03-26)


### Features

* added integrate and refactor agents ([f861bfc](https://github.com/boxheed/atomic-sdlc-extension/commit/f861bfc3560f1677cec31390cd743684cd8f5cdf))

### [0.2.12](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.11...v0.2.12) (2026-03-25)


### Features

* verify ([5a1f734](https://github.com/boxheed/atomic-sdlc-extension/commit/5a1f73447827410b8047b97f8392fc81fb538667))

### [0.2.11](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.10...v0.2.11) (2026-03-25)


### Features

* added edge case agent ([cf6dc0b](https://github.com/boxheed/atomic-sdlc-extension/commit/cf6dc0b76531bf64490cab0fb87bcba057081649))
* added nfr verifier ([5a5e02f](https://github.com/boxheed/atomic-sdlc-extension/commit/5a5e02f60a2a7daf379f091e5d81db47a27c1f56))
* added scrutinize agent to review the tests ([6705d3d](https://github.com/boxheed/atomic-sdlc-extension/commit/6705d3dc66c5076fa0e2baac8e19c0274cf34804))
* creates and updates unit tests ([adb0fcc](https://github.com/boxheed/atomic-sdlc-extension/commit/adb0fcc751ac4020e1efee6b961ffdaed913c477))

### [0.2.10](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.9...v0.2.10) (2026-03-25)


### Features

* added code change and documentation verification task ([dd03f88](https://github.com/boxheed/atomic-sdlc-extension/commit/dd03f8823396cab6044fae2c2e10f1ab66040b4b))
* code author agent ([d1a19f8](https://github.com/boxheed/atomic-sdlc-extension/commit/d1a19f8fccd35af2a288c3454bc06cde06084606))
* code reviewer agent ([cf96f47](https://github.com/boxheed/atomic-sdlc-extension/commit/cf96f4745fe288c8b95349b9db303586dad43fbd))

### [0.2.9](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.8...v0.2.9) (2026-03-25)


### Features

* UX Critique agent ([6faa0c0](https://github.com/boxheed/atomic-sdlc-extension/commit/6faa0c0d2ba22699e837dd77abe198b43d799816))

### [0.2.8](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.7...v0.2.8) (2026-03-25)


### Features

* architecture evaluation agent ([72d8ca4](https://github.com/boxheed/atomic-sdlc-extension/commit/72d8ca44c039baf200b0cae46f4f038f331e92c2))
* ux agent ([3017de3](https://github.com/boxheed/atomic-sdlc-extension/commit/3017de3d09d6062030e12d284ead16742d68c33d))

### [0.2.7](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.6...v0.2.7) (2026-03-25)


### Features

* added schema agent for database designs ([5198203](https://github.com/boxheed/atomic-sdlc-extension/commit/5198203a0536dfc89a759b4555ade3def3380b96))

### [0.2.6](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.5...v0.2.6) (2026-03-25)


### Features

* added on the architectural blueprint agent ([e726444](https://github.com/boxheed/atomic-sdlc-extension/commit/e726444ac27ee1841fb1fcb7d9ef640f316bb412))
* agent to create swagger docs from specifications ([5d39222](https://github.com/boxheed/atomic-sdlc-extension/commit/5d392227fb6d68b1e5d1a9fe537778136b8ed0b2))

### [0.2.5](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.4...v0.2.5) (2026-03-25)

### [0.2.4](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.3...v0.2.4) (2026-03-25)


### Features

* added a requirements audit agent ([413489a](https://github.com/boxheed/atomic-sdlc-extension/commit/413489a68f7d369d88443e6199a897a0790f0a3a))

### [0.2.3](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.2...v0.2.3) (2026-03-25)


### Features

* implemented the criteria agent ([8fd5049](https://github.com/boxheed/atomic-sdlc-extension/commit/8fd5049186f561cb11706c3cbab7320f07833018))

### [0.2.2](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.1...v0.2.2) (2026-03-25)


### Features

* implemented story creation breakdown (atomize) ([b0ae522](https://github.com/boxheed/atomic-sdlc-extension/commit/b0ae522203a0edfa7aa1f26935e3d9e87e6b26b4))

### [0.2.1](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.2.0...v0.2.1) (2026-03-25)


### Features

* implemented a non function constraint agent ([2fbe805](https://github.com/boxheed/atomic-sdlc-extension/commit/2fbe805a1a6c614e0ec897e9e29b51f74c12636e))

## [0.2.0](https://github.com/boxheed/atomic-sdlc-extension/compare/v0.1.1...v0.2.0) (2026-03-25)


### ⚠ BREAKING CHANGES

* changed the name of the extension from atomic to atomic-sdlc

### Features

* changed the name of the extension from atomic to atomic-sdlc ([4db9b95](https://github.com/boxheed/atomic-sdlc-extension/commit/4db9b95194d0e6b5db7a6aea890151cc5dff8720))

### 0.1.1 (2026-03-25)


### Features

* added a formatter to take json input and convert it to a markdown report ([7516b22](https://github.com/boxheed/atomic-sdlc-extension/commit/7516b22d7f5548e6272efce5ef51eb9022e70a67))
* added an agent that consolidates the output from multiple agents ([ae9ec07](https://github.com/boxheed/atomic-sdlc-extension/commit/ae9ec0779572442a7f86d551b6a68ab1016fb57b))
* added the elicit command ([cc5a03a](https://github.com/boxheed/atomic-sdlc-extension/commit/cc5a03a54ea218d170051e0832516d931df03887))
* architect skill ([be8f96e](https://github.com/boxheed/atomic-sdlc-extension/commit/be8f96ec8909ca5e1f5a95115ec25a648394ab1f))
* **compat:** create package.json for installation compatibility ([cdb0f14](https://github.com/boxheed/atomic-sdlc-extension/commit/cdb0f14d464ae83dc216bc6042c8f6ae1c9f9d47))
* **core:** Create template for high-precision, atomic skill ([4d4862d](https://github.com/boxheed/atomic-sdlc-extension/commit/4d4862d19727ea734ac1810903635394a4cded07))
* **core:** Define extension's directory structure ([d732186](https://github.com/boxheed/atomic-sdlc-extension/commit/d7321868d2c214f81b3b960b67cb9e0bddb4faa4))
* **core:** Implement core 'gemini-suite' command namespace ([c09ed6e](https://github.com/boxheed/atomic-sdlc-extension/commit/c09ed6e1bbfef1dab89f6211f08dca7522fbc141))
* **discovery:** Develop the 'gemini-suite list' command ([f003f1c](https://github.com/boxheed/atomic-sdlc-extension/commit/f003f1c502876d925edb3e5ab530a4418ac4e0a3))
* **discovery:** Ensure correct metadata handling in 'list' command ([d33f4d0](https://github.com/boxheed/atomic-sdlc-extension/commit/d33f4d0d5fbe03a3bfa3745cbb2e7714bd42d3d3))
* **discovery:** Implement dynamic skill scanner ([fd68537](https://github.com/boxheed/atomic-sdlc-extension/commit/fd685372955af2506a20bc4a0ddd993889230054))
* first attempt at a command ([9e5af96](https://github.com/boxheed/atomic-sdlc-extension/commit/9e5af96920b9e92f5496d5d34348f4aebd9053ee))
* first skill - analyse ([72d7310](https://github.com/boxheed/atomic-sdlc-extension/commit/72d731054d63bbb5e4de2a8fdcee8f8a3e4ffa9a))
* implementing build pipeline for taagging and releasing ([99f898f](https://github.com/boxheed/atomic-sdlc-extension/commit/99f898fcd6fc89bf031aed8e344f9a056ee628fe))
* initial commit for repository ([877586e](https://github.com/boxheed/atomic-sdlc-extension/commit/877586e09e1acdfc3e2083ed6ba9d9387f1dbbf9))
* **manifest:** create gemini-extension.json manifest ([462f451](https://github.com/boxheed/atomic-sdlc-extension/commit/462f451ae937eee002afab822dbb34d792729384))
* tightened up the agent specification ([2753dc9](https://github.com/boxheed/atomic-sdlc-extension/commit/2753dc9ba080e5619cdd12f010eeeea82d2fa5b3))


### Bug Fixes

* added in check script for the pipeline ([80394b5](https://github.com/boxheed/atomic-sdlc-extension/commit/80394b56276055774c9f3452bbc7b70ded5c008a))
* **conductor:** Apply review suggestions for track 'gemini extension commandline installation compatibility' ([b2f03b2](https://github.com/boxheed/atomic-sdlc-extension/commit/b2f03b2fe5edcdc27698e1a8f061bac3dc5231bf))
