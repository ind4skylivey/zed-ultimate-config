# 🚀 Professional Zed IDE Configuration

**Complete development environment for PHP/Laravel, Python, Rust, Security Research & Reverse Engineering**

---

## 📋 Table of Contents

- [Overview](#overview)
- [Quick Stats](#quick-stats)
- [Installation](#installation)
- [Configuration Files](#configuration-files)
- [Language Support](#language-support)
  - [PHP/Laravel](#phplaraval)
  - [Python](#python)
  - [Rust](#rust)
  - [Security/Reverse Engineering](#securityreverse-engineering)
- [AI Integration (Optional)](#ai-integration-optional)
- [Keybindings Reference](#keybindings-reference)
- [Tasks Reference](#tasks-reference)
- [Snippets Reference](#snippets-reference)
- [Tools Installed](#tools-installed)
- [Usage Examples](#usage-examples)
- [Troubleshooting](#troubleshooting)
- [Tips & Best Practices](#tips--best-practices)

---

## 🎯 Overview

This is a fully-configured professional development environment for Zed IDE, optimized for:

- **Full-stack web development** (PHP/Laravel)
- **Modern Python development** (with proper venv workflow)
- **Systems programming** (Rust)
- **Security research** (Reverse engineering, malware analysis, red team operations)
- **AI-assisted coding** (Ollama + Droid integration)

### Key Features

✅ **163+ code snippets** for rapid development  
✅ **106 automated tasks** for one-click operations  
✅ **31 custom keybindings** for productivity  
✅ **3 LSP servers** for intelligent code assistance  
✅ **3 code formatters** with format-on-save  
✅ **15+ security tools** for binary analysis and RE  
✅ **Venv-aware** Python workflow (professional best practice)  
✅ **Dual AI** integration: Local LLM (Ollama) + Coding agents (Droid)  

---

## 📊 Quick Stats

| Metric | Count | Description |
|--------|-------|-------------|
| **Languages** | 4 | PHP, Python, Rust, Security/Assembly |
| **Snippets** | 163+ | Ready-to-use code templates |
| **Tasks** | 106 | Automated operations |
| **Keybindings** | 31 | Custom shortcuts |
| **LSP Servers** | 3 | Intelephense, rust-analyzer, Python |
| **Formatters** | 3 | PHP-CS-Fixer, Black, rustfmt |
| **Security Tools** | 15+ | GDB, radare2, nmap, wireshark, etc. |
| **Config Files** | 8 | All validated and optimized |
| **Total Size** | ~90 KB | Lightweight and fast |

---

## 🔧 Installation

### Prerequisites

```bash
# Arch Linux (CachyOS)
sudo pacman -S zed php composer python rust cargo
```

### Install Development Tools

#### PHP/Laravel Tools
```bash
# Install formatter
composer global require friendsofphp/php-cs-fixer

# Install language server
npm config set prefix ~/.local
npm install -g intelephense
```

#### Python Tools
```bash
# System-wide for editor features
sudo pacman -S python-black python-pytest mypy python-ruff python-pytest-cov

# Per-project (recommended)
python3 -m venv venv
source venv/bin/activate
pip install black pytest pytest-cov mypy ruff
```

#### Security/RE Tools
```bash
# Essential tools
sudo pacman -S gdb strace ltrace radare2 nmap openbsd-netcat wireshark-qt binwalk

# Optional advanced tools (AUR)
yay -S ghidra rizin-cutter foremost metasploit
```

#### AI Integration (Optional)
```bash
# Ollama - Local LLM for code completion
# Install: curl -fsSL https://ollama.ai/install.sh | sh

# Droid - Coding agent for automation
# Install: curl -fsSL https://factory.sh/install | sh
```

### Install This Configuration

This configuration is already installed at `~/.config/zed/`

To backup or restore:
```bash
# Backup
cp -r ~/.config/zed ~/.config/zed.backup

# Restore
cp -r ~/.config/zed.backup/* ~/.config/zed/
```

---

## 📁 Configuration Files

### File Structure

```
~/.config/zed/
├── README.md                    # This file
├── settings.json                # Core settings, LSP, formatters, themes
├── keymap.json                  # 31 custom keybindings
├── tasks.json                   # 106 automated tasks
├── php.json                     # 35+ Laravel snippets
├── python.json                  # 48 Python snippets
├── rust.json                    # 60+ Rust snippets
├── security.json                # 40+ security/RE snippets
└── PYTHON_VENV_WORKFLOW.md      # Python best practices guide
```

### Validation

All JSON files use JSONC format (JSON with Comments), which is correct for Zed:

```bash
# Verify files exist
ls -lh ~/.config/zed/*.json

# settings.json uses comments - this is correct!
```

---

## 💻 Language Support

### PHP/Laravel

**Configuration:**
- **LSP:** Intelephense (advanced autocomplete, go-to-definition, refactoring)
- **Formatter:** PHP-CS-Fixer (format on save enabled, PHP 8.4 compatible)
- **Tab Size:** 4 spaces (PSR-12 standard)

**Snippets (35+):**
- `controller` - Full Laravel Controller with CRUD methods
- `model` - Laravel Model with fillable/casts
- `migration` - Database migration template
- `request` - Form Request validation
- `resource` - API Resource transformer
- `middleware`, `service`, `job`, `event`, `listener`
- `test`, `factory`, `seeder`, `policy`, `command`
- `route`, `routeresource`, `validate`
- `hasmany`, `belongsto`, `belongstomany`
- And more...

**Tasks (30+):**
- `laravel/serve` - Start development server
- `laravel/migrate` - Run migrations
- `laravel/test` - Run tests
- `laravel/tinker` - Interactive REPL
- `laravel/make-*` - Generate code (controller, model, etc.)
- `php/run`, `php/lint`, `php/format`
- `composer/install`, `composer/update`

**Keybindings:**
- `Cmd+Shift+S` - Start Laravel server
- `Cmd+Shift+M` - Run migrations
- `Cmd+Shift+P` - Run current PHP file
- `Cmd+Alt+T` - Run tests
- `Cmd+Alt+I` - Open Tinker

---

### Python

**Configuration:**
- **LSP:** Built-in Zed Python support
- **Formatter:** Black (format on save, venv-aware)
- **Tab Size:** 4 spaces (PEP 8)
- **Venv Detection:** Automatic (venv → .venv → system)

**Snippets (48):**

*Core Python:*
- `def`, `adef` - Functions (sync/async)
- `class`, `dataclass`, `abc` - Classes
- `context` - Context manager
- `try`, `tryf` - Exception handling
- `prop`, `staticmethod`, `classmethod`
- `decorator` - Custom decorator

*Testing:*
- `testdef`, `testclass` - Pytest tests
- `fixture`, `parametrize` - Pytest fixtures

*File I/O:*
- `fread`, `fwrite` - File operations
- `jsonload`, `jsondump` - JSON handling

*Networking:*
- `requests`, `aiohttp` - HTTP requests
- `socketserver`, `socketclient` - Raw sockets

*Security/Crypto:*
- `b64encode`, `b64decode` - Base64
- `hash256` - SHA256 hashing

*Utilities:*
- `regex`, `subprocess`, `logging`, `argparse`
- `lc`, `dc` - Comprehensions
- `pdb`, `breakpoint` - Debugging

**Tasks (13):**
- `python/test` - Run all tests
- `python/test-file` - Test current file
- `python/test-coverage` - Coverage report
- `python/lint-ruff` - Lint code
- `python/lint-ruff-fix` - Auto-fix issues
- `python/format-black` - Format code
- `python/typecheck-mypy` - Type checking
- `python/venv-create` - Create venv
- `python/pip-install-dev` - Install dev tools

**Keybindings:**
- `Cmd+R` - Run current Python file
- `Cmd+Shift+Y` - Run all tests
- `Cmd+Alt+Y` - Test current file
- `Cmd+Ctrl+L` - Lint with Ruff
- `Cmd+Ctrl+F` - Format with Black

**Venv Workflow:**
See `PYTHON_VENV_WORKFLOW.md` for complete guide.

---

### Rust

**Configuration:**
- **LSP:** rust-analyzer (with clippy integration)
- **Formatter:** rustfmt (format on save enabled)
- **Check Command:** clippy (strict mode)

**Snippets (60+):**

*Core Language:*
- `main`, `fn`, `pfn`, `afn` - Functions
- `struct`, `pstruct`, `dstruct` - Structs
- `enum`, `penum`, `denum` - Enums
- `trait`, `ptrait`, `impl`, `implt`
- `new` - Constructor

*Control Flow:*
- `match`, `iflet`, `whilelet`
- `for`, `loop`

*Types:*
- `result`, `option`, `box`, `vec`, `hashmap`

*Testing:*
- `testmod`, `test`, `atest`, `bench`

*Error Handling:*
- `error` - Full error type
- `from`, `display` - Trait implementations

*Async & Concurrency:*
- `tokio`, `mutex`, `arc`, `channel`, `thread`

*FFI & Unsafe:*
- `unsafe`, `rawptr`, `extern`

*Utilities:*
- `println`, `dbg`, `closure`, `macro`
- `lifetime`, `generic`, `where`

**Tasks (24):**
- `rust/run`, `rust/run-release` - Run project
- `rust/build`, `rust/build-release` - Build
- `rust/test`, `rust/test-verbose` - Testing
- `rust/bench` - Benchmarking
- `rust/check` - Fast type checking
- `rust/clippy`, `rust/clippy-fix` - Linting
- `rust/format`, `rust/format-check` - Formatting
- `rust/doc`, `rust/doc-no-deps` - Documentation
- `rust/clean`, `rust/update`, `rust/tree` - Maintenance
- `rust/audit`, `rust/outdated` - Security
- `rust/new-bin`, `rust/new-lib` - Project creation

**Keybindings:**
- `Cmd+Alt+R` - Quick run
- `Cmd+Shift+B` - Build
- `Cmd+Shift+R` - Run
- `Cmd+Alt+B` - Run tests
- `Cmd+Ctrl+C` - Clippy lint
- `Cmd+Ctrl+K` - Quick check
- `Cmd+Alt+O` - Open docs

---

### Security/Reverse Engineering

**Tools Installed:**
- **Debuggers:** GDB 16.3, strace, ltrace
- **Disassemblers:** objdump, readelf, radare2 5.9.8
- **Binary Analysis:** nm, strings, file, xxd, hexdump, ldd
- **Network:** nmap 7.98, netcat, wireshark
- **Forensics:** binwalk
- **Hashing:** md5sum, sha1sum, sha256sum

**Snippets (40+):**

*Exploit Development:*
- `shellcode-x86`, `shellcode-x64` - Shellcode templates
- `bof` - Buffer overflow
- `fmtstr` - Format string vuln
- `rop` - ROP chain
- `nopsled` - NOP sled

*Reverse Shells:*
- `revshell-py` - Python reverse shell
- `revshell-bash` - Bash reverse shell
- `bindshell` - Bind shell

*Obfuscation:*
- `xor-encode`, `b64-obfuscate`
- `hex2bin`, `bin2hex`
- `str-obfuscate` - String obfuscation

*Memory Operations:*
- `memread`, `memwrite`, `procmem`
- `ptrace` - Attach/detach
- `antidebug` - Anti-debugging

*Network:*
- `socket`, `sniffer`, `portscan`
- `http-analysis`

*Web Exploits:*
- `sqli` - SQL injection
- `xss` - Cross-site scripting
- `cmdinj` - Command injection

*Binary Analysis:*
- `pe-header`, `elf-header`
- `filehash`, `yara`
- `decompile` - Workflow

*Cryptography:*
- `keygen`, `aes`

*Malware Analysis:*
- `sandbox`, `asm`, `syscall`

**Tasks (41):**

*File Analysis:*
- `binary/file-info` - Identify file type
- `binary/strings`, `binary/strings-min` - Extract strings
- `binary/hash-md5`, `binary/hash-sha256`, `binary/hash-all`

*Hex/Binary:*
- `binary/hexdump`, `binary/hexdump-head`

*Disassembly:*
- `binary/objdump-headers`, `binary/objdump-disasm`, `binary/objdump-full`
- `binary/readelf-headers`, `binary/readelf-sections`, `binary/readelf-symbols`
- `binary/nm-symbols`, `binary/ldd-deps`, `binary/checksec`

*Debugging:*
- `debug/gdb-start`, `debug/strace`, `debug/ltrace`

*Reverse Engineering:*
- `re/radare2`, `re/ghidra`

*Network:*
- `network/netcat-listen`, `network/netcat-connect`
- `network/nmap-quick`, `network/nmap-stealth`
- `network/wireshark`

*Exploit Development:*
- `exploit/generate-pattern`, `exploit/find-offset`

*Forensics:*
- `forensics/binwalk`, `forensics/foremost`

**Keybindings:**
- `Cmd+Shift+H` - Hex dump (first 100 lines)
- `Cmd+Shift+X` - Extract strings
- `Cmd+Alt+G` - Start GDB
- `Cmd+Alt+H` - Calculate all hashes
- `Cmd+Ctrl+O` - Disassemble with objdump

---

## 🤖 AI Integration (Optional)

### Supported AI Systems

This configuration supports two complementary AI approaches:

1. **Ollama (Local LLM)** - Code completion and inline suggestions
2. **Droid (Coding Agent)** - Multi-file operations and automation

### 1️⃣ Ollama Configuration

**Purpose:** Real-time code completion, inline suggestions

```json
"language_models": {
  "ollama": {
    "api_url": "http://localhost:11434",
    "available_models": [
      {
        "name": "qwen2.5-coder:14b",
        "max_tokens": 8192,
        "context_length": 32000
      },
      {
        "name": "codellama:13b",
        "max_tokens": 4096,
        "context_length": 16000
      }
    ]
  }
}
```

**Setup:**
```bash
# Install Ollama
curl -fsSL https://ollama.ai/install.sh | sh

# Pull models
ollama pull qwen2.5-coder:14b
ollama pull codellama:13b
```

### 2️⃣ Droid Configuration

**Purpose:** Multi-file operations, testing, autonomous tasks

```json
"agent_servers": {
  "droid": {
    "command": "droid",
    "args": ["exec", "--auto", "medium"],
    "env": {
      "FACTORY_API_KEY": "${FACTORY_API_KEY}"
    }
  }
}
```

**Setup:**
```bash
# Install Droid CLI
curl -fsSL https://factory.sh/install | sh

# Configure API key in environment
export FACTORY_API_KEY="your_key_here"
```

### Droid Tasks (7)

- `droid/analyze` - File analysis with insights
- `droid/review` - Code review and best practices
- `droid/fix` - Fix issues and improve code
- `droid/test` - Run tests and fix failures
- `droid/docs` - Generate documentation
- `droid/refactor` - Improve code quality
- `droid/interactive` - Interactive AI session

### Usage Examples

```bash
# Code analysis
droid "analyze this authentication system"

# Security review
droid exec --auto low "review for security issues"

# Fix and test
droid exec --auto medium "fix bugs and run tests"
```

**Resources:**
- Ollama: https://ollama.ai
- Droid/Factory: https://docs.factory.ai

---

## ⌨️ Keybindings Reference

### Editor Commands

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Cmd+Alt+L` | Format | Format current file |
| `Cmd+Shift+R` | Rename | Rename symbol |
| `Cmd+D` | Duplicate | Duplicate line down |

### Workspace

| Keybinding | Action | Description |
|------------|--------|-------------|
| `Cmd+1` | Toggle Left Dock | Show/hide left sidebar |
| `Cmd+2` | Toggle Right Dock | Show/hide right sidebar |
| `Cmd+T` | Toggle Bottom Dock | Show/hide terminal |
| `Cmd+Shift+T` | New Terminal | Open new terminal |

### Language-Specific

#### Python
| Keybinding | Task | Description |
|------------|------|-------------|
| `Cmd+R` | r/python | Run current Python file |
| `Cmd+Shift+Y` | python/test | Run all tests |
| `Cmd+Alt+Y` | python/test-file | Test current file |
| `Cmd+Ctrl+L` | python/lint-ruff | Lint with Ruff |
| `Cmd+Ctrl+F` | python/format-black | Format with Black |

#### Rust
| Keybinding | Task | Description |
|------------|------|-------------|
| `Cmd+Alt+R` | r/rust | Quick run |
| `Cmd+Shift+B` | rust/build | Build project |
| `Cmd+Shift+R` | rust/run | Run project |
| `Cmd+Alt+B` | rust/test | Run tests |
| `Cmd+Ctrl+C` | rust/clippy | Clippy lint |
| `Cmd+Ctrl+K` | rust/check | Quick check |
| `Cmd+Alt+O` | rust/doc | Open documentation |

#### PHP/Laravel
| Keybinding | Task | Description |
|------------|------|-------------|
| `Cmd+Shift+S` | laravel/serve | Start server |
| `Cmd+Shift+M` | laravel/migrate | Run migrations |
| `Cmd+Shift+P` | php/run | Run current file |
| `Cmd+Alt+T` | laravel/test | Run tests |
| `Cmd+Alt+I` | laravel/tinker | Open Tinker |

#### Security/RE
| Keybinding | Task | Description |
|------------|------|-------------|
| `Cmd+Shift+H` | binary/hexdump-head | Hex dump (100 lines) |
| `Cmd+Shift+X` | binary/strings | Extract strings |
| `Cmd+Alt+G` | debug/gdb-start | Start GDB |
| `Cmd+Alt+H` | binary/hash-all | Calculate hashes |
| `Cmd+Ctrl+O` | binary/objdump-disasm | Disassemble |

#### AI Coding Agent (Optional)
| Keybinding | Task | Description |
|------------|------|-------------|
| `Cmd+Shift+D` | droid/analyze | Analyze file (requires Droid) |
| `Cmd+Alt+D` | droid/review | Review code (requires Droid) |
| `Cmd+Ctrl+D` | droid/fix | Fix issues (requires Droid) |

---

## 📋 Tasks Reference

### Task Categories

**Total:** 106 tasks across 8 categories

#### Python (13 tasks)
- Testing: `python/test`, `python/test-file`, `python/test-coverage`
- Quality: `python/lint-ruff`, `python/lint-ruff-fix`, `python/format-black`, `python/typecheck-mypy`
- Environment: `python/venv-create`, `python/venv-activate`, `python/pip-install-dev`, `python/pip-install-requirements`, `python/pip-freeze`

#### Rust (24 tasks)
- Build: `rust/build`, `rust/build-release`, `rust/run`, `rust/run-release`
- Quality: `rust/check`, `rust/test`, `rust/test-verbose`, `rust/bench`, `rust/clippy`, `rust/clippy-fix`
- Formatting: `rust/format`, `rust/format-check`
- Documentation: `rust/doc`, `rust/doc-no-deps`
- Maintenance: `rust/clean`, `rust/update`, `rust/tree`, `rust/audit`, `rust/outdated`, `rust/expand`
- Creation: `rust/new-bin`, `rust/new-lib`, `rust/add-dependency`

#### PHP/Laravel (30+ tasks)
- Development: `laravel/serve`, `laravel/tinker`
- Database: `laravel/migrate`, `laravel/migrate-fresh`
- Testing: `laravel/test`, `laravel/test-parallel`
- Cache: `laravel/cache-clear`, `laravel/config-clear`, `laravel/optimize`
- Generation: `laravel/make-*` (controller, model, migration, etc.)
- Composer: `composer/install`, `composer/update`, `composer/dump-autoload`
- PHP: `php/run`, `php/lint`, `php/format`

#### Binary Analysis (18 tasks)
- Info: `binary/file-info`, `binary/strings`, `binary/strings-min`
- Hex: `binary/hexdump`, `binary/hexdump-head`
- Disassembly: `binary/objdump-*`, `binary/readelf-*`, `binary/nm-symbols`
- Security: `binary/checksec`, `binary/ldd-deps`
- Hashing: `binary/hash-md5`, `binary/hash-sha256`, `binary/hash-all`

#### Debugging (3 tasks)
- `debug/gdb-start`, `debug/strace`, `debug/ltrace`

#### Reverse Engineering (2 tasks)
- `re/radare2`, `re/ghidra`

#### Network Security (6 tasks)
- `network/netcat-listen`, `network/netcat-connect`
- `network/nmap-quick`, `network/nmap-stealth`
- `network/wireshark`

#### Exploit/Forensics (4 tasks)
- `exploit/generate-pattern`, `exploit/find-offset`
- `forensics/binwalk`, `forensics/foremost`

#### AI Coding Agent (7 tasks - Optional)
- `droid/analyze`, `droid/review`, `droid/fix`
- `droid/test`, `droid/docs`, `droid/refactor`
- `droid/interactive`
- Requires Droid CLI installation

#### Utility (1 task)
- `security/install-tools` - Show installation commands

---

## 📝 Snippets Reference

### Total Snippets: 163+

#### PHP/Laravel (35+)
- Framework: controller, model, migration, request, resource, middleware, service
- Jobs: job, event, listener, command
- Testing: test, factory, seeder
- Auth: policy
- Routes: route, routeresource, validate
- Eloquent: query, hasmany, belongsto, belongstomany
- Utilities: dd, dump, try
- Base: class, function, method, doc

#### Python (48)
- Core: def, adef, class, dataclass, abc, context
- Error Handling: try, tryf
- OOP: prop, staticmethod, classmethod, decorator
- Testing: testdef, testclass, fixture, parametrize
- Types: typing, docstring
- File I/O: fread, fwrite, jsonload, jsondump
- Network: requests, aiohttp, socketserver, socketclient
- Crypto: b64encode, b64decode, hash256
- Utilities: regex, subprocess, logging, argparse
- Comprehensions: lc, dc, enum, lambda
- Debug: pdb, breakpoint, ifmain

#### Rust (60+)
- Functions: main, fn, pfn, afn
- Types: struct, pstruct, dstruct, enum, penum, denum
- Traits: trait, ptrait, impl, implt
- Control: match, iflet, whilelet, for, loop
- Types: result, option, box, vec, hashmap
- Testing: testmod, test, atest, bench
- Error: error, from, display, iterator
- Async: tokio, mutex, arc, channel, thread
- File I/O: fread, fwrite
- Serde: serialize
- Meta: mod, use, derive, closure, macro
- Advanced: lifetime, generic, where, unsafe, rawptr, extern, lazy

#### Security/RE (40+)
- Exploits: shellcode-x86, shellcode-x64, bof, fmtstr, rop, nopsled
- Shells: revshell-py, revshell-bash, bindshell
- Network: socket, sniffer, portscan, http-analysis
- Web: sqli, xss, cmdinj
- Obfuscation: xor-encode, b64-obfuscate, hex2bin, bin2hex, str-obfuscate
- Memory: memread, memwrite, procmem, ptrace, antidebug
- Binary: pe-header, elf-header, filehash, yara, decompile
- Crypto: keygen, aes
- Malware: sandbox, asm, syscall

---

## 🛠️ Tools Installed

### Development Tools

#### PHP/Laravel
- ✅ PHP 8.4.13
- ✅ Composer 2.8.12
- ✅ PHP-CS-Fixer 3.75.0
- ✅ Intelephense (LSP)

#### Python
- ✅ Python 3.13.7
- ✅ black 25.9.0
- ✅ pytest 8.4.2
- ✅ mypy 1.18.2
- ✅ ruff 0.14.2
- ✅ pytest-cov

#### Rust
- ✅ rustc 1.90.0
- ✅ cargo 1.90.0
- ✅ rustfmt 1.8.0
- ✅ clippy 0.1.90
- ✅ rust-analyzer (configured)

### Security Tools

#### Debuggers & Tracers
- ✅ GDB 16.3 - GNU Debugger
- ✅ strace - System call tracer
- ✅ ltrace - Library call tracer

#### Reverse Engineering
- ✅ radare2 5.9.8 - RE framework
- ✅ objdump - Disassembler
- ✅ readelf - ELF analyzer
- ✅ nm - Symbol table
- ✅ strings - String extraction

#### Network Security
- ✅ nmap 7.98 - Port scanner
- ✅ netcat (nc) - Network toolkit
- ✅ wireshark - Protocol analyzer

#### Binary Analysis
- ✅ file - File type identification
- ✅ xxd - Hex dumper
- ✅ hexdump - Hex viewer
- ✅ ldd - Library dependencies
- ✅ binwalk - Firmware analysis

#### Hashing
- ✅ md5sum, sha1sum, sha256sum

### AI Integration (Optional)
- ✅ Ollama - Local LLM for code completion
- ✅ Droid - Coding agent for automation

---

## 💡 Usage Examples

### PHP/Laravel Development

```bash
# Create new Laravel project
composer create-project laravel/laravel my-app
cd my-app
zed .

# In Zed:
# 1. Type 'controller' + Tab → Generate full CRUD controller
# 2. Type 'model' + Tab → Create Eloquent model
# 3. Cmd+Shift+S → Start development server
# 4. Cmd+Shift+M → Run migrations
# 5. Cmd+Alt+T → Run tests
```

### Python Development (Professional Workflow)

```bash
# Create project with venv
mkdir my-python-project
cd my-python-project
python3 -m venv venv
source venv/bin/activate

# Install dev tools in venv
pip install black pytest mypy ruff

# Start coding
zed .

# In Zed (automatically uses venv tools):
# 1. Type 'class' + Tab → Create class
# 2. Type 'testdef' + Tab → Add test
# 3. Cmd+Shift+Y → Run tests
# 4. Cmd+Ctrl+L → Lint code
# 5. Cmd+Ctrl+F → Format code
# 6. Save file → Auto-format with black
```

### Rust Development

```bash
# Create new Rust project
cargo new awesome-tool
cd awesome-tool
zed .

# In Zed:
# 1. Type 'struct' + Tab → Create struct
# 2. Type 'impl' + Tab → Add implementation
# 3. Type 'test' + Tab → Write test
# 4. Cmd+Shift+B → Build project
# 5. Cmd+Shift+R → Run
# 6. Cmd+Alt+B → Run tests
# 7. Cmd+Ctrl+C → Lint with clippy
```

### Binary Analysis Workflow

```bash
# Open suspicious binary
zed suspicious.exe

# Analysis workflow:
# 1. Cmd+Shift+X → Extract strings (find IOCs)
# 2. Cmd+Alt+H → Calculate hashes (for VirusTotal)
# 3. Cmd+Shift+H → View hex dump
# 4. Cmd+Ctrl+O → Disassemble code
# 5. Run task: binary/readelf-sections → Check ELF structure
# 6. Run task: binary/checksec → Check security features
# 7. Cmd+Alt+G → Debug with GDB
```

### Malware Analysis

```bash
# Safe analysis workflow
zed malware_sample.bin

# Static analysis:
# 1. binary/file-info → Identify file type
# 2. binary/hash-all → Document hashes
# 3. binary/strings-min → Extract long strings
# 4. binary/objdump-full → Full disassembly
# 5. forensics/binwalk → Extract embedded files

# Dynamic analysis (in VM):
# 1. debug/strace → Monitor system calls
# 2. debug/ltrace → Track library calls
# 3. debug/gdb-start → Interactive debugging
```

### Exploit Development

```bash
# Create exploit project
mkdir exploit-dev && cd exploit-dev
zed exploit.py

# In Zed:
# 1. Type 'bof' + Tab → Buffer overflow template
# 2. Type 'rop' + Tab → ROP chain structure
# 3. Type 'shellcode-x64' + Tab → Shellcode template
# 4. Type 'xor-encode' + Tab → Obfuscation code
# 5. Run: exploit/generate-pattern → Create cyclic pattern
# 6. Run: exploit/find-offset → Find buffer offset
```

### Network Security Assessment

```bash
# Reconnaissance
# Run: network/nmap-quick → Quick port scan
# Run: network/nmap-stealth → Stealth scan
# Run: network/wireshark → Capture traffic

# Create port scanner
zed portscan.py
# Type 'portscan' + Tab → Python port scanner

# Setup listener
# Run: network/netcat-listen → nc -lvnp 4444

# Create reverse shell
zed revshell.py
# Type 'revshell-py' + Tab → Python reverse shell
```

### Red Team Operations

```bash
# Payload development
zed payload.py

# Quick payload snippets:
# 1. Type 'revshell-bash' + Tab → Bash reverse shell
# 2. Type 'b64-obfuscate' + Tab → Base64 obfuscation
# 3. Type 'aes' + Tab → AES encryption
# 4. Type 'cmdinj' + Tab → Command injection payloads
# 5. Type 'sqli' + Tab → SQL injection tests
```

---

## 🔧 Troubleshooting

### Common Issues

#### 1. PHP-CS-Fixer PHP Version Warning

**Issue:** `PHP needs to be a minimum version of PHP 7.4.0 and maximum version of PHP 8.3.*`

**Solution:** Already configured! Tasks use `PHP_CS_FIXER_IGNORE_ENV=1` to bypass this warning.

```bash
# Manual format if needed:
PHP_CS_FIXER_IGNORE_ENV=1 php-cs-fixer fix file.php
```

#### 2. Python Tools Not Found in Venv

**Issue:** Format/lint/test tasks fail in venv

**Solution:** Tasks auto-detect venv → system → fallback. Install tools in venv:

```bash
source venv/bin/activate
pip install black pytest mypy ruff
```

#### 3. Intelephense Not Working

**Issue:** PHP autocomplete not working

**Check installation:**
```bash
which intelephense
# Should output: /home/il1v3y/.local/bin/intelephense

# Restart Zed after verifying
```

#### 4. Security Tools Missing

**Issue:** Tasks show "tool not installed"

**Install missing tools:**
```bash
sudo pacman -S gdb strace ltrace radare2 nmap openbsd-netcat wireshark-qt binwalk
```

#### 5. Format on Save Not Working

**Check settings:**
- `format_on_save: "on"` is set for each language
- Formatter is installed (php-cs-fixer, black, rustfmt)
- File is saved in correct location (not in read-only directory)

#### 6. Keybindings Not Working

**Verify:**
```bash
# Check keymap.json is valid
python3 -m json.tool ~/.config/zed/keymap.json

# Restart Zed to reload keybindings
```

### Debug Commands

```bash
# Verify configuration files
ls -lh ~/.config/zed/*.json

# Check tool installations
which php composer python3 black pytest rustc cargo gdb radare2 nmap

# Test formatters
php-cs-fixer --version
black --version
rustfmt --version

# Test LSP servers
intelephense --version
```

---

## 💎 Tips & Best Practices

### Python Development

✅ **Always use venv per project**
```bash
python3 -m venv venv
source venv/bin/activate
pip install black pytest mypy ruff
```

✅ **Commit requirements.txt**
```bash
pip freeze > requirements.txt
git add requirements.txt
```

✅ **Don't commit venv folder**
```bash
echo "venv/" >> .gitignore
```

### PHP/Laravel Development

✅ **Use Laravel Pint (optional)**
```bash
composer require laravel/pint --dev
# Then use: ./vendor/bin/pint
```

✅ **Run migrations in safe order**
```bash
# Fresh database (development only!)
php artisan migrate:fresh --seed

# Production
php artisan migrate
```

✅ **Clear caches after config changes**
```bash
php artisan config:clear
php artisan cache:clear
```

### Rust Development

✅ **Use clippy for strict linting**
```bash
# Already configured in settings
cargo clippy -- -D warnings
```

✅ **Check before commit**
```bash
cargo check    # Fast
cargo test     # Run tests
cargo clippy   # Lint
cargo fmt      # Format
```

✅ **Optimize release builds**
```bash
cargo build --release
# Binary in: target/release/
```

### Security/RE Work

✅ **Always work in isolated environment**
- Use VMs for malware analysis
- Never analyze on main system
- Use snapshots before running samples

✅ **Document everything**
```bash
# Save hashes
md5sum sample.bin > sample.md5
sha256sum sample.bin > sample.sha256

# Save strings
strings sample.bin > sample.strings

# Save disassembly
objdump -d sample.bin > sample.asm
```

✅ **Use static analysis first**
```bash
# Before running unknown binaries:
file sample.bin
strings sample.bin
objdump -d sample.bin
radare2 -A sample.bin
```

### AI Integration Usage (Optional)

**Ollama (Local LLM):**
- Automatically provides inline completions
- No manual invocation needed
- Works with any coding model

**Droid (Coding Agent):**

✅ **Start with analysis mode**
```bash
droid "analyze this code for security issues"
```

✅ **Use low autonomy for reviews**
```bash
droid exec --auto low "review this authentication system"
```

✅ **Use medium for development**
```bash
droid exec --auto medium "fix bugs and run tests"
```

### General Workflow

✅ **Use tasks menu for discovery**
- Press task shortcut to see all available tasks
- Tasks are organized by category
- Each task shows description

✅ **Leverage snippets for speed**
- Type prefix + Tab to expand
- Snippets have placeholders for quick filling
- Browse `*.json` files to see all snippets

✅ **Learn keybindings gradually**
- Start with most-used: Cmd+R (run), Cmd+Shift+Y (test)
- Add more as you build muscle memory
- Customize in `keymap.json` if needed

✅ **Keep tools updated**
```bash
# Update system packages
sudo pacman -Syu

# Update Rust
rustup update

# Update Python tools in venv
pip install --upgrade black pytest mypy ruff

# Update Composer packages
composer global update
```

---

## 📚 Additional Resources

### Documentation Files

- **Python Workflow:** `PYTHON_VENV_WORKFLOW.md` - Complete venv guide
- **This README:** `README.md` - You are here!

### Configuration Files

- `settings.json` - Core settings, LSP, formatters
- `keymap.json` - All keybindings
- `tasks.json` - All automated tasks
- `php.json` - Laravel snippets
- `python.json` - Python snippets
- `rust.json` - Rust snippets
- `security.json` - Security/RE snippets

### External Resources

**PHP/Laravel:**
- Laravel Docs: https://laravel.com/docs
- PHP-CS-Fixer: https://github.com/PHP-CS-Fixer/PHP-CS-Fixer
- Intelephense: https://intelephense.com

**Python:**
- Python Docs: https://docs.python.org
- Black: https://black.readthedocs.io
- Pytest: https://docs.pytest.org
- Ruff: https://docs.astral.sh/ruff

**Rust:**
- Rust Book: https://doc.rust-lang.org/book
- Cargo Book: https://doc.rust-lang.org/cargo
- rust-analyzer: https://rust-analyzer.github.io

**Security/RE:**
- GDB: https://sourceware.org/gdb/documentation
- radare2: https://book.rada.re
- Ghidra: https://ghidra-sre.org
- nmap: https://nmap.org/book

**AI Integration:**
- Ollama: https://ollama.ai
- Droid/Factory: https://docs.factory.ai

---

## 🎯 Quick Reference Card

### Most Used Commands

| Action | Keybinding | Alternative |
|--------|-----------|-------------|
| Run Python | `Cmd+R` | Task: r/python |
| Run Rust | `Cmd+Alt+R` | Task: r/rust |
| Run PHP | `Cmd+Shift+P` | Task: php/run |
| Test (Python) | `Cmd+Shift+Y` | Task: python/test |
| Test (Rust) | `Cmd+Alt+B` | Task: rust/test |
| Test (Laravel) | `Cmd+Alt+T` | Task: laravel/test |
| Format | `Cmd+Alt+L` | Auto on save |
| Lint | `Cmd+Ctrl+L` | Task: */lint |
| Build | `Cmd+Shift+B` | Task: rust/build |
| AI Analyze | `Cmd+Shift+D` | Task: droid/analyze (optional) |
| Hex Dump | `Cmd+Shift+H` | Task: binary/hexdump |
| Strings | `Cmd+Shift+X` | Task: binary/strings |
| Debug | `Cmd+Alt+G` | Task: debug/gdb-start |

---

## 📦 Configuration Backup

### Backup Your Setup

```bash
# Full backup
tar -czf zed-config-backup-$(date +%Y%m%d).tar.gz ~/.config/zed/

# Backup to specific location
cp -r ~/.config/zed ~/Backups/zed-config-$(date +%Y%m%d)
```

### Restore Configuration

```bash
# Extract backup
tar -xzf zed-config-backup-YYYYMMDD.tar.gz -C ~/

# Or copy from backup
cp -r ~/Backups/zed-config-YYYYMMDD/* ~/.config/zed/
```

### Share Configuration

```bash
# Create shareable archive (without sensitive data)
tar -czf zed-config-share.tar.gz \
  ~/.config/zed/*.json \
  ~/.config/zed/*.md \
  --exclude="settings.json"  # Exclude if contains API keys

# Share archive with team
```

---

## 🆘 Support & Contributing

### Getting Help

1. **Check this README** - Most answers are here
2. **Check specific guides** - See `PYTHON_VENV_WORKFLOW.md`
3. **Verify installations** - Run debug commands above
4. **Check Zed docs** - https://zed.dev/docs

### Customization

Feel free to customize:
- Add your own snippets to `*.json` files
- Modify keybindings in `keymap.json`
- Add custom tasks to `tasks.json`
- Adjust settings in `settings.json`

### Best Practices for Customization

1. **Backup first** - Before making changes
2. **Validate JSON** - Use `python3 -m json.tool file.json`
3. **Test incrementally** - One change at a time
4. **Document changes** - Add comments explaining custom config

---

## 📊 Version History

### Current Version: 1.0.0 (2025-10-25)

**Initial Release:**
- ✅ 163+ snippets across 4 languages
- ✅ 106 automated tasks
- ✅ 31 custom keybindings
- ✅ 3 LSP servers configured
- ✅ 3 formatters with auto-format
- ✅ 15+ security tools integration
- ✅ Dual AI integration (Ollama + Droid)
- ✅ Professional Python venv workflow
- ✅ Complete documentation

---

## 🎉 Summary

You now have a **production-ready, professional development environment** that supports:

- 🚀 **Full-stack web development** (PHP/Laravel)
- 🐍 **Modern Python development** (proper venv workflow)
- 🦀 **Systems programming** (Rust)
- 🔐 **Security research** (RE, malware analysis, red team)
- 🤖 **AI-assisted coding** (Ollama + Droid)

**With:**
- Professional best practices
- Intelligent tooling
- Rapid development snippets
- One-click automation
- Comprehensive documentation

---

## 📜 License

This configuration is provided as-is for personal and professional use.

---

**Happy Coding! 🚀**

*Last Updated: 2025-10-25*  
*Configuration Version: 1.0.0*  
*Zed IDE on CachyOS (Arch Linux)*
