#!/bin/bash

# Project and template paths
PROJECT_DIR="/mnt/c/Users/dimit/vscode/AnsibleExample"
TEMPLATE_PATH="$PROJECT_DIR/templates/role_skeleton/meta/main.yml"

# Update meta files for all roles
for role in "$PROJECT_DIR"/roles/*; do
    if [ -d "$role" ]; then
        echo "Updating meta/main.yml for role: $(basename "$role")"
        cp "$TEMPLATE_PATH" "$role/meta/main.yml"
    fi
done