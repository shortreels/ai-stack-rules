# AI Stack Rules Repository Setup Guide

## Repository Structure

```
ai-stack-rules/
│
├── README.md                    # Main contribution guide
├── .gitignore                  # Git ignore file
├── SETUP.md                    # This file
│
├── rules/                      # JSON rules directory
│   ├── .gitkeep               # Ensures directory is tracked
│   └── example-typescript-senior-developer.json  # Example rule
│
└── .github/
    └── PULL_REQUEST_TEMPLATE.md  # PR template for contributions
```

## Next Steps

1. **Initialize Git Repository**
   ```bash
   cd ai-stack-rules
   git init
   git add .
   git commit -m "Initial commit: AI Stack Rules repository structure"
   ```

2. **Create GitHub Repository**
   - Go to GitHub.com
   - Create a new repository named `ai-stack-rules`
   - Make it public
   - Don't initialize with README (we already have one)

3. **Push to GitHub**
   ```bash
   git remote add origin https://github.com/your-username/ai-stack-rules.git
   git branch -M main
   git push -u origin main
   ```

4. **Update Environment Variables**
   - In your main `ai-stack` project, update `.env.local`:
   ```env
   NEXT_PUBLIC_GITHUB_REPO=your-username/ai-stack-rules
   NEXT_PUBLIC_GITHUB_BRANCH=main
   ```

5. **Test the Submit Button**
   - Visit `/tools/cursor` in your app
   - Click on the "Rules" tab
   - Click "Submit +" button
   - It should redirect to GitHub's file creation interface for the `ai-stack-rules` repository

## Rule File Format

Each rule should be a JSON file with the following structure:

```json
{
  "title": "Rule Title",
  "category": "Category Name",
  "tags": ["tag1", "tag2"],
  "content": "Full rule content...",
  "is_official": false,
  "is_popular": false,
  "author": {
    "name": "Author Name",
    "url": "https://github.com/username",
    "avatar": "https://github.com/username.png"
  }
}
```

## Integration with AI Stack

Once the repository is set up:

1. The "Submit +" button in the Rules tab will redirect users to create new rule files
2. Users can fork, create, and submit PRs with new rules
3. Rules are stored as JSON files in the `rules/` directory
4. You can import these rules into Supabase for display on ai-stack.dev

