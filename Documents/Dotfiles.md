# Dotfiles

My personal Linux configuration files managed with a **bare Git repository**.

## What is this?

This repository stores my configuration files (`dotfiles`) while keeping my home directory as the working tree.

Git repository:

```text
~/.dotfiles
```

Working tree:

```text
~
```

The helper command:

```bash
dotfiles
```

is equivalent to:

```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME
```

---

# First Time Setup (Fresh Linux Install)

## 1. Install Git

Ubuntu/Debian

```bash
sudo apt update
sudo apt install git
```

---

## 2. Run Bootstrap

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/04amanrajj/dotfiles-bootstrap/main/install.sh)
```

This will:

* Clone the bare repository
* Restore all tracked files into `$HOME`
* Configure Git for the bare repository

---

## 3. Restart the Shell

For Bash:

```bash
exec bash
```

For Fish:

```fish
exec fish
```

---

# Daily Commands

## Check status

```bash
dotfiles status
```

---

## See changes

```bash
dotfiles diff
```

---

## Add a file

```bash
dotfiles add .config/fish/config.fish
```

or

```bash
dotfiles add .gitconfig
```

---

## Commit

```bash
dotfiles commit -m "Update fish configuration"
```

---

## Push

```bash
dotfiles push
```

---

## Pull latest changes

```bash
dotfiles pull
```

---

## View commit history

```bash
dotfiles log --oneline
```

---

# Restore Files

Restore one file:

```bash
dotfiles restore .config/fish/config.fish
```

Restore everything from the latest commit:

```bash
dotfiles checkout
```

---

# Useful Commands

List tracked files:

```bash
dotfiles ls-tree -r HEAD --name-only
```

Show remote:

```bash
dotfiles remote -v
```

Hide untracked files:

```bash
dotfiles config --local status.showUntrackedFiles no
```

---

# Repository Structure

```
~/
├── .config/
├── .gitconfig
├── .bashrc
└── .dotfiles/
    ├── HEAD
    ├── objects/
    ├── refs/
    └── ...
```

---

# Things to Track

* `.config/fish/`
* `.config/kitty/`
* `.gitconfig`
* `.bashrc`
* `.profile`

---

# Things NOT to Track

* `.ssh/`
* `.bash_history`
* `.cache/`
* `.local/share/`
* `Downloads/`
* `Documents/`
* `Pictures/`
* `Videos/`

---

# Common Workflow

Modify a configuration file:

```bash
nano ~/.config/fish/config.fish
```

Check changes:

```bash
dotfiles status
```

Stage:

```bash
dotfiles add .config/fish/config.fish
```

Commit:

```bash
dotfiles commit -m "Update Fish configuration"
```

Push:

```bash
dotfiles push
```

---

# New Machine Workflow

```text
Install Git
        ↓
Run bootstrap script
        ↓
Restart shell
        ↓
Start using the restored configuration
```

---

# Notes

* Only **tracked** files are restored.
* This repository stores **configuration files**, not applications.
* Software such as Fish, Kitty, Docker, VS Code, etc. must be installed separately.
* Use `dotfiles` instead of `git` when working with this repository.
