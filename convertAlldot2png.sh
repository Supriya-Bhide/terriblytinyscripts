#!/bin/bash

# Directory containing .dot files
input_dir="$1"  # Folder containing the .dot files (first argument passed to script)

# Check if directory exists
if [ ! -d "$input_dir" ]; then
  echo "Directory not found!"
  exit 1
fi

# Loop through all .dot files in the input directory
for dotfile in "$input_dir"/.*.dot; do
  # Check if there are any .dot files in the directory
  if [ ! -f "$dotfile" ]; then
    echo "No .dot files found in the directory!"
    exit 1
  fi

  # Generate the output PNG file name based on the .dot file name
  output_file="${dotfile%.dot}.png"

  # Convert .dot to .png using Graphviz
  dot -Tpng "$dotfile" -o "$output_file"

  echo "Converted $dotfile to $output_file"
done
