#!/usr/bin/env bash
# scripts/update_changelog.sh
set -euo pipefail

CHANGELOG_FILE="CHANGELOG.md"

# 1. Create the file if it doesn't exist
if [ ! -f "$CHANGELOG_FILE" ]; then
    echo "# Changelog" > "$CHANGELOG_FILE"
    echo "" >> "$CHANGELOG_FILE"
fi

# 2. Generate a new entry based on recent commits or specific tags
DATE=$(date +%Y-%m-%d)
echo "## [Unreleased] - $DATE" > temp_changelog.md
echo "" >> temp_changelog.md
# Extracts recent short-log history
git log --oneline --no-merges -n 10 | sed 's/^/- /' >> temp_changelog.md
echo "" >> temp_changelog.md

# 3. Append existing changelog contents below the new entry
cat "$CHANGELOG_FILE" | tail -n +3 >> temp_changelog.md
mv temp_changelog.md "$CHANGELOG_FILE"

echo "Changelog updated!"
#chmod +x scripts/update_changelog.sh
#bash scripts/update_changelog.sh