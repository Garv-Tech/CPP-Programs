#!/bin/bash

# Ask for file or folder to add
read -p "📂 Enter the file/folder to add (or . for all changes): " file

# Ask for commit message
read -p "💬 Enter commit message: " message

# Run Git commands
git add "$file"
git commit -m "$message"
git push

# Confirm
echo "✅ Pushed '$file' with message: '$message'"
