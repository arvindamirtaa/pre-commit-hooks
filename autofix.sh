#!/usr/bin/env bash

set -euo pipefail

fixed=0

autoflake --in-place --recursive --remove-all-unused-imports "$@" || fixed=1
isort --recursive --apply "$@" || fixed=1
black --py36 -S "$@" || fixed=1

exit "$fixed"
