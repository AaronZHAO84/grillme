#!/usr/bin/env bash
set -euo pipefail

target="${1:-all}"
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_file="$source_dir/skills/grillme/SKILL.md"
[[ -f "$source_file" ]] || { echo "Missing skill source: $source_file" >&2; exit 1; }

case "$target" in
  all) roots=("$HOME/.codex/skills" "$HOME/.claude/skills" "$HOME/.dsh/skills" "$HOME/.agents/skills") ;;
  codex) roots=("$HOME/.codex/skills") ;;
  claude) roots=("$HOME/.claude/skills") ;;
  dsh) roots=("$HOME/.dsh/skills") ;;
  agents) roots=("$HOME/.agents/skills") ;;
  *) echo "Usage: $0 [all|codex|claude|dsh|agents]" >&2; exit 2 ;;
esac

for root in "${roots[@]}"; do
  mkdir -p "$root/grillme"
  cp "$source_file" "$root/grillme/SKILL.md"
  echo "Installed grillme -> $root/grillme"
done

