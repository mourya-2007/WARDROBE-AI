#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ARCHIVE="$(mktemp "${TMPDIR:-/tmp}/wardrobe-ai-source.XXXXXX.tar.xz")"
trap 'rm -f "$ARCHIVE"' EXIT

cat "$ROOT"/.github/source-archive/part-*.b64 | base64 --decode > "$ARCHIVE"
xz -t "$ARCHIVE"
tar -xJf "$ARCHIVE" -C "$ROOT"

echo "Wardrobe AI source extracted to: $ROOT/wardrobe-ai-optimized"
