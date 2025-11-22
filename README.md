# AI Stack – Community Rules Repository

This repository stores community-submitted rules for ai-stack.dev.

Below are the official contribution guidelines (similar to Cursor Directory).

---

# 🚀 How to Contribute

## 1. Fork This Repository

Click **Fork** on GitHub to create your copy.

---

## 2. Adding a New Rule

### A. Locate the Rules Directory

All rules live inside:

```
rules/
```

Each rule should be a JSON file with a descriptive name (e.g., `typescript-senior-developer.json`, `python-best-practices.json`).

### B. Create a Rule File

Create a new JSON file in the `rules/` directory with the following structure:

```json
{
  "title": "Your Rule Title",
  "category": "TypeScript",
  "tags": ["typescript", "react", "nextjs"],
  "content": "Your rule content here...",
  "is_official": false,
  "is_popular": false,
  "author": {
    "name": "Your Name or GitHub Username",
    "url": "https://github.com/yourusername",
    "avatar": "https://github.com/yourusername.png"
  }
}
```

### C. Rule File Structure

Each rule JSON file must include:

1. **title** (string, required): A clear, descriptive title for your rule
2. **category** (string, required): The technology/framework category (e.g., "TypeScript", "Python", "Next.js")
3. **tags** (array, required): An array of relevant tags for searchability
4. **content** (string, required): The full rule content/prompt text
5. **is_official** (boolean, optional): Set to `true` if this is an official/verified rule (default: `false`)
6. **is_popular** (boolean, optional): Set to `true` if this should appear in popular filters (default: `false`)
7. **author** (object, optional): Information about the contributor
   - **name**: Your full name or GitHub username
   - **url**: Link to your GitHub, Twitter, website, or profile
   - **avatar**: URL to your avatar image

### D. Example Rule File

Example: `rules/typescript-senior-frontend.json`

```json
{
  "title": "Senior Front-End Developer",
  "category": "TypeScript",
  "tags": ["react", "nextjs", "typescript", "tailwind", "javascript", "html", "css"],
  "content": "You are a Senior Front-End Developer and an Expert in ReactJS, NextJS, JavaScript, TypeScript, HTML, CSS and modern UI/UX frameworks...",
  "is_official": false,
  "is_popular": true,
  "author": {
    "name": "John Doe",
    "url": "https://github.com/johndoe",
    "avatar": "https://github.com/johndoe.png"
  }
}
```

---

## 3. Adding to Existing Rules

If you want to improve or update an existing rule:

1. Find the rule file in the `rules/` directory
2. Make your changes
3. Update the file with your improvements
4. Create a Pull Request describing your changes

---

## 4. Rule Content Guidelines

Your rule content should:

- ✅ Be **accurate** and related to the category
- ✅ Be **clearly worded** to help developers understand and use them easily
- ✅ Be **actionable**, providing steps or insights to solve common problems
- ✅ Be **tested** - ensure your rule has been tested and works as expected
- ✅ Follow **best practices** for the technology/framework
- ✅ Be **concise** but provide enough detail to be helpful

---

## 5. File Naming Convention

- Use lowercase letters
- Separate words with hyphens (`-`)
- Be descriptive (e.g., `typescript-senior-developer.json`, not `rule1.json`)
- Match the category when possible (e.g., `python-django.json`, `react-native-expo.json`)

---

## 6. Create a Pull Request

After creating or updating a rule:

1. **Commit your changes** to your forked repository
2. **Push** your changes to your fork
3. **Create a Pull Request** from your fork to the main repository
4. Provide a **clear description** of your rule in the PR:
   - What category does it belong to?
   - What problem does it solve?
   - How have you tested it?

---

## 7. Pull Request Review Process

- All PRs will be reviewed by maintainers
- Your rule will be tested before merging
- Feedback may be provided if changes are needed
- Once approved, your rule will be merged and appear on ai-stack.dev

---

## 🤝 Contribution Guidelines

### Code of Conduct

- Be respectful and professional
- Provide helpful, constructive feedback
- Follow the existing code style and format
- Test your rules before submitting

### Questions?

If you have questions about contributing, please:
- Open an issue on GitHub
- Check existing issues for similar questions
- Review the documentation on [ai-stack.dev](https://ai-stack.dev)

---

## 📝 License

By contributing to this repository, you agree that your contributions will be licensed under the same license as the repository.

---

## 🙏 Thank You!

Thank you for contributing to the AI Stack community! Your rules help developers worldwide work more efficiently with AI-powered development tools.

