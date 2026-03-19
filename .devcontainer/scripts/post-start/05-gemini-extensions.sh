#!/bin/bash
set -e
gemini extensions install https://github.com/github/github-mcp-server --consent || true
gemini extensions install https://github.com/gemini-cli-extensions/conductor --consent || true
gemini extensions install https://github.com/gemini-cli-extensions/nanobanana --consent || true
gemini extensions install https://github.com/gemini-cli-extensions/code-review --consent || true
gemini extensions install https://github.com/gemini-cli-extensions/jules --consent || true
gemini extensions install https://github.com/gemini-cli-extensions/ralph --consent || true