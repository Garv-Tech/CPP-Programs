#!/bin/bash

echo "📄 Current Git Status:"
git status --short

read -p "📂 Enter the file/folder to add (or . for all changes): " file

# Add .cpp if user forgot
if [ ! -e "$file" ] && [ -e "$file.cpp" ]; then
  file="$file.cpp"
  echo "ℹ️ Interpreted as: $file"
fi

# Check existence
if [ ! -e "$file" ] && [ "$file" != "." ]; then
  echo "❌ '$file' not found."
  exit 1
fi

read -p "💬 Enter commit message: " message

git add "$file"
if git commit -m "$message"; then
  git push
  echo "✅ Pushed '$file' with message: '$message'"
else
  echo "⚠️ Nothing to commit."
fi
