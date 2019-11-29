#!/bin/bash

# Script created by Jeff Shomali (https://dev.to/jeffshomali/how-to-backup-sync-all-of-your-dotfiles-with-github-e1c)

IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
	echo "Git is Available"
else
	echo "Git is not installed"
	exit 1
fi

# Copy Dot Files
cp $HOME/{.zshrc,.vimrc,.tmux.conf} .

# Check Git Status
gs = "$(git status | grep -i "modified")"

if [[ $gs == *"modified"* ]]; then
	echo "push"
fi

# Push to GitHub
git add -u;
git commit -m "New Backup `date +'%Y-%m-%d %H:%M:%S'`";
git push -u origin master
