#!/usr/bin/env bash
# scripts/package_release.sh
set -euo pipefail

# 1. Navigate to the project root
cd "$(dirname "$0")/.."

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# 2. Define the output directory and filename
OUT_DIR="assets/exports"
OUT="${OUT_DIR}/release_triads_${TIMESTAMP}.zip"

# Ensure the exports directory exists just in case
mkdir -p "$OUT_DIR"

# 3. Create the ZIP file
zip -r "$OUT" docs assets/exports scripts README.md LICENSE CHANGELOG.md

echo "Created $OUT"
#chmod +x scripts/package_release.sh
#bash scripts/package_release.sh