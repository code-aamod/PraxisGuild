#!/usr/bin/env bash
set -euo pipefail

CHANGELOG_FILE="CHANGELOG.md"
TMP_FILE="temp_changelog.md"

DATE=$(date +%Y-%m-%d)

# 1. Generate the new unreleased header and the latest 10 commits
echo "## [Unreleased] - $DATE" > "$TMP_FILE"
echo "" >> "$TMP_FILE"
git log --oneline --no-merges -n 10 | sed 's/^/- /' >> "$TMP_FILE"
echo "" >> "$TMP_FILE"
echo "All notable changes to this repository will be documented here." >> "$TMP_FILE"
echo "" >> "$TMP_FILE"

# 2. Append the older logs while making sure we don't duplicate headers
if [ -f "$CHANGELOG_FILE" ]; then
    # Skip the first 5 lines (old header and unreleased section) of the existing file
    tail -n +6 "$CHANGELOG_FILE" >> "$TMP_FILE" || true
fi

# 3. Replace the old changelog with the deduplicated temp file
mv "$TMP_FILE" "$CHANGELOG_FILE"

echo "Changelog cleaned and updated!"
#chmod +x scripts/update_changelog.sh
#bash scripts/update_changelog.sh