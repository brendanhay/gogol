SHELL     :=	 /usr/bin/env bash
TOP       := .
BIN       :=	./bin
MODEL_DIR :=	./configs/models
OUT_DIR   :=	./lib/services
STACK_YAML :=	./gen/stack.yaml

define version =
$(shell sed -n 's/^version: *\([0-9]*\.[0-9]*\.[0-9]\).*$$/\1/p' $(1))
endef

VERSION = $(call version,$(TOP)/lib/gogol-core/gogol-core.cabal)

MODELS ?= $(shell find $(MODEL_DIR) -type f -name '*.json' | sort)

.PHONY: gen $(BIN)/gogol-gen

gen: $(BIN)/gogol-gen $(MODEL_DIR)
	$(BIN)/gogol-gen \
 --out=$(OUT_DIR) \
 --version=$(VERSION) \
 --services=configs/services \
 --templates=configs/templates \
 --assets=configs/assets \
 $(addprefix --model=,$(MODELS))

$(BIN)/gogol-gen: $(BIN)
	stack build gogol-gen --stack-yaml=$(STACK_YAML) --nix --copy-bins --local-bin-path $(BIN)

$(BIN):
	mkdir $@

clean:
	stack clean --stack-yaml=$(STACK_YAML)
	rm -r $(MODEL_DIR)

full-clean: clean
	rm -r ../vendor ../configs/models

$(MODEL_DIR): ./vendor/google-api-go-client
	@./scripts/copy-models $< $@

vendor/google-api-go-client:
	git clone https://github.com/google/google-api-go-client $@
