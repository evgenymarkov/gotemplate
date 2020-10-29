lint_installer = https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh
lint_version = v1.32.0

.PHONY: setup
setup:
	@cat registry.go | grep '_' | cut -d ' ' -f 2 | xargs go install
	@curl -sSfL $(lint_installer) | sh -s -- -b $$(go env GOPATH)/bin $(lint_version)
