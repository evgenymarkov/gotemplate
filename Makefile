.PHONY: setup
setup:
	@echo Installing dependencies
	@.scripts/install-package.sh go
	@.scripts/install-package.sh golangci-lint
	@.scripts/install-package.sh shfmt
	@.scripts/install-package.sh shellcheck

	@echo Setting up git hooks
	@git config core.hooksPath .githooks

.PHONY: format
format:
	@echo Running formatters...
	@.scripts/format-golang.sh
	@.scripts/format-shell.sh

.PHONY: lint
lint:
	@echo Running linters...
	@.scripts/lint-golang.sh
	@.scripts/lint-shell.sh

.PHONY: test
test:
	@echo Running tests...
	@go test ./...
