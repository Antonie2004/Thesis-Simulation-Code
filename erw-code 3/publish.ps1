<#
One-shot publish helper for Windows PowerShell.

Prerequisites:
  - git installed
  - GitHub CLI (gh) installed and authenticated:  gh auth login

Usage:
  .\publish.ps1 [-RepoName <name>] [-Visibility private|public]
Examples:
  .\publish.ps1                                   # "erw-code", private
  .\publish.ps1 -RepoName erw-thesis -Visibility public
#>

param(
    [string]$RepoName   = "erw-code",
    [ValidateSet("private", "public")]
    [string]$Visibility = "private"
)

$ErrorActionPreference = "Stop"

git init -b main
git add .
git commit -m "Initial commit: ERW simulation code, figures and thesis"

# Creates the GitHub repo, adds it as 'origin' and pushes 'main'.
gh repo create $RepoName "--$Visibility" --source . --remote origin --push

Write-Host ""
Write-Host "Done. '$RepoName' created on GitHub ($Visibility) and pushed."
