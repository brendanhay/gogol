#!/usr/bin/env bash

set -euo pipefail

git log --all --format='%cN' | sort -u | tail -n +2
