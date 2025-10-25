# Contributing to Zed Ultimate Configuration

First off, thank you for considering contributing to Zed Ultimate Configuration! It's people like you that make this configuration better for everyone.

## 🎯 How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Description** - Clear and concise description of the bug
- **Steps to Reproduce** - How to reproduce the behavior
- **Expected Behavior** - What you expected to happen
- **Actual Behavior** - What actually happened
- **Environment** - OS, Zed version, tool versions
- **Screenshots** - If applicable

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, include:

- **Clear title** - Describe the enhancement
- **Use case** - Why would this be useful?
- **Detailed description** - How should it work?
- **Examples** - Code examples if applicable

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following our guidelines below
3. **Test your changes** thoroughly
4. **Update documentation** if needed
5. **Submit a pull request** with a clear description

## 📝 Development Guidelines

### Adding New Snippets

**Location:** `config/<language>.json`

```json
{
  "Snippet Name": {
    "prefix": "shortcut",
    "description": "Clear description of what this does",
    "body": [
      "line1",
      "line2 with ${1:placeholder}"
    ]
  }
}
```

**Guidelines:**
- Use clear, descriptive names
- Keep prefixes short but meaningful
- Add helpful placeholders with `${1:name}`
- Test the snippet works correctly
- Add documentation in CONFIG_GUIDE.md

### Adding New Tasks

**Location:** `config/tasks.json`

```json
{
  "label": "category/task-name",
  "command": "command",
  "args": ["arg1", "arg2"],
  "cwd": "$ZED_WORKTREE_ROOT",
  "use_new_terminal": false,
  "allow_concurrent_runs": true
}
```

**Guidelines:**
- Use category prefixes (php/, python/, rust/, binary/, etc.)
- Include fallback messages for missing tools
- Test on clean system if possible
- Document in CONFIG_GUIDE.md

### Adding New Keybindings

**Location:** `config/keymap.json`

```json
{
  "context": "Workspace",
  "bindings": {
    "cmd-shift-x": ["task::Spawn", { "task_name": "task-name" }]
  }
}
```

**Guidelines:**
- Avoid conflicts with existing bindings
- Use logical key combinations
- Document clearly in CONFIG_GUIDE.md
- Consider cross-platform compatibility

### Code Style

**JSON Files:**
- Use 2 spaces for indentation
- Include comments for clarity
- Keep arrays on single line when short
- Use JSONC format (JSON with Comments) for settings.json

**Shell Scripts:**
- Use bash for portability
- Include error handling (`set -e`)
- Add helpful comments
- Use color output for user feedback
- Test on multiple shells if possible

**Documentation:**
- Use Markdown format
- Keep lines under 100 characters when possible
- Use clear headings and structure
- Include code examples
- Add table of contents for long documents

## 🧪 Testing

Before submitting a pull request:

1. **Validate JSON** - All .json files should be valid
   ```bash
   python3 -m json.tool config/*.json > /dev/null
   ```

2. **Test Installation** - Run the install script
   ```bash
   ./scripts/install.sh
   ```

3. **Test in Zed** - Actually use the configuration
   - Test new snippets work
   - Test new tasks execute correctly
   - Test new keybindings don't conflict

4. **Check Documentation** - Verify docs are updated
   - README.md for major features
   - CONFIG_GUIDE.md for detailed reference
   - CHANGELOG.md for version history

## 📦 Pull Request Process

1. **Update Documentation**
   - Add your changes to CHANGELOG.md under "Unreleased"
   - Update CONFIG_GUIDE.md if adding features
   - Update README.md if it's a major feature

2. **Follow Commit Message Guidelines**
   ```
   category: brief description
   
   Longer description if needed explaining:
   - What changed
   - Why it changed
   - Any breaking changes
   ```
   
   Examples:
   - `snippets: add PHP Livewire component template`
   - `tasks: add Go language support`
   - `docs: fix typo in Python venv guide`
   - `fix: correct keybinding conflict with Cmd+T`

3. **Sign Your Commits** (optional but appreciated)
   ```bash
   git commit -S -m "your message"
   ```

4. **Keep Pull Requests Focused**
   - One feature/fix per PR
   - Avoid mixing unrelated changes
   - Keep changes as small as reasonable

5. **Review Process**
   - Maintainers will review your PR
   - Address any requested changes
   - Be patient and respectful

## 🐛 Issue Labels

- `bug` - Something isn't working
- `enhancement` - New feature or request
- `documentation` - Documentation improvements
- `good first issue` - Good for newcomers
- `help wanted` - Extra attention needed
- `question` - Further information requested
- `wontfix` - Will not be worked on

## 💡 Snippet Categories

When adding snippets, use these categories:

**PHP:**
- Framework components (controllers, models, etc.)
- Database operations
- Testing
- Utilities

**Python:**
- Core language (classes, functions, etc.)
- Testing (pytest fixtures, tests)
- Async/await patterns
- File I/O
- Network operations
- Security/crypto

**Rust:**
- Core language (structs, enums, traits)
- Error handling
- Async/concurrency
- Testing/benchmarking
- Unsafe/FFI

**Security:**
- Exploit development
- Reverse engineering
- Network security
- Cryptography
- Obfuscation

## 🔒 Security

If you discover a security vulnerability, please email the maintainer directly rather than using the issue tracker. Security issues will be addressed with high priority.

## 📜 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## ❓ Questions?

- Check the [CONFIG_GUIDE.md](docs/CONFIG_GUIDE.md)
- Ask in [GitHub Discussions](../../discussions)
- Open an issue with the `question` label

## 🙏 Thank You!

Your contributions make this project better for everyone. Whether it's:
- Reporting bugs
- Suggesting features
- Writing documentation
- Contributing code

Every contribution is valuable and appreciated!

---

**Happy Contributing! 🚀**
