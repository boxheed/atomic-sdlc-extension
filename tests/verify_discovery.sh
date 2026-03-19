#!/bin/bash
# Verify dynamic discovery of new skills

NEW_SKILL_NAME="dynamic-test-skill"
NEW_SKILL_DIR="skills/$NEW_SKILL_NAME"

# Create a new skill
mkdir -p "$NEW_SKILL_DIR"
cat > "$NEW_SKILL_DIR/metadata.json" <<EOF
{
  "name": "$NEW_SKILL_NAME",
  "display_name": "Dynamic Test Skill",
  "description": "A skill created to verify dynamic discovery.",
  "category": "validation",
  "version": "1.0.0",
  "status": "active"
}
EOF

# Run the list command
ACTUAL_OUTPUT=$(./scripts/list_skills.sh skills/)

# Check if the new skill is in the output
if [[ $ACTUAL_OUTPUT == *"$NEW_SKILL_NAME"* ]]; then
  echo "Verification Passed: Skill '$NEW_SKILL_NAME' was automatically discovered."
  rm -rf "$NEW_SKILL_DIR"
  exit 0
else
  echo "Verification Failed: Skill '$NEW_SKILL_NAME' was NOT found."
  rm -rf "$NEW_SKILL_DIR"
  exit 1
fi
