# Push to GitHub - Quick Start Guide

## ✅ Completed Steps

1. ✅ Git repository initialized
2. ✅ All files committed
3. ✅ Branch renamed to `main`

## 🚀 Push to GitHub (Run These Commands)

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `ai-stack-rules`
3. Description: `Community-submitted rules for ai-stack.dev`
4. Select **Public**
5. **DO NOT** check any boxes (README, .gitignore, license)
6. Click **"Create repository"**

### Step 2: Connect and Push

After creating the GitHub repository, replace `YOUR-USERNAME` with your GitHub username and run:

```bash
cd ai-stack-rules
git remote add origin https://github.com/YOUR-USERNAME/ai-stack-rules.git
git push -u origin main
```

### Step 3: Verify

Visit your repository on GitHub:
```
https://github.com/YOUR-USERNAME/ai-stack-rules
```

You should see all the files:
- README.md
- .github/ folder with PR template
- rules/ directory with example file

## 📝 Next: Update Environment Variables

After pushing to GitHub, update your `.env.local` file in the main `ai-stack` project:

```env
NEXT_PUBLIC_GITHUB_REPO=YOUR-USERNAME/ai-stack-rules
NEXT_PUBLIC_GITHUB_BRANCH=main
```

Then restart your Next.js dev server for changes to take effect.

