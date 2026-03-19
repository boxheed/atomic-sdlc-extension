#!/bin/bash
# tests/test_package_json.sh

if [ ! -f package.json ]; then
    echo "Error: package.json not found."
    exit 1
fi

# Use node to parse JSON correctly
name=$(node -p "require('./package.json').name")
version=$(node -p "require('./package.json').version")
description=$(node -p "require('./package.json').description")

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

# Extensions check removed as it moved to gemini-extension.json

echo "Success: package.json verification passed."
exit 0
