# 🚀 Zed Ultimate Configuration

> **Complete professional development environment for Zed IDE**  
> Supporting PHP/Laravel, Python, Rust, and Security Research

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Zed](https://img.shields.io/badge/Zed-IDE-blue)](https://zed.dev)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## ✨ What Is This?

A **production-ready, battle-tested** Zed IDE configuration that transforms your editor into a powerhouse for:

- 🐘 **PHP/Laravel Development** - 35+ snippets, Artisan tasks, Intelephense LSP
- 🐍 **Python Development** - Proper venv workflow, 48 snippets, testing/linting
- 🦀 **Rust Systems Programming** - 60+ snippets, clippy integration, full toolchain
- 🔐 **Security Research** - Binary analysis, reverse engineering, red team tools, 40+ exploit snippets

**Plus:** 106 automated tasks, 31 custom keybindings, 3 LSP servers, DROID AI integration, and comprehensive documentation.

---

## 🎯 Key Features

### 🎨 **163+ Code Snippets**
Rapid development with battle-tested templates:
- Laravel controllers, models, migrations, tests
- Python classes, async functions, pytest fixtures
- Rust structs, traits, async/await patterns
- Security: shellcode, ROP chains, reverse shells, obfuscation

### ⚡ **106 Automated Tasks**
One-click operations for everything:
- `laravel/serve`, `laravel/migrate`, `laravel/test`
- `python/test`, `python/lint-ruff`, `python/format-black`
- `rust/build`, `rust/test`, `rust/clippy`, `rust/bench`
- `binary/hexdump`, `binary/strings`, `debug/gdb-start`

### ⌨️ **31 Custom Keybindings**
Muscle-memory productivity:
- `Cmd+Shift+Y` - Run Python tests
- `Cmd+Shift+B` - Build Rust project
- `Cmd+Shift+H` - Hex dump binary
- `Cmd+Alt+G` - Debug with GDB
- And many more...

### 🧠 **Smart Tooling**
- **Venv-aware** Python workflow (venv → system → fallback)
- **Format on save** for all languages
- **3 LSP servers** (Intelephense, rust-analyzer, Python)
- **Security tools** integration (GDB, radare2, nmap, binwalk)

---

## 📸 Screenshots

> *Add your screenshots here after setup*

---

## 🚀 Quick Start

### One-Line Installation

```bash
git clone https://github.com/il1v3y/zed-ultimate-config.git
cd zed-ultimate-config
./scripts/install.sh
```

### What Gets Installed

- ✅ 8 configuration files (settings, keybindings, tasks, snippets)
- ✅ Complete documentation (32 KB of guides)
- ✅ Optional: Development tools (PHP, Python, Rust, security tools)

### Manual Installation

```bash
# Backup existing config
cp -r ~/.config/zed ~/.config/zed.backup

# Copy configuration files
cp config/*.json ~/.config/zed/

# Copy documentation
cp docs/*.md ~/.config/zed/

# Restart Zed
```

---

## 📦 What's Included

### Configuration Files

| File | Purpose | Size |
|------|---------|------|
| `settings.json` | Core settings, LSP, formatters | 4.7 KB |
| `keymap.json` | 31 custom keybindings | 2.2 KB |
| `tasks.json` | 106 automated tasks | 25 KB |
| `php.json` | 35+ Laravel snippets | 15 KB |
| `python.json` | 48 Python snippets | 11 KB |
| `rust.json` | 60+ Rust snippets | 12 KB |
| `security.json` | 40+ security/RE snippets | 13 KB |

### Documentation

- **CONFIG_GUIDE.md** - Complete configuration reference (1,266 lines)
- **PYTHON_VENV_WORKFLOW.md** - Professional Python workflow guide
- **CONTRIBUTING.md** - How to contribute
- **CHANGELOG.md** - Version history

### Tools Integration

#### PHP/Laravel
- **Intelephense** - Advanced PHP LSP
- **PHP-CS-Fixer** - Code formatter
- **Composer** - Dependency manager
- **35+ snippets** - Controllers, models, migrations, etc.

#### Python
- **Black** - Code formatter
- **Pytest** - Testing framework
- **Mypy** - Type checking
- **Ruff** - Fast linter
- **48 snippets** - Classes, tests, async, crypto

#### Rust
- **rust-analyzer** - Language server
- **clippy** - Linter
- **rustfmt** - Formatter
- **60+ snippets** - Structs, traits, async, unsafe

#### Security/RE
- **GDB** - Debugger
- **radare2** - RE framework
- **nmap** - Network scanner
- **binwalk** - Firmware analysis
- **40+ snippets** - Exploits, shells, obfuscation

---

## 💻 Usage Examples

### PHP/Laravel Development

```php
// Type 'controller' + Tab
class UserController extends Controller {
    public function index() { }
    public function store(Request $request) { }
    // ... full CRUD methods
}

// Cmd+Shift+S → Start server
// Cmd+Shift+M → Run migrations
// Cmd+Alt+T → Run tests
```

### Python Development

```python
# Type 'testdef' + Tab
def test_user_creation():
    """Test user creation"""
    # Arrange
    # Act  
    # Assert
    assert True

# Cmd+Shift+Y → Run all tests
# Cmd+Ctrl+L → Lint with Ruff
# Cmd+Ctrl+F → Format with Black
```

### Rust Development

```rust
// Type 'struct' + Tab
#[derive(Debug, Clone, PartialEq)]
pub struct User {
    pub id: u64,
}

// Cmd+Shift+B → Build
// Cmd+Shift+R → Run
// Cmd+Alt+B → Test
```

### Binary Analysis

```bash
# Open suspicious binary in Zed
zed malware.bin

# Cmd+Shift+X → Extract strings
# Cmd+Shift+H → Hex dump
# Cmd+Alt+H → Calculate hashes
# Cmd+Ctrl+O → Disassemble
# Cmd+Alt+G → Debug with GDB
```

---

## 📚 Documentation

### Quick Links

- **[Complete Configuration Guide](docs/CONFIG_GUIDE.md)** - Everything you need to know
- **[Python Venv Workflow](docs/PYTHON_VENV_WORKFLOW.md)** - Professional Python setup
- **[Contributing Guidelines](CONTRIBUTING.md)** - How to contribute
- **[Changelog](CHANGELOG.md)** - Version history

### Key Sections

- [All 163+ Snippets Reference](docs/CONFIG_GUIDE.md#snippets-reference)
- [All 106 Tasks Reference](docs/CONFIG_GUIDE.md#tasks-reference)
- [All 31 Keybindings](docs/CONFIG_GUIDE.md#keybindings-reference)
- [Troubleshooting Guide](docs/CONFIG_GUIDE.md#troubleshooting)
- [Tips & Best Practices](docs/CONFIG_GUIDE.md#tips--best-practices)

---

## 🛠️ Requirements

### Minimum Requirements

- **Zed IDE** - Latest version
- **Git** - For installation

### Language-Specific (Optional)

Install only what you need:

#### PHP/Laravel
```bash
# Arch Linux
sudo pacman -S php composer
composer global require friendsofphp/php-cs-fixer
npm install -g intelephense
```

#### Python
```bash
# System-wide
sudo pacman -S python-black python-pytest mypy python-ruff

# Per-project (recommended)
python3 -m venv venv
source venv/bin/activate
pip install black pytest mypy ruff
```

#### Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

#### Security Tools
```bash
sudo pacman -S gdb strace ltrace radare2 nmap openbsd-netcat wireshark-qt binwalk
```

*See [CONFIG_GUIDE.md](docs/CONFIG_GUIDE.md#installation) for detailed installation instructions for all platforms.*

---

## 🤝 Contributing

Contributions are welcome! Whether it's:

- 🐛 Bug fixes
- ✨ New snippets
- 📝 Documentation improvements
- 🔧 New tasks or keybindings
- 🎨 Improvements to existing features

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 🌟 Highlights

### Why This Configuration?

✅ **Production-Tested** - Used in real development workflows  
✅ **Comprehensive** - 4 languages, 163+ snippets, 106 tasks  
✅ **Well-Documented** - 32 KB of guides and references  
✅ **Best Practices** - Professional workflows (Python venv, Rust clippy)  
✅ **Security-Focused** - Binary analysis, RE tools, exploit development  
✅ **Actively Maintained** - Regular updates and improvements  
✅ **Easy Installation** - One script, fully automated  

### What Makes It Unique?

Most Zed configurations focus on a single language or basic setup. This configuration provides:

- **Multi-language** expertise (PHP, Python, Rust, Security)
- **Security research** tools (rare in editor configs)
- **Professional workflows** (venv-aware, LSP, formatters)
- **Massive snippet library** (163+ templates)
- **Complete automation** (106 one-click tasks)
- **Comprehensive docs** (1,400+ lines)

---

## 📊 Statistics

| Metric | Count |
|--------|-------|
| **Code Snippets** | 163+ |
| **Automated Tasks** | 106 |
| **Custom Keybindings** | 31 |
| **LSP Servers** | 3 |
| **Code Formatters** | 3 |
| **Languages Supported** | 4 |
| **Security Tools** | 15+ |
| **Documentation Lines** | 1,400+ |
| **Configuration Files** | 8 |

---

## 🗺️ Roadmap

### Planned Features

- [ ] **JavaScript/TypeScript** support
- [ ] **Go** language configuration
- [ ] **C/C++** development setup
- [ ] More security tools (Ghidra integration)
- [ ] CI/CD integration examples
- [ ] Docker development environment
- [ ] More themes and customizations

See [GitHub Issues](../../issues) for planned features and vote on what you'd like to see next!

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- **Zed Team** - For creating an amazing editor
- **Community Contributors** - For snippets and improvements
- **Tool Developers** - PHP-CS-Fixer, Black, rust-analyzer, radare2, and all the tools integrated

---

## 📞 Support

- **Issues**: [GitHub Issues](../../issues)
- **Discussions**: [GitHub Discussions](../../discussions)
- **Documentation**: [CONFIG_GUIDE.md](docs/CONFIG_GUIDE.md)

---

## ⭐ Star This Repository

If you find this configuration useful, please consider starring it! It helps others discover this project.

---

**Built with ❤️ for the Zed community**

*Last Updated: 2025-10-25*  
*Version: 1.0.0*
