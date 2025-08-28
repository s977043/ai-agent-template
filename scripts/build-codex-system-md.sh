#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/.codex/system.md"
CORE="$ROOT/.codex/Codex.core.md"
PROJ="$ROOT/.codex/Codex.project.md"
LOCAL="$ROOT/.codex/Codex.local.md"

mkdir -p "$ROOT/.codex"

TIMESTAMP="$(date -u +'%Y-%m-%dT%H:%M:%SZ')"

{
  echo "<!-- Auto-generated: $TIMESTAMP -->"
  echo "# System Prompt (GitHub Copilot CLI)"
  echo
  echo "> 規約が競合する場合は **後勝ち**。読み込み順: 1) Core 2) Project 3) Local。"
} > "$OUT"

append() {
  local file="$1"; local title="$2"
  if [[ -f "$file" ]]; then
    printf '\n---\n\n## %s\n' "${title}" >> "$OUT"
    cat "$file" >> "$OUT"
  fi
}

append "$CORE"  "1) Core（共通の基本動作）"
append "$PROJ"  "2) Project（テンプレート固有の上書き）"
append "$LOCAL" "3) Local（開発者ローカルの最終上書き）"

printf 'Wrote %s\n' "$OUT"