SERVICES  ?= $(wildcard gogol-*)
LIBRARIES ?= core gogol $(SERVICES)
FORWARD   := sdist upload upload-docs

build:
	stack build --fast

clean:
	stack clean

define forward
$1: $$(addprefix $1-,$$(LIBRARIES))

$1-%:
	@make -C $$* $1

.PHONY: $1
endef

$(foreach c,$(FORWARD),$(eval $(call forward, $c)))

.PHONY: $(LIBRARIES)

gogol:
	stack build --fast gogol

core:
	stack build --fast gogol-core

$(SERVICES):
	stack build --fast $@
