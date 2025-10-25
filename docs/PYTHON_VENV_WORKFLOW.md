# Professional Python Virtual Environment Workflow

## 🎯 The Setup You Now Have

### System-Wide Tools (for Editor)
✅ **black** 25.9.0 - Code formatter  
✅ **pytest** 8.4.2 - Testing framework  
✅ **mypy** 1.18.2 - Type checker  
✅ **ruff** 0.14.2 - Fast linter  
✅ **pytest-cov** - Coverage reporting  

**These work globally in Zed for basic formatting and linting.**

---

## 📦 Per-Project Setup (Do This for Each Project)

### 1. Create a New Python Project

```bash
# Navigate to your project directory
cd ~/projects/my-awesome-project

# Create virtual environment
python3 -m venv venv

# Activate it
source venv/bin/activate

# Install dev tools in the venv
pip install black pytest pytest-cov mypy ruff

# Install your project dependencies
pip install requests flask pandas  # whatever you need

# Freeze dependencies
pip freeze > requirements.txt
```

### 2. Working on an Existing Project

```bash
cd ~/projects/existing-project

# Create venv
python3 -m venv venv

# Activate it
source venv/bin/activate

# Install from requirements.txt
pip install -r requirements.txt

# If no requirements.txt exists, install dev tools at minimum
pip install black pytest pytest-cov mypy ruff
```

---

## 🔄 Daily Workflow

### Starting Work Session

```bash
cd ~/projects/my-project
source venv/bin/activate  # You'll see (venv) in your prompt
```

**In Zed:**
- Open the project folder
- All tasks will automatically use venv tools if venv exists
- Format on save uses venv's black
- All keybindings work with venv tools

### Running Tasks

**With venv activated (preferred):**
- `Cmd+Shift+Y` - Run tests (uses venv/bin/pytest)
- `Cmd+Ctrl+L` - Lint (uses venv/bin/ruff)
- `Cmd+Ctrl+F` - Format (uses venv/bin/black)

**Fallback:**
- If no venv, uses system tools
- Always gracefully degrades

### Ending Work Session

```bash
deactivate  # Exit venv
```

---

## 🎨 Zed Integration Details

### How Tasks Prioritize Tools:

1. **First:** Check for `venv/bin/<tool>` (your project venv)
2. **Second:** Check for `.venv/bin/<tool>` (alternative venv name)
3. **Third:** Use system tool `/usr/bin/<tool>`
4. **Fourth:** Try `python3 -m <tool>` (pip installed)

### This Means:

✅ **Per-project dependencies are isolated**  
✅ **Different projects can use different versions**  
✅ **Still works if you forget to activate venv**  
✅ **Editor features always work (system tools)**  

---

## 🚀 Best Practices

### Do's ✅

- **Always create venv** for new projects
- **Activate venv** when working in terminal
- **Keep requirements.txt updated**: `pip freeze > requirements.txt`
- **Commit requirements.txt** to git
- **Don't commit venv/** folder (add to .gitignore)

### Don'ts ❌

- **Don't install project dependencies system-wide**
- **Don't mix system pip and venv pip**
- **Don't commit the venv/ folder to git**
- **Don't forget to activate venv before pip install**

---

## 📝 Common Commands Cheatsheet

### Virtual Environment
```bash
python3 -m venv venv              # Create venv
source venv/bin/activate          # Activate (Linux/Mac)
deactivate                        # Deactivate
rm -rf venv                       # Delete venv
```

### Package Management
```bash
pip install <package>             # Install package
pip install -r requirements.txt   # Install from file
pip freeze > requirements.txt     # Save dependencies
pip list                          # List installed packages
pip show <package>                # Show package details
```

### Development Tools
```bash
black .                           # Format all Python files
ruff check .                      # Lint all files
ruff check --fix .                # Auto-fix linting issues
pytest                            # Run all tests
pytest tests/test_file.py         # Run specific test file
pytest --cov=.                    # Run with coverage
mypy .                            # Type check all files
```

---

## 🔧 Troubleshooting

### "Command not found" in venv
**Problem:** Tool not installed in venv  
**Solution:** `pip install black pytest mypy ruff`

### Format on save not working
**Problem:** black not in venv or system  
**Solution:** Check `which black` (should show venv or system path)

### Tests using wrong dependencies
**Problem:** Wrong venv activated  
**Solution:** `deactivate` then `source venv/bin/activate` in correct project

### Want to use different Python version
```bash
python3.11 -m venv venv   # Use specific Python version
```

---

## 🎓 Example: Starting a New Security Tool

```bash
# Create project
mkdir ~/projects/exploit-scanner
cd ~/projects/exploit-scanner

# Setup venv
python3 -m venv venv
source venv/bin/activate

# Install tools and dependencies
pip install black pytest mypy ruff
pip install requests pycryptodome scapy

# Create structure
mkdir tests src
touch src/__init__.py tests/__init__.py

# Save dependencies
pip freeze > requirements.txt

# Open in Zed
zed .
```

Now you have:
- ✅ Isolated environment
- ✅ All dev tools ready
- ✅ Zed tasks work perfectly
- ✅ Can share with others via requirements.txt

---

## 📚 Next Steps

1. **Try it out**: Create a test project with venv
2. **Check Zed tasks**: Run `python/test` to see venv detection
3. **Commit requirements.txt**: Always share dependencies
4. **Explore pytest**: Write tests for your code

---

**You're now set up with professional Python workflow! 🎉**
