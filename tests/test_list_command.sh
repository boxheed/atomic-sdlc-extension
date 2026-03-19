#!/bin/bash
# Test the 'list' command

EXPECTED_OUTPUT="template - <A concise summary of the skill's purpose.>"

# Simulate the list command (which doesn't exist yet)
ACTUAL_OUTPUT=$(./scripts/list_skills.sh skills/)

if [[ $ACTUAL_OUTPUT == *"$EXPECTED_OUTPUT"* ]]; then
  echo "Test Passed: Correct skill summary found."
  exit 0
else
  echo "Test Failed: Expected output NOT found."
  exit 1
fi
