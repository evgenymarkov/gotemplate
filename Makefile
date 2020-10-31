.PHONY: setup
setup:
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
