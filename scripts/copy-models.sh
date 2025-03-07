#!/usr/bin/env bash

set -euo pipefail

source="$1"
target="$2"

if [ -z "$source" ] || [ -z "$target" ]; then
    echo "Usage: copy-models <SOURCE> <TARGET>"
    exit 1
fi

mkdir "$target"

for dir in "$source"/*/; do
    if find "$dir" -type f -name '*.json' | grep '/v[a-z0-9_\.]*/' >/dev/null 2>&1; then
        name="$(basename "$dir")"
        echo " -> Copy $name"
        cp -r "$dir" "$target/$name"
    fi
done
