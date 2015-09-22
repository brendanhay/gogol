SHELL     := /usr/bin/env bash
TOP       := ..
BIN       := bin
MODEL_DIR := model
OUT_DIR   := ..

define version =
$(shell sed -n 's/^version: *\([0-9]*\.[0-9]*\.[0-9]\).*$$/\1/p' $(1))
endef

VERSION        = $(shell sed -n 's/^version: *\(.*\)$$/\1/p' gozen-gen.cabal)
CORE_VERSION   = $(call version,$(TOP)/core/gozen-core.cabal)
CLIENT_VERSION = $(call version,$(TOP)/gen/gozen-gen.cabal)

MODELS ?= $(shell find $(MODEL_DIR) -type f -name '*.json' | sort)

.PHONY: $(BIN)/gozen-gen gen format

release: gen # format

gen: $(BIN)/gozen-gen $(MODEL_DIR)
	$(BIN)/gozen-gen \
 --out=$(OUT_DIR) \
 --library-version=$(VERSION) \
 --client-version=$(CLIENT_VERSION) \
 --core-version=$(CORE_VERSION) \
 --templates=template \
 --static=static \
 $(addprefix --model=,$(MODELS))

format:
	@echo -e '\nFormatting...'
	@find $(wildcard $(OUT_DIR)/gozen-*/gen) $(wildcard $(OUT_DIR)/test/Test/AWS/Gen) \
 -type f \
 -name '*.hs' \
 -printf ' -> %p\n' \
 -exec stylish-haskell -i {} \;

$(BIN)/gozen-gen: $(BIN)
	stack build gozen-gen --copy-bins --local-bin-path $(BIN)

$(BIN):
	mkdir $@

clean:
	stack clean
	rm -rf $(MODEL_DIR)

full-clean: clean
	rm -rf vendor model

$(MODEL_DIR): vendor/google-api-go-client
	@./script/copy-models $< $@

vendor/google-api-go-client:
	git clone git@github.com:google/google-api-go-client $@
