# Change Log

## [0.3.0](https://github.com/brendanhay/gogol/tree/0.3.0)

Released: **12 July, 2017**, Compare: [0.3.0](https://github.com/brendanhay/gogol/compare/0.2.0...0.3.0)

### Added

- Addition of offline mode and save + refresh for credentials. [\#66](https://github.com/brendanhay/gogol/pull/66)

### Fixed

- Corrected `Duration` type serialisation. [\#68](https://github.com/brendanhay/gogol/pull/68)


## [0.2.0](https://github.com/brendanhay/gogol/tree/0.2.0)

Released: **12 February, 2017**, Compare: [0.1.1](https://github.com/brendanhay/gogol/compare/0.1.1...0.2.0)

### Fixed

- Removal of 'smart'-deserialisation of Base64-encoded byte streams. [\#47](https://github.com/brendanhay/gogol/issues/47) [\#58](https://github.com/brendanhay/gogol/pull/58)
- Various fixes for Installed Application AuthN/AuthZ example. [\#39](https://github.com/brendanhay/gogol/pull/39)
- Various fixes for token-based refresh requests. [\#37](https://github.com/brendanhay/gogol/pull/37) [\#53](https://github.com/brendanhay/gogol/pull/53) [\#55](https://github.com/brendanhay/gogol/pull/55) [\#57](https://github.com/brendanhay/gogol/pull/57)
- CSV quote parameters in BigQuery should be optional. [\#52](https://github.com/brendanhay/gogol/issues/52)
- Fixed the incocrrect construction of URL's containing mode suffixes, such as `:commit`. [\#33](https://github.com/brendanhay/gogol/issues/33) [\#34](https://github.com/brendanhay/gogol/pull/34) [\#49](https://github.com/brendanhay/gogol/issues/49)

### New Libraries

- `gogol-manufacturers`: [Manage](https://developers.google.com/manufacturers/) your product listings for [Google Manufacturer Center](https://www.google.com/retail/manufacturer-center/).
- `gogol-slides`: [Slides Overview](https://developers.google.com/slides/how-tos/overview).
- `gogol-language`: [Natural Language Overview](https://cloud.google.com/natural-language/).

### Updated Service Definitions

- All service definitions have been updated to their latest respective versions.


## [0.1.1](https://github.com/brendanhay/gogol/tree/0.1.1)
Released: **03 November, 2016**, Compare: [0.1.0](https://github.com/brendanhay/gogol/compare/0.1.0...0.1.1)

### Fixed

- Fixes for incorrectly serialised project/commit URL identifiers. [\#34](https://github.com/brendanhay/gogol/pull/34)
- Correcting `/computeMetadta/V1` path prefix for metadata token refresh URLs. [\#37](https://github.com/brendanhay/gogol/pull/37)
- Fixes for Installed Application authentication flow. [\#39](https://github.com/brendanhay/gogol/pull/34)

### Updated Service Definitions

- All service definitions have been updated to their latest respective versions.


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
