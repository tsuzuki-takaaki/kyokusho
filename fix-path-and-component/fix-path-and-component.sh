#!/bin/bash

set -e

read -p "path(from): " old_file_path
read -p "path(to): " new_file_path
read -p "component name(from): " old_component_name
read -p "component name(to): " new_component_name

echo $old_file_path
cat $old_file_path
echo $new_file_path
echo $old_component_name
echo $new_component_name
