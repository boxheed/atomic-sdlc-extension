#!/bin/bash
# tests/test_gemini_extension_json.sh

if [ ! -f gemini-extension.json ]; then
    echo "Error: gemini-extension.json not found."
    exit 1
fi

# Use node to parse JSON correctly
name=$(node -p "require('./gemini-extension.json').name")
version=$(node -p "require('./gemini-extension.json').version")
description=$(node -p "require('./gemini-extension.json').description")

if [ "$name" != "atomic-sdlc" ]; then
    echo "Error: Incorrect name '$name'. Expected 'atomic-sdlc'."
    exit 1
fi

if [ "$version" != "0.1.0" ]; then
    echo "Error: Incorrect version '$version'. Expected '0.1.0'."
    exit 1
fi

if [[ "$description" != *"A modular suite of high-precision, atomic AI agent skills for the SDLC"* ]]; then
    echo "Error: Incorrect description '$description'."
    exit 1
fi

echo "Success: gemini-extension.json verification passed."
exit 0
