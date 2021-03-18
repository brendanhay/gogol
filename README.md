# Gogol

**Warning:** This is an experimental prototype/preview release which is still
under heavy development and not intended for public consumption, caveat emptor!

[![Build Status](https://img.shields.io/travis/brendanhay/gogol/develop.svg?maxAge=2592000)](https://travis-ci.org/brendanhay/gogol)
[![Build Status](https://github.com/brendanhay/gogol/actions/workflows/cabal.yml/badge.svg)](https://github.com/brendanhay/gogol/actions/workflows/cabal.yml)
[![Hackage Version](https://img.shields.io/hackage/v/gogol.svg)](http://hackage.haskell.org/package/gogol)
[![Gitter Chat](https://img.shields.io/gitter/room/brendanhay/gogol.js.svg?maxAge=2592000)](https://gitter.im/brendanhay/gogol)


* [Description](#description)
* [Documentation](#documentation)
* [Organisation](#organisation)
* [Change Log](#change-log)
* [Contribute](#contribute)
* [Licence](#licence)


## Description

<img alt="Гоголь-моголь" height="261px;" src="https://upload.wikimedia.org/wikipedia/commons/c/c7/Kogel_mogel.JPG">
<img alt="Мико́ла Васи́льович Го́голь" height="261px" src="https://upload.wikimedia.org/wikipedia/commons/3/31/NV_Gogol.png">

A comprehensive Google Services SDK for Haskell supporting all of the publicly
available services.

An introductory blog post detailing the motivation can be found [here](http://brendanhay.nz/gogol-comprehensive-haskell-google-client).

## Documentation

You can find the latest stable release documentation for each respective library
on Hackage under the [Google section](http://hackage.haskell.org/packages/#cat:Google).

Haddock documentation which is built by CI from the `develop` branch
can be found [here](http://brendanhay.nz/gogol-doc).


## Organisation

This repository is organised into the following directory structure:

* [`gogol`](gogol): Actual operational logic, you'll need to import this to send requests etc.
* `gogol-*`: Data types for each of the individual Google Compute Engine Service libraries.
* [`core`](core): The `gogol-core` library upon which each of the services depends.
* [`examples`](examples): A currently sparse collection of examples for the various services.
* [`gen`](gen): The code generation binary, along with configuration, templates, and assets.
* [`script`](script): CI scripts to manage the release lifecycle of the service libraries.
* [`share`](share): Makefile plumbing common to all service libraries

> See the `./gen` subdirectory for further details about generating an API client/SDK.


## Change Log

A change log for the entire project can be found under [`gogol/CHANGELOG.md`](gogol/CHANGELOG.md).


## Contribute

For any problems, comments, or feedback please create an issue [here on GitHub](https://github.com/brendanhay/gogol/issues).


## Licence

Gogol is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/).

Parts of the code are derived from Google Compute Engine service descriptions, licensed under Apache 2.0.
Source files subject to this contain an additional licensing clause in their header.
