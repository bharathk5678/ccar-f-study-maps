#!/usr/bin/env bash
# One-command publish: creates a PUBLIC GitHub repo from this folder and pushes it.
# Requires: git and the GitHub CLI (gh) logged in:  gh auth login
set -euo pipefail
REPO="${1:-ccar-f-study-maps}"
cd "$(dirname "$0")"

OWNER="$(gh api user --jq .login)"
echo "Publishing as $OWNER → $OWNER/$REPO (public)"

# Fill in the owner/repo placeholders
for f in README.md LICENSE; do
  sed -i.bak "s/__OWNER__/$OWNER/g; s/__REPO__/$REPO/g" "$f" && rm -f "$f.bak"
done

if [ ! -d .git ]; then git init -b main; fi
git add -A
git commit -m "Add CCAR-F study maps: 5 domains, README, docs, previews"

gh repo create "$OWNER/$REPO" --public --source=. --remote=origin --push \
  --description "Unofficial Excalidraw study maps for the Claude Certified Architect – Foundations exam (CCAR-F): 5 domains with traps, flashcards, scenario Q&A. Not affiliated with Anthropic."

gh repo edit "$OWNER/$REPO" \
  --add-topic excalidraw --add-topic study-notes --add-topic claude \
  --add-topic anthropic --add-topic certification --add-topic exam-prep \
  --add-topic mcp --add-topic llm --add-topic ai-agents

echo "Done: https://github.com/$OWNER/$REPO"
echo "Next: Settings → General → Features: turn on Issues (and Discussions if you like)."
