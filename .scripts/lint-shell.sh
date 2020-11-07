#!/usr/bin/env sh

set -e

echo "Linting Shell code"

SHELL_FILES=$(shfmt -f .)

for file in $SHELL_FILES; do
  shellcheck "$file"
done

exit 0
