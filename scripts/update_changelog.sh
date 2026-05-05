#!/usr/bin/env bash
set -euo pipefail

CHANGELOG_FILE="CHANGELOG.md"
TMP_FILE="temp_changelog.md"

DATE=$(date +%Y-%m-%d)

# 1. Initialize the header
echo "# Changelog" > "$TMP_FILE"
echo "" >> "$TMP_FILE"
echo "All notable changes to this repository will be documented here." >> "$TMP_FILE"
echo "" >> "$TMP_FILE"
echo "## [Unreleased] - $DATE" >> "$TMP_FILE"
echo "" >> "$TMP_FILE"
echo "### Added / Updated" >> "$TMP_FILE"

# 2. Extract commits, uniquely sort them, and format them
git log --oneline --no-merges -n 15 | \
    sed 's/^/- /' | \
    awk '!seen[$0]++' >> "$TMP_FILE" # Removes duplicate lines

# 3. Finalize and overwrite the file
mv "$TMP_FILE" "$CHANGELOG_FILE"
echo "Changelog systemized successfully!"