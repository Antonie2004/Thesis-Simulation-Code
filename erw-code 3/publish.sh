#!/usr/bin/env bash
# One-shot publish helper for macOS / Linux.
#
# Prerequisites:
#   - git installed
#   - GitHub CLI (gh) installed and authenticated:  gh auth login
#
# Usage:
#   ./publish.sh [repo-name] [private|public]
# Examples:
#   ./publish.sh                          # -> "erw-code", private
#   ./publish.sh erw-thesis public        # -> public repo named "erw-thesis"

set -euo pipefail

REPO_NAME="${1:-erw-code}"
VISIBILITY="${2:-private}"

git init -b main
git add .
git commit -m "Initial commit: ERW simulation code, figures and thesis"

# Creates the GitHub repo, adds it as 'origin' and pushes 'main'.
gh repo create "$REPO_NAME" --"$VISIBILITY" --source . --remote origin --push

echo ""
echo "Done. '$REPO_NAME' created on GitHub ($VISIBILITY) and pushed."
