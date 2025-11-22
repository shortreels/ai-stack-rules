# 🚀 Quick Start - Push to GitHub

## ✅ Already Done

- ✅ Repository structure created
- ✅ Git initialized
- ✅ All files committed
- ✅ Branch renamed to `main`

## 📋 Next Steps (Manual)

### 1. Create GitHub Repository

1. Go to: https://github.com/new
2. Repository name: `ai-stack-rules`
3. Description: `Community-submitted rules for ai-stack.dev`
4. Select **Public** ⚠️ (required for community contributions)
5. **DO NOT** check README, .gitignore, or license boxes
6. Click **"Create repository"**

### 2. Push to GitHub

**Option A: Using PowerShell Script** (Easiest)

```powershell
.\push-to-github.ps1 -GitHubUsername YOUR-USERNAME
```

Replace `YOUR-USERNAME` with your actual GitHub username.

**Option B: Manual Commands**

```bash
git remote add origin https://github.com/YOUR-USERNAME/ai-stack-rules.git
git push -u origin main
```

### 3. Update Environment Variables

In your main `ai-stack` project, update or create `.env.local`:

```env
NEXT_PUBLIC_GITHUB_REPO=YOUR-USERNAME/ai-stack-rules
NEXT_PUBLIC_GITHUB_BRANCH=main
```

**Restart your Next.js dev server** after updating environment variables.

### 4. Test the Submit Button

1. Visit: `http://localhost:3000/tools/cursor`
2. Click on **"Rules"** tab
3. Click **"Submit +"** button
4. Should redirect to: `https://github.com/YOUR-USERNAME/ai-stack-rules/new/main?filename=rules/your-rule-name.json`

## 📁 Repository Contents

```
ai-stack-rules/
├── README.md                    # Contribution guide
├── .gitignore
├── SETUP.md
├── PUSH_TO_GITHUB.md
├── push-to-github.ps1          # PowerShell script to push
├── QUICK_START.md              # This file
├── rules/                      # JSON rules directory
│   ├── .gitkeep
│   └── example-typescript-senior-developer.json
└── .github/
    ├── PULL_REQUEST_TEMPLATE.md
    └── workflows/
        └── validate-rules.yml   # Auto-validates JSON files
```

## ✨ What's Ready

- ✅ Complete repository structure
- ✅ Contribution guidelines in README.md
- ✅ PR template for contributors
- ✅ GitHub Actions workflow for JSON validation
- ✅ Example rule file
- ✅ All files committed and ready to push

Just create the GitHub repository and push! 🚀

