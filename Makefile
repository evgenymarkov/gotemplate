.PHONY: setup
setup:
	@echo Setting up git hooks
	@git config core.hooksPath .githooks

.PHONY: format
format:
	@echo Running formatters...
	@gofmt -s -w .

.PHONY: lint
lint:
	@echo Running linters...
	@golangci-lint run

.PHONY: test
test:
	@echo Running tests...
	@go test ./...
