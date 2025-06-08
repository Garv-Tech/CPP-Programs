#!/bin/bash

# List all .cpp files
echo "Available C++ files:"
files=(*.cpp)

for i in "${!files[@]}"; do
  printf "%2d) %s\n" $((i+1)) "${files[$i]}"
done

# Ask user to pick one
echo -n "Choose a file to run [1-${#files[@]}]: "
read choice

# Validate input
if [[ "$choice" =~ ^[0-9]+$ ]] && ((choice >= 1 && choice <= ${#files[@]})); then
  filename="${files[$((choice-1))]}"
  output="${filename%.cpp}.out"

  echo "Compiling $filename ..."
  g++ "$filename" -o "$output"

  if [[ $? -eq 0 ]]; then
    echo "Running $output ..."
    ./"$output"
  else
    echo "Compilation failed."
  fi
else
  echo "Invalid choice."
fi
