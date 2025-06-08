#!/bin/bash

# Create executables folder if it doesn't exist
mkdir -p executables

# Find all .cpp files
files=(*.cpp)

# Exit if no files found
if [ ${#files[@]} -eq 0 ]; then
  echo "❌ No C++ files found."
  exit 1
fi

# Display menu
echo "📄 Select a C++ file to compile and run:"
for i in "${!files[@]}"; do
  echo "$((i+1))) ${files[$i]}"
done

# Read choice
read -p "Enter number (1-${#files[@]}): " choice

# Validate input
if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#files[@]} )); then
  selected="${files[$((choice-1))]}"
  output="executables/${selected%.cpp}.out"

  echo
  echo "=============================="
  echo "🔧 Compiling: $selected"
  echo "📁 Output: $output"
  echo "=============================="

  g++ "$selected" -o "$output"

  if [ $? -eq 0 ]; then
    echo
    echo "🚀 Program Output:"
    echo "------------------------------"
    ./"$output"
    echo "------------------------------"
    echo "✅ Done."
  else
    echo "❌ Compilation failed."
  fi
else
  echo "⚠️ Invalid selection."
fi
