#!/bin/zsh

# Ensure we're on the main branch
git checkout main

# Delete all local branches except main
git branch | grep -v "main" | xargs git branch -D

# Prune remote branches that no longer exist
git fetch --all --prune

echo "All local branches except 'main' have been deleted."