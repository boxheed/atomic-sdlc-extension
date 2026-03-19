#!/bin/bash
# Test the dynamic scanner

SKILLS_DIR="skills"
EXPECTED_SKILL="template"

# Simulate the scanner (which doesn't exist yet)
FOUND_SKILLS=$(./scripts/scan_skills.sh "$SKILLS_DIR")

if [[ $FOUND_SKILLS == *"$EXPECTED_SKILL"* ]]; then
  echo "Test Passed: Skill '$EXPECTED_SKILL' found."
  exit 0
else
  echo "Test Failed: Skill '$EXPECTED_SKILL' NOT found."
  exit 1
fi
