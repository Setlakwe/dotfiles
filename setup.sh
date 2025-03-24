#!/usr/bin/env bash
set -e  # Exit immediately if a command exits with a non-zero status

# Change directory 
for item in *; do
  # Check if the item is a directory
  if [ -d "$item" ]; then
    # Skip any directories you don't want to stow (e.g., .git)
    if [ "$item" = ".git" ]; then
      continue
    fi

    echo "Stowing $item..."
    stow "$item"
  else
    echo "Skipping $item; not a directory."
  fi
done
echo "All dotfiles have been stowed!"
