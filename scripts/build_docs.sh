#!/usr/bin/env bash
set -euo pipefail
OUTDIR=build/docs
mkdir -p "$OUTDIR"

for f in docs/handbook/*.md; do
  base=$(basename "$f" .md)
  echo "Rendering $base.pdf"
  
  # Step 1: Create an intermediate HTML file using standard Markdown
  pandoc "$f" -o "$OUTDIR/$base.html"
  
  # Step 2: Convert the HTML file to a PDF using standard tools
  # This uses your native system libraries and ignores TeX Live font dependencies.
  weasyprint "$OUTDIR/$base.html" "$OUTDIR/$base.pdf"
  
  # Step 3: Clean up the intermediate HTML file
  rm "$OUTDIR/$base.html"
done

echo "Built PDFs in $OUTDIR"

#chmod +x scripts/build_docs.sh
#bash scripts/build_docs.sh