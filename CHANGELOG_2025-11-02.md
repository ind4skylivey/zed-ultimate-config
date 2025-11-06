# Changelog - November 2, 2025

## 🚀 Major Update: Enhanced Workflow & Performance

### ✨ New Features

#### Terminal & Shell Configuration
- **Default Shell**: Zsh configured as default terminal
- **Smart Docking**: Bottom dock (640x320px)
- **Working Directory**: Opens in current project directory
- **Git Integration**: `EDITOR=zed --wait` for seamless commit editing

#### Enhanced Navigation
- **Tabs**: File icons + real-time git status indicators
- **Scrollbar**: Visual git diff markers
- **Project Panel**: Auto-reveal with git status (280px left dock)
- **Outline Panel**: 300px right dock for code structure overview
- **Multi-cursor**: Alt-click support for parallel editing

#### File Management Improvements
- **Smart Exclusions**: Automatically excludes `.git`, `node_modules`, `vendor`, `target`, `venv`, `loot`, `dumps`
- **Intelligent Search**: Case-insensitive by default with regex support
- **File Type Detection**: Auto-recognition for Dockerfile, Shell scripts, Makefiles

#### Git Integration Enhancements
- **Inline Blame**: Now enabled with 600ms delay
- **Git Status**: Visible in tabs, scrollbar, and project panel
- **Hunk Actions**: Quick stage/unstage changes directly in editor
- **Journal**: Activity tracking in `~/.local/share/zed`

#### Code Editing Enhancements
- **Linked Edits**: Auto-rename related symbols across files
- **Whitespace Visibility**: Show on selection only
- **Line Length Guide**: 100 characters (configurable)
- **Smart Cursor**: Always seeds search from cursor position

#### Language Support Additions
- **Bash/Shell Scripts**: Full support with `shfmt` formatter
  - Tab size: 2 spaces
  - Format on save enabled
  - Auto-detection for `.sh`, `.bash`, `.zsh`

#### New Security Tasks (11 tasks)
1. `security/ports-local` - List listening ports
2. `security/ports-all` - All ports with process details
3. `security/processes` - Top 50 CPU-consuming processes
4. `security/network-connections` - Active network connections

#### New Git Tasks (4 tasks)
1. `git/status` - Quick short-format status
2. `git/diff` - Working directory changes
3. `git/diff-staged` - Staged changes diff
4. `git/log-graph` - Visual commit history (20 commits)

#### System Monitoring Tasks (2 tasks)
1. `system/disk-usage` - Disk space by partition
2. `system/memory` - Memory usage overview

### ⌨️ New Keybindings

#### Editor Shortcuts
- `Cmd+P` - Quick file finder
- `Cmd+Shift+A` - Select all
- `Cmd+/` - Toggle comments
- `Cmd+Shift+O` - Toggle outline panel
- `Alt+Up/Down` - Move lines up/down
- `F12` - Go to definition
- `Shift+F12` - Go to type definition
- `Cmd+K Cmd+I` - Show hover information

#### Security & System Shortcuts
- `Cmd+Shift+L` - Security: List listening ports
- `Cmd+Shift+N` - Security: Show network connections
- `Cmd+Shift+G` - Git: Quick status
- `Cmd+Alt+Shift+G` - Git: Visual log graph

### 🔧 Configuration Improvements

#### Diagnostics & Error Display
- **Warnings**: Now displayed with count badge
- **Inline Completions**: Disabled for sensitive files (`.env`, `loot/`)
- **Git Gutter**: 100ms debounce for smooth performance

#### Performance Optimizations
- **File Scan Exclusions**: Faster project-wide searches
- **Smart Caching**: Improved theme and configuration loading
- **Reduced Memory**: Optimized git status polling

### 📦 Total Configuration Stats

- **Settings**: 448 lines (optimized from 457)
- **Keybindings**: 57 lines (40+ shortcuts)
- **Tasks**: 955 lines (116 custom tasks)
- **Total**: 1,460 lines of productivity

### 🐛 Bug Fixes

- ✅ Fixed duplicate `edit_predictions` field causing theme load failures
- ✅ Removed invalid `workspace::DeploySearch` keybinding
- ✅ Cleaned up conflicting `show_edit_predictions` setting
- ✅ Sanitized personal data from public repository

### 📚 Documentation Updates

- Added comprehensive keybinding reference
- Documented all 116 custom tasks
- Created troubleshooting guide for common issues
- Added security-focused workflow examples

### ⚙️ Breaking Changes

**None** - This update is fully backward compatible with existing configurations.

### 🔮 Upcoming Features (Planned)

- [ ] REST Client integration for API testing
- [ ] Database viewer extension
- [ ] Custom snippets for security templates
- [ ] Project-specific task templates
- [ ] Remote SSH editing support
- [ ] Docker container management tasks

---

## 📊 Comparison with Previous Version

| Feature | Before | After |
|---------|--------|-------|
| Total Tasks | ~80 | **116** |
| Keybindings | ~25 | **40+** |
| Language Support | 3 | **6** (added Bash, Shell, Makefile) |
| Git Features | Basic | **Advanced** (blame, hunks, visual log) |
| Terminal Integration | None | **Full** (zsh, custom env) |
| Security Tools | Limited | **Comprehensive** (11 new tasks) |

---

## 🙏 Credits

Special thanks to the Zed team for the excellent editor and community contributions to themes and extensions.

**Theme**: Catppuccin Iced Latte (Blur) [Light]
**Icons**: JetBrains Icons Light
**Extensions**: PHP, Python, Rust, JSON language servers

---

## 📝 Migration Notes

If upgrading from a previous version:

1. **Backup your current config**: `cp -r ~/.config/zed ~/.config/zed.backup`
2. **Review sanitized settings**: Check `agent_servers` section (commented out)
3. **Update paths**: Replace `/home/YOUR_USERNAME` with your actual path
4. **Install formatters**: `sudo pacman -S shfmt` (for Bash/Shell support)
5. **Restart Zed**: Full restart required for theme changes

---

**Version**: 2.0.0
**Date**: November 2, 2025
**Compatibility**: Zed 0.210.4+
