# git-down

Bash script that combines multiple Git commands into a unified status display showing:

- Working tree status - Current file changes and staging area
- Commit information - Unpushed commits or recent history
- Stash entries - Current stash contents

## Installation

1. Clone or download the `git-down` script
2. Make it executable: `chmod +x git-down`
3. Place it in your PATH or use directly

## Configuration

Set a default root branch in your Git config. The script will also try the
default branch name stored at `init.defaultBranch`.

```bash
# Set repository-specific root branch
git config down.root main

# Set global default
git config --global down.root main
```

## Usage

```bash
# Basic usage - use config or auto-detect root branch
./git-down

# Specify a custom root branch
./git-down main

# Use with a different base branch
./git-down develop
```
