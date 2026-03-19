#!/bin/bash
# Scan a directory for skills and their metadata

SKILLS_DIR=$1

# Find all directories in the skills directory that contain a metadata.json file
find "$SKILLS_DIR" -maxdepth 2 -name "metadata.json" -printf '%h\n' | xargs -n 1 basename
