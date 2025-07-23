# Helpful Scripts

A place to put a bunch of quick scripts I have used to help out with one thing or another. Probably not the best or most efficient but helpful to me.

---
# Git
### Clean Dead Git Branches

This script deletes all local Git branches that no longer have a corresponding remote branch (i.e., branches whose upstream has been deleted from the remote repository).
#### What It Does
- Fetches the latest state from your Git remote.
- Identifies local branches marked as gone (their upstream remote branch no longer exists).
- Deletes those local branches using `git branch -D`.

#### Requirements
- **Git** must be installed and accessible from the terminal.
- A **Bash-compatible shell** is required (e.g., bash, zsh, Git Bash, WSL).

#### Setup and Usage

##### 1. Download the Script
Save the `clean-dead-branches.sh` file in the root of your Git repository.
##### 2. Run the script
Open a terminal and run:

```sh
chmod +x clean-dead-branches.sh
```

---
