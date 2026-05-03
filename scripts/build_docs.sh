#!/usr/bin/env bash
set -euo pipefail
OUTDIR=build/docs
mkdir -p "$OUTDIR"
for f in docs/handbook/*.md; do
  base=$(basename "$f" .md)
  echo "Rendering $base.pdf"
  pandoc "$f" -o "$OUTDIR/$base.pdf" --pdf-engine=xelatex -V geometry:margin=1in -V mainfont="DejaVu Serif"
done
echo "Built PDFs in $OUTDIR"
#chmod +x scripts/build_docs.sh
#bash scripts/build_docs.sh