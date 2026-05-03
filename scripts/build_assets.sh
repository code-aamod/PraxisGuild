#!/usr/bin/env bash
set -euo pipefail
SRC=assets/exports/web
DEST=website_code/public/static
mkdir -p "$DEST"
if command -v svgo >/dev/null 2>&1; then
  echo "Optimizing SVGs with svgo..."
  find "$SRC" -name '*.svg' -exec svgo -i {} -o {} \;
fi
cp -r "$SRC/." "$DEST/"
echo "Copied assets to $DEST"
#chmod +x scripts/build_assets.sh
#bash scripts/build_assets.sh