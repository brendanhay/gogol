#!/usr/bin/env bash

set -euo pipefail

full="$1"
short="$2"

if [ -z "$full" ] || [ -z "$short" ]; then
    echo "Usage: set-version <VERSION> <DEPENDENCY>"
    exit 1
fi

specs=(
    gen/*.cabal
    examples/*.cabal
    lib/gogol/*.cabal
    lib/gogol-core/*.cabal
    lib/services/gogol-*/*.cabal
)

echo "Bumping package versions to $full ..."
echo "Bumping dependencies to $short ..."

for cabal in "${specs[@]}"; do
    sed -i"" "s,^\(version: *\).*$,\1$full," "$cabal"
    sed -i"" "s,^\(.*gogol-[a-z0-9 ]*\^>=\).*$,\1$short," "$cabal"
    sed -i"" "s,^\(.*gogol *\^>=\).*$,\1$short," "$cabal"
done

echo "Done."
