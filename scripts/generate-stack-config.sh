#!/usr/bin/env bash

set -euo pipefail

shopt -s nullglob

library=(lib/services/gogol-*)

for config in stack-*.yaml; do
    echo "Updating ${config}"

    sed -i -e '/# GENERATED/,/# END GENERATED/d' "${config}"

    {
        printf "# GENERATED\n"
        printf '  - %s\n' "${library[@]}"
        printf "# END GENERATED\n"
    } >>"${config}"
done

echo "Done."
