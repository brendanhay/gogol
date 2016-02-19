# Gogol

**Warning:** This is an experimental prototype/preview release which is still
under heavy development and not intended for public consumption, caveat emptor!

[![Build Status](https://travis-ci.org/brendanhay/gogol.svg?branch=develop)](https://travis-ci.org/brendanhay/gogol)
[![Hackage Version](https://img.shields.io/hackage/v/gogol.svg)](http://hackage.haskell.org/package/gogol)
[![Gitter Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/brendanhay/gogol)

* [Description](#description)
* [Contribute](#contribute)
* [Licence](#licence)


## Description

<img alt="Гоголь-моголь" height="261px;" src="https://upload.wikimedia.org/wikipedia/commons/c/c7/Kogel_mogel.JPG">
<img alt="Мико́ла Васи́льович Го́голь" height="261px" src="https://upload.wikimedia.org/wikipedia/commons/3/31/NV_Gogol.png">

## Generate New API Endpoints

To generate new API endpoints, use the gogol/gen directory.
The key files in this directory (outside of the actual gogol-gen source!) are the annex files.

To add a new endpoint, first create its annex file in the annex directory. It should be named after the API endpoint as found in the <a href="https://www.github.com/google/google-api-go-client">google/google-api-go-client repo.</a>

### Example:

#### Want to generate the Cloud Dataproc API endpoint

The Cloud Dataproc API is called dataproc-api.json in the google repo. Create the file gogol/gen/annex/dataproc.json with these contents:

```
{
 "library": "dataproc",
 "canonicalName": "Dataproc"
}
```

From the gogol/gen directory, run:

```
make clean
make
```

This will build the gogol-gen executable, and then will generate all the API endpoints that have annex files.

Once completed, there would then be a gogol-dataproc directory with its corresponding generated API client in the top-level directory of the repo.

Note: rather than `make clean`, one could run `make full-clean` which removes all of the API references and causes redownload of the google-api-go-client repo.

## Contribute

For any problems, comments, or feedback please create an issue [here on GitHub](https://github.com/brendanhay/gogol/issues).


## Licence

Gogol is released under the [Mozilla Public License Version 2.0](http://www.mozilla.org/MPL/).
