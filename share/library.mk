SHELL   := /usr/bin/env bash
NAME    ?= $(notdir $(CURDIR:a/%=%))
VERSION ?= $(shell sed -n 's/^version: *\(.*\)$$/\1/p' $(NAME).cabal)

default:

sdist:
	cabal sdist

candidate:
	curl --proxy localhost:8000 --silent "file=@dist/$(NAME)-$(VERSION).tar.gz" \
 http://hackage.haskell.org/packages/candidates/

upload:
	@echo "noop"
#	cabal upload dist/$(NAME)-$(VERSION).tar.gz
