#!/usr/bin/env sh

set -e

echo "Linting Go code"

golangci-lint run

exit 0
