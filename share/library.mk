SHELL   := /usr/bin/env bash
NAME    ?= $(notdir $(CURDIR:a/%=%))
VERSION ?= $(shell sed -n 's/^version: *\(.*\)$$/\1/p' $(NAME).cabal)

CANDIDATE = $(realpath dist/$(NAME)-$(VERSION).tar.gz)

default:

sdist:
	cabal sdist

candidate:
	curl -X POST -H 'Content-Type: multipart/form-data' \
 --form package=@$(CANDIDATE) \
 --form press=submit \
 http://hackage.haskell.org/packages/candidates/

upload:
	@echo "noop"


