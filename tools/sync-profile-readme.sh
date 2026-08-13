#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 /path/to/diegorusso/README.md" >&2
    exit 2
fi

source_readme=$1
if [[ ! -f "$source_readme" ]]; then
    echo "Profile README not found: $source_readme" >&2
    exit 1
fi

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(git -C "$script_dir/.." rev-parse --show-toplevel)
target="$repo_root/index.md"
generated=$(mktemp)
trap 'rm -f "$generated"' EXIT

{
    printf '%s\n' \
        '---' \
        'layout: single' \
        'classes: wide' \
        'author_profile: true' \
        '---' \
        '<!-- Generated from diegorusso/README.md; do not edit by hand. -->' \
        '<!-- Title: Diego Russo -->'
    cat "$source_readme"
} > "$generated"

if cmp -s "$generated" "$target"; then
    echo "index.md is already up to date"
    exit 0
fi

mv "$generated" "$target"
echo "Updated index.md from $source_readme"
