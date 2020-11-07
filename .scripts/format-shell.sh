#!/usr/bin/env sh

set -e

echo "Formatting Shell code"

SHELL_FILES=$(shfmt -f .)

for file in $SHELL_FILES; do
  shfmt -s -w "$file"
done

exit 0
