PWD=$(shell pwd)
GO_CMD=docker run --rm -v "$(PWD)":/go/ golang go


define gobuild
	@echo "building binary ($(GOOS)/$(GOARCH)): $@"
	@docker run \
		--rm \
		-v "$(PWD)":/go/ \
		-e GOOS=$(GOOS) \
		-e GOARCH=$(GOARCH) \
		golang go build -o bin/main-$(GOOS)-$(GOARCH) src/main.go
endef


GO_SRC_FILES=$(shell find src/ -name '*.go')

run:
	@docker run --rm -v "$(PWD)":/go/ golang go run src/main.go

build: bin/main-darwin-arm64

bin/main-darwin-arm64: $(GO_SRC_FILES) Makefile
	$(eval GOOS="darwin")
	$(eval GOARCH="arm64")
	$(gobuild)