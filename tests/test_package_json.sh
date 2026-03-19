#!/bin/bash
# tests/test_package_json.sh

if [ ! -f package.json ]; then
    echo "Error: package.json not found."
    exit 1
fi

name=$(grep '"name":' package.json | sed -E 's/.*: "(.*)".*/\1/')
version=$(grep '"version":' package.json | sed -E 's/.*: "(.*)".*/\1/')
description=$(grep '"description":' package.json | sed -E 's/.*: "(.*)".*/\1/')
extension_path=$(grep '"extensions":' -A 1 package.json | tail -n 1 | sed -E 's/.*: "(.*)".*/\1/')

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

if [ "$extension_path" != "config/extension.yaml" ]; then
    echo "Error: Incorrect extensions path '$extension_path'. Expected 'config/extension.yaml'."
    exit 1
fi

echo "Success: package.json verification passed."
exit 0
