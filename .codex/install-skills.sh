#!/usr/bin/env bash
set -e

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_DIR/skills"
BIN_DIR="$CODEX_DIR/bin"

mkdir -p "$TARGET_DIR"

for skill_dir in "$REPO_ROOT/.codex/skills"/*; do
  [ -d "$skill_dir" ] || continue
  skill_name="$(basename "$skill_dir")"
  rm -rf "$TARGET_DIR/$skill_name"
  cp -R "$skill_dir" "$TARGET_DIR/$skill_name"
  echo "Installed $skill_name"
done

if [ -d "$REPO_ROOT/.codex/bin" ]; then
  mkdir -p "$BIN_DIR"
  for helper in "$REPO_ROOT/.codex/bin"/*; do
    [ -f "$helper" ] || continue
    helper_name="$(basename "$helper")"
    cp "$helper" "$BIN_DIR/$helper_name"
    chmod +x "$BIN_DIR/$helper_name"
    echo "Installed helper $helper_name"
  done
fi

echo "Done. Restart Codex or open a new Codex session."
