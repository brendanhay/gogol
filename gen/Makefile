SHELL     := /usr/bin/env bash
TOP       := ..
BIN       := bin
MODEL_DIR := model
OUT_DIR   := ..

define version =
$(shell sed -n 's/^version: *\([0-9]*\.[0-9]*\.[0-9]\).*$$/\1/p' $(1))
endef

VERSION        = $(shell sed -n 's/^version: *\(.*\)$$/\1/p' gogol-gen.cabal)
CORE_VERSION   = $(call version,$(TOP)/core/gogol-core.cabal)
CLIENT_VERSION = $(call version,$(TOP)/gen/gogol-gen.cabal)

MODELS ?= $(shell find $(MODEL_DIR) -type f -name '*.json' | sort)

.PHONY: gen $(BIN)/gogol-gen

gen: $(BIN)/gogol-gen $(MODEL_DIR)
	$(BIN)/gogol-gen \
 --out=$(OUT_DIR) \
 --library-version=$(VERSION) \
 --client-version=$(CLIENT_VERSION) \
 --core-version=$(CORE_VERSION) \
 --services=service \
 --templates=template \
 --static=static \
 $(addprefix --model=,$(MODELS))

$(BIN)/gogol-gen: $(BIN)
	stack build gogol-gen --nix --copy-bins --local-bin-path $(BIN)

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
	git clone https://github.com/google/google-api-go-client $@
