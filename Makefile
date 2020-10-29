.PHONY: setup
setup:
	@echo Installing tools
	@cd .tools && make setup

.PHONY: format
format:
	@echo Formatting files
	@goimports -w .

.PHONY: lint
lint:
	@echo Running linters
	@golangci-lint run

.PHONY: test
test:
	@echo Running tests
	go test ./...
