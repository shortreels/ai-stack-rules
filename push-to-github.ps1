# PowerShell script to push ai-stack-rules to GitHub
# Run this script AFTER creating the GitHub repository

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername
)

$RepoName = "ai-stack-rules"
$RemoteUrl = "https://github.com/$GitHubUsername/$RepoName.git"

Write-Host "🚀 Pushing ai-stack-rules to GitHub..." -ForegroundColor Cyan
Write-Host ""

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "⚠️  Remote 'origin' already exists: $remoteExists" -ForegroundColor Yellow
    $response = Read-Host "Do you want to update it? (y/n)"
    if ($response -eq 'y' -or $response -eq 'Y') {
        git remote set-url origin $RemoteUrl
        Write-Host "✅ Remote URL updated" -ForegroundColor Green
    } else {
        Write-Host "❌ Aborted. Please update remote manually." -ForegroundColor Red
        exit 1
    }
} else {
    git remote add origin $RemoteUrl
    Write-Host "✅ Remote added: $RemoteUrl" -ForegroundColor Green
}

# Push to GitHub
Write-Host ""
Write-Host "📤 Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "🌐 Repository URL: $RemoteUrl" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "📝 Don't forget to update your .env.local file:" -ForegroundColor Yellow
    Write-Host "   NEXT_PUBLIC_GITHUB_REPO=$GitHubUsername/$RepoName" -ForegroundColor Yellow
    Write-Host "   NEXT_PUBLIC_GITHUB_BRANCH=main" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "❌ Failed to push. Please check:" -ForegroundColor Red
    Write-Host "   1. GitHub repository exists: $RemoteUrl" -ForegroundColor Red
    Write-Host "   2. You have push access to the repository" -ForegroundColor Red
    Write-Host "   3. You're authenticated with GitHub" -ForegroundColor Red
}

