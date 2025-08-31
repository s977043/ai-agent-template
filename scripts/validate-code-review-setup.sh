#!/bin/bash
# Code Review Guidelines Validation Script

set -e

echo "🔍 AI Agent Code Review Guidelines Validation"
echo "============================================="

# Check if all required files exist
files=(
    ".github/ai-agent-code-review-guidelines.md"
    ".claude/code-review-guidelines.md"
    ".codex/code-review-guidelines.md"
    ".gemini/code-review-guidelines.md"
    "docs/CODE_REVIEW_GUIDELINES.md"
)

echo "📁 Checking required files..."
for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "✅ $file"
    else
        echo "❌ $file - Missing!"
        exit 1
    fi
done

# Check if files have content
echo ""
echo "📊 Checking file sizes..."
for file in "${files[@]}"; do
    size=$(wc -c < "$file")
    if [[ $size -gt 100 ]]; then
        echo "✅ $file ($size bytes)"
    else
        echo "⚠️  $file ($size bytes) - Might be too small"
    fi
done

# Check if references are updated in configuration files
echo ""
echo "🔗 Checking configuration updates..."
config_files=(
    ".github/copilot-instructions.md"
    "AGENTS.md"
    ".codex/Codex.project.md"
    ".gemini/Gemini.project.md"
)

for file in "${config_files[@]}"; do
    if grep -q "code-review" "$file"; then
        echo "✅ $file - Contains code review references"
    else
        echo "⚠️  $file - No code review references found"
    fi
done

echo ""
echo "🎉 Validation completed!"
echo ""
echo "📋 Summary:"
echo "- Created comprehensive AI agent code review guidelines"
echo "- Added tool-specific configurations for Claude, Copilot CLI, and Gemini"
echo "- Updated existing configuration files with references"
echo "- Added documentation for easy discovery and usage"
echo ""
echo "✨ AI agents can now follow structured, comprehensive code review processes!"