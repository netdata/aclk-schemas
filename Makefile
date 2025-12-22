.PHONY: tools
tools:
	go install github.com/bufbuild/buf/cmd/buf@latest

.PHONY: lint
lint:
	buf lint

.PHONY: breaking
breaking:
	buf breaking --against "https://github.com/netdata/aclk-schemas.git#branch=master,subdir=proto" proto
