SERVICES  ?= $(wildcard gozen-*)
LIBRARIES ?= core gozen $(SERVICES)
FORWARD   := sdist upload

build:
	stack build

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

gozen:
	stack build gozen

core:
	stack build gozen-core

$(SERVICES):
	stack build $@
