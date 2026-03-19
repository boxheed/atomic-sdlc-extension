#!/bin/bash
# Test if categories are displayed

EXPECTED_CATEGORY="[coding]"

# Simulate the list command (which doesn't include category yet)
ACTUAL_OUTPUT=$(./scripts/list_skills.sh skills/)

if [[ $ACTUAL_OUTPUT == *"$EXPECTED_CATEGORY"* ]]; then
  echo "Test Passed: Category found in output."
  exit 0
else
  echo "Test Failed: Category NOT found in output."
  exit 1
fi
