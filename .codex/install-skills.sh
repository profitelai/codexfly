#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CODEX_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET_DIR="$CODEX_DIR/skills"
BIN_DIR="$CODEX_DIR/bin"
PACKS_DIR="$REPO_ROOT/.codex/packs"
GROUPS_DIR="$REPO_ROOT/.codex/groups"
PROJECT_PACK_FILE="$REPO_ROOT/.codex/project-pack"
MODE="all"
PACK_NAME=""
GROUP_NAME=""

usage() {
  cat <<'EOF'
Usage: ./.codex/install-skills.sh [--all] [--pack NAME] [--group NAME] [--project] [--list-packs] [--list-groups]

Examples:
  ./.codex/install-skills.sh
  ./.codex/install-skills.sh --pack maintainer
  ./.codex/install-skills.sh --group research
  ./.codex/install-skills.sh --project
EOF
}

list_packs() {
  if [ ! -d "$PACKS_DIR" ]; then
    return 0
  fi

  for pack_file in "$PACKS_DIR"/*.txt; do
    [ -f "$pack_file" ] || continue
    basename "$pack_file" .txt
  done
}

list_groups() {
  if [ ! -d "$GROUPS_DIR" ]; then
    return 0
  fi

  for group_file in "$GROUPS_DIR"/*.txt; do
    [ -f "$group_file" ] || continue
    basename "$group_file" .txt
  done
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --all)
      MODE="all"
      shift
      ;;
    --pack)
      [ "$#" -ge 2 ] || { echo "Missing value for --pack" >&2; usage >&2; exit 1; }
      MODE="pack"
      PACK_NAME="$2"
      shift 2
      ;;
    --group)
      [ "$#" -ge 2 ] || { echo "Missing value for --group" >&2; usage >&2; exit 1; }
      MODE="group"
      GROUP_NAME="$2"
      shift 2
      ;;
    --project)
      MODE="project"
      shift
      ;;
    --list-packs)
      list_packs
      exit 0
      ;;
    --list-groups)
      list_groups
      exit 0
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

mkdir -p "$TARGET_DIR"

install_skill() {
  local skill_name="$1"
  local skill_dir="$REPO_ROOT/.codex/skills/$skill_name"

  [ -d "$skill_dir" ] || { echo "Skill not found: $skill_name" >&2; exit 1; }

  rm -rf "$TARGET_DIR/$skill_name"
  cp -R "$skill_dir" "$TARGET_DIR/$skill_name"
  echo "Installed $skill_name"
}

install_helpers() {
  local helper

  [ -d "$REPO_ROOT/.codex/bin" ] || return 0

  mkdir -p "$BIN_DIR"
  for helper in "$REPO_ROOT/.codex/bin"/*; do
    [ -f "$helper" ] || continue
    cp "$helper" "$BIN_DIR/$(basename "$helper")"
    chmod +x "$BIN_DIR/$(basename "$helper")"
    echo "Installed helper $(basename "$helper")"
  done
}

install_all_skills() {
  local skill_dir

  for skill_dir in "$REPO_ROOT/.codex/skills"/*; do
    [ -d "$skill_dir" ] || continue
    install_skill "$(basename "$skill_dir")"
  done
}

install_pack() {
  local pack="$1"
  local pack_file="$PACKS_DIR/$pack.txt"
  local skill_name

  [ -f "$pack_file" ] || { echo "Pack not found: $pack" >&2; exit 1; }

  while IFS= read -r skill_name; do
    [ -n "$skill_name" ] || continue
    case "$skill_name" in
      \#*) continue ;;
    esac
    install_skill "$skill_name"
  done < "$pack_file"
}

install_group() {
  local group="$1"
  local group_file="$GROUPS_DIR/$group.txt"
  local skill_name

  [ -f "$group_file" ] || { echo "Group not found: $group" >&2; exit 1; }

  while IFS= read -r skill_name; do
    [ -n "$skill_name" ] || continue
    case "$skill_name" in
      \#*) continue ;;
    esac
    install_skill "$skill_name"
  done < "$group_file"
}

if [ "$MODE" = "project" ]; then
  [ -f "$PROJECT_PACK_FILE" ] || {
    echo "Project pack file not found: $PROJECT_PACK_FILE" >&2
    exit 1
  }
  PACK_NAME="$(sed -n '1p' "$PROJECT_PACK_FILE" | tr -d '[:space:]')"
  [ -n "$PACK_NAME" ] || {
    echo "Project pack file is empty: $PROJECT_PACK_FILE" >&2
    exit 1
  }
  MODE="pack"
fi

case "$MODE" in
  all)
    install_all_skills
    ;;
  pack)
    install_pack "$PACK_NAME"
    ;;
  group)
    install_group "$GROUP_NAME"
    ;;
esac

install_helpers

echo "Done. Restart Codex or open a new Codex session."
