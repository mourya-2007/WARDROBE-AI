#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ARCHIVE="$(mktemp "${TMPDIR:-/tmp}/wardrobe-ai-source.XXXXXX.tar.xz")"
trap 'rm -f "$ARCHIVE"' EXIT

cat "$ROOT/.github/source-archive/part-01.b64" \
    "$ROOT/.github/source-archive/part-01a.b64" \
    "$ROOT/.github/source-archive/part-02.b64" \
    "$ROOT/.github/source-archive/part-03.b64" \
    "$ROOT/.github/source-archive/part-04.b64" \
    "$ROOT/.github/source-archive/part-05a.b64" \
    "$ROOT/.github/source-archive/part-05b.b64" \
    "$ROOT/.github/source-archive/part-05c.b64" \
    "$ROOT/.github/source-archive/part-05d1.b64" \
    "$ROOT/.github/source-archive/part-05d2.b64" \
    "$ROOT/.github/source-archive/part-05d3.b64" \
    "$ROOT/.github/source-archive/part-05d4.b64" \
    "$ROOT/.github/source-archive/part-06.b64" \
    "$ROOT/.github/source-archive/part-07.b64" \
    "$ROOT/.github/source-archive/part-08.b64" \
    "$ROOT/.github/source-archive/part-09.b64" | base64 --decode > "$ARCHIVE"
xz -t "$ARCHIVE"
tar -xJf "$ARCHIVE" -C "$ROOT"

echo "Wardrobe AI source extracted to: $ROOT/wardrobe-ai-optimized"
