#!/bin/bash
set -e

read -p "path(from): " old_file_path
read -p "path(to): " new_file_path
read -p "component name(from): " old_component_name
read -p "component name(to): " new_component_name

# Make directory recursively for new file path
mkdir -p $(dirname $new_file_path)

# Move from old_file_path new_file_path
mv $old_file_path $new_file_path

# Replace old component name with new component name
gsed -i "s/$old_component_name/$new_component_name/g" $new_file_path

# Dangerous check
echo "---------- Dangerous check with component name ----------"
git grep "${old_component_name}" .

echo "---------- Dangerous check with last directory name ----------"
git grep "$(basename $(dirname $old_file_path))" .

# Clean directory if the directory is empty
rmdir -p $(dirname $old_file_path)
