#!/usr/bin/env sh

set -e

echo "Formatting Go code"

gofmt -s -w .

exit 0
