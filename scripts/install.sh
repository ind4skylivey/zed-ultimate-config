#!/bin/bash

# ==============================================================================
# Zed Ultimate Configuration - Installation Script
# ==============================================================================
# This script installs the complete Zed IDE configuration with support for:
# - PHP/Laravel development
# - Python development (with venv workflow)
# - Rust systems programming
# - Security research & reverse engineering
# - DROID AI integration
# ==============================================================================

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper functions
print_header() {
    echo -e "\n${BLUE}===${NC} $1 ${BLUE}===${NC}\n"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Check if running on supported OS
check_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        print_success "Running on Linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        print_success "Running on macOS"
    else
        print_warning "Unsupported OS: $OSTYPE"
        print_info "This script is designed for Linux and macOS"
        read -p "Continue anyway? (y/n) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            exit 1
        fi
    fi
}

# Backup existing configuration
backup_config() {
    print_header "Backing Up Existing Configuration"
    
    if [ -d "$HOME/.config/zed" ]; then
        backup_dir="$HOME/.config/zed.backup.$(date +%Y%m%d_%H%M%S)"
        print_info "Backing up to: $backup_dir"
        cp -r "$HOME/.config/zed" "$backup_dir"
        print_success "Backup created"
    else
        print_info "No existing configuration found, skipping backup"
    fi
}

# Install configuration files
install_config() {
    print_header "Installing Configuration Files"
    
    mkdir -p "$HOME/.config/zed"
    
    # Copy configuration files
    cp config/*.json "$HOME/.config/zed/"
    print_success "Configuration files installed"
    
    # Copy documentation
    if [ -d "docs" ]; then
        cp docs/*.md "$HOME/.config/zed/" 2>/dev/null || true
        print_success "Documentation installed"
    fi
}

# Check for required tools
check_tools() {
    print_header "Checking Required Tools"
    
    local all_good=true
    
    # Core tools
    command -v php >/dev/null 2>&1 && print_success "PHP found" || { print_warning "PHP not found"; all_good=false; }
    command -v python3 >/dev/null 2>&1 && print_success "Python found" || { print_warning "Python not found"; all_good=false; }
    command -v cargo >/dev/null 2>&1 && print_success "Rust found" || { print_warning "Rust not found"; all_good=false; }
    
    if [ "$all_good" = false ]; then
        print_warning "Some tools are missing. The configuration will still be installed."
    fi
}

# Install development tools
install_dev_tools() {
    print_header "Development Tools Installation"
    
    echo "This configuration requires several development tools."
    echo "Would you like to install them now? (requires sudo)"
    echo ""
    echo "Tools to install:"
    echo "  - PHP: composer, php-cs-fixer, intelephense"
    echo "  - Python: black, pytest, mypy, ruff"
    echo "  - Security: gdb, radare2, nmap, binwalk"
    echo ""
    read -p "Install tools? (y/n) " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if command -v pacman >/dev/null 2>&1; then
            # Arch Linux / CachyOS
            print_info "Detected Arch Linux, using pacman..."
            sudo pacman -S --needed \
                php composer \
                python python-black python-pytest mypy python-ruff \
                rust cargo rustup \
                gdb strace ltrace radare2 nmap openbsd-netcat wireshark-qt binwalk \
                2>/dev/null || print_warning "Some packages might have failed to install"
                
            # Install npm packages
            npm config set prefix ~/.local
            npm install -g intelephense 2>/dev/null || print_warning "Intelephense installation failed"
            
            # Install PHP-CS-Fixer
            composer global require friendsofphp/php-cs-fixer --with-all-dependencies 2>/dev/null || print_warning "PHP-CS-Fixer installation failed"
            
        elif command -v apt >/dev/null 2>&1; then
            # Debian / Ubuntu
            print_info "Detected Debian/Ubuntu, using apt..."
            sudo apt update
            sudo apt install -y \
                php composer \
                python3 python3-pip \
                rust-all \
                gdb strace ltrace radare2 nmap netcat wireshark binwalk \
                2>/dev/null || print_warning "Some packages might have failed to install"
                
            # Install Python tools
            pip3 install --user black pytest mypy ruff pytest-cov 2>/dev/null || print_warning "Python tools installation failed"
            
            # Install npm packages
            npm install -g intelephense 2>/dev/null || print_warning "Intelephense installation failed"
            
            # Install PHP-CS-Fixer
            composer global require friendsofphp/php-cs-fixer 2>/dev/null || print_warning "PHP-CS-Fixer installation failed"
            
        elif command -v brew >/dev/null 2>&1; then
            # macOS
            print_info "Detected macOS, using Homebrew..."
            brew install \
                php composer \
                python3 \
                rust \
                gdb radare2 nmap netcat binwalk \
                2>/dev/null || print_warning "Some packages might have failed to install"
                
            # Install Python tools
            pip3 install black pytest mypy ruff pytest-cov 2>/dev/null || print_warning "Python tools installation failed"
            
            # Install npm packages
            npm install -g intelephense 2>/dev/null || print_warning "Intelephense installation failed"
            
            # Install PHP-CS-Fixer
            composer global require friendsofphp/php-cs-fixer 2>/dev/null || print_warning "PHP-CS-Fixer installation failed"
        else
            print_warning "Package manager not detected. Please install tools manually."
            print_info "See docs/CONFIG_GUIDE.md for installation instructions"
        fi
        
        print_success "Tool installation completed"
    else
        print_info "Skipped tool installation"
        print_info "You can install tools later using: scripts/install-tools.sh"
    fi
}

# Post-installation instructions
post_install() {
    print_header "Installation Complete!"
    
    echo ""
    print_success "Zed Ultimate Configuration has been installed"
    echo ""
    echo "📁 Location: $HOME/.config/zed"
    echo ""
    echo "📚 Next Steps:"
    echo "   1. Restart Zed IDE"
    echo "   2. Read the configuration guide: ~/.config/zed/CONFIG_GUIDE.md"
    echo "   3. Try the keybindings and snippets!"
    echo ""
    echo "🔑 Quick Start:"
    echo "   - Type 'controller' + Tab in a PHP file"
    echo "   - Type 'testdef' + Tab in a Python file"
    echo "   - Type 'struct' + Tab in a Rust file"
    echo "   - Open a binary and press Cmd+Shift+H for hex dump"
    echo ""
    echo "⚙️  Configuration:"
    echo "   - Keybindings: ~/.config/zed/keymap.json"
    echo "   - Settings: ~/.config/zed/settings.json"
    echo "   - Tasks: ~/.config/zed/tasks.json"
    echo ""
    echo "💡 Tips:"
    echo "   - Use Cmd+K to open task menu"
    echo "   - Python venv guide: ~/.config/zed/PYTHON_VENV_WORKFLOW.md"
    echo "   - Security tools: Run task 'security/install-tools' for install commands"
    echo ""
    print_success "Happy coding! 🚀"
    echo ""
}

# Main installation flow
main() {
    clear
    echo "╔════════════════════════════════════════════════════════════╗"
    echo "║                                                            ║"
    echo "║        ZED ULTIMATE CONFIGURATION - INSTALLER              ║"
    echo "║                                                            ║"
    echo "║  Complete development environment for:                     ║"
    echo "║  • PHP/Laravel                                             ║"
    echo "║  • Python                                                  ║"
    echo "║  • Rust                                                    ║"
    echo "║  • Security Research & Reverse Engineering                 ║"
    echo "║                                                            ║"
    echo "╚════════════════════════════════════════════════════════════╝"
    echo ""
    
    check_os
    backup_config
    install_config
    check_tools
    install_dev_tools
    post_install
}

# Run main installation
main
