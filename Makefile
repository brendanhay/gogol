SHELL        := /usr/bin/env bash
BIN          := ./bin
MODEL_DIR    := ./configs/models
SERVICES_DIR := ./lib/services
VERSION      ?= $(call version,./lib/gogol-core/gogol-core.cabal)
MODELS       ?= $(shell find $(MODEL_DIR) -type f -name '*.json' | sort)

.PHONY: gen $(BIN)/gogol-gen

gen: $(BIN)/gogol-gen $(MODEL_DIR)
	$(BIN)/gogol-gen \
 --out=$(SERVICES_DIR) \
 --version=$(VERSION) \
 --services=configs/services \
 --templates=configs/templates \
 --assets=configs/assets \
 $(addprefix --model=,$(MODELS))

$(BIN)/gogol-gen: $(BIN)
	stack build gogol-gen --copy-bins --local-bin-path $(BIN)

$(BIN):
	mkdir $@

clean:
	stack clean gogol-gen
	rm -r $(MODEL_DIR)

full-clean: clean
	rm -r ./vendor ./configs/models

$(MODEL_DIR): ./vendor/google-api-go-client
	@./scripts/copy-models.sh $< $@

vendor/google-api-go-client:
	git clone https://github.com/google/google-api-go-client $@

define version =
$(shell sed -n 's/^version: *\([0-9]*\.[0-9]*\.[0-9]\).*$$/\1/p' $(1))
endef
