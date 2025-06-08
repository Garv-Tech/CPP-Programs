#!/bin/bash

files=(src/*.cpp)
PS3="Select a file to compile and run: "
select file in "${files[@]}"; do
  if [[ -n "$file" ]]; then
    base=$(basename "$file" .cpp)
    echo "Compiling $file -> executables/${base}.out"
    g++ "$file" -o "executables/${base}.out"
    echo "Running executables/${base}.out..."
    echo "-----------------------------"
    ./executables/"${base}.out"
    break
  else
    echo "❌ Invalid selection."
  fi
done
