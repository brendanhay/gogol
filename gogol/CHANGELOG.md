# Change Log

## [0.1.0](https://github.com/brendanhay/gogol/tree/0.1.0)
Released: **20 June, 2016**, Compare: [0.0.1](https://github.com/brendanhay/gogol/compare/0.0.1...0.1.0)

### Fixed

- The generator now emits `ByteString` types instead of the erroneous `Word8` for many services. [\#26](https://github.com/brendanhay/gogol/issues/26)
- The generator now correctly handles smart constructor parameters. [\#10](https://github.com/brendanhay/gogol/issues/10)
- Streaming media requests now have the correct `Content-Type`, previously `application/octet-stream`. [\#16](https://github.com/brendanhay/gogol/issues/16)
- Streaming media requests now have the correct `alt` vs `multipart` query parameter usage.

### Changed

- Base64 URL encoding is now transparent handled. [\#29](https://github.com/brendanhay/gogol/pull/29)
- The MIME type of streaming files via `sourceBody` is now used as the `Content-Type`.
  This behaviour can be overriden using the `bodyContentType` lens.
- Response body is now included in thrown `ServiceError`s. [\#18](https://github.com/brendanhay/gogol/issues/18) [\#23](https://github.com/brendanhay/gogol/pull/23)
- `MonadGoogle`, `Google`, `Env`, and `Credentials` types are now constrained by
  the required OAuth2 scopes.
- GHC 8 support.


### Updated Service Definitions

- All service definitions have been updated to their latest respective versions.


## [0.0.1](https://github.com/brendanhay/gogol/tree/0.0.1)
Released: **24 October, 2015**

### Initial Release
