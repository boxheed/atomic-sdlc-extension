#!/bin/bash
# List all available skills and their summaries, including categories

SKILLS_DIR=$1

# Find all directories in the skills directory that contain a metadata.json file
find "$SKILLS_DIR" -maxdepth 2 -name "metadata.json" | while read -r METADATA_FILE; do
  NAME=$(jq -r '.name' "$METADATA_FILE")
  DESCRIPTION=$(jq -r '.description' "$METADATA_FILE")
  CATEGORY=$(jq -r '.category' "$METADATA_FILE")
  
  if [ "$CATEGORY" != "null" ]; then
    echo "[$CATEGORY] $NAME - $DESCRIPTION"
  else
    echo "$NAME - $DESCRIPTION"
  fi
done
