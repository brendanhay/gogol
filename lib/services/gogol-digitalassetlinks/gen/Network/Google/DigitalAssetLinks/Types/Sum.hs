{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DigitalAssetLinks.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DigitalAssetLinks.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

data CheckResponseErrorCodeItem
    = ErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
    | ErrorCodeInvalidQuery
      -- ^ @ERROR_CODE_INVALID_QUERY@
      -- Unable to parse query.
    | ErrorCodeFetchError
      -- ^ @ERROR_CODE_FETCH_ERROR@
      -- Unable to fetch the asset links data.
    | ErrorCodeFailedSSLValidation
      -- ^ @ERROR_CODE_FAILED_SSL_VALIDATION@
      -- Invalid HTTPS certificate .
    | ErrorCodeRedirect
      -- ^ @ERROR_CODE_REDIRECT@
      -- HTTP redirects (e.g, 301) are not allowed.
    | ErrorCodeTooLarge
      -- ^ @ERROR_CODE_TOO_LARGE@
      -- Asset links data exceeds maximum size.
    | ErrorCodeMalformedHTTPResponse
      -- ^ @ERROR_CODE_MALFORMED_HTTP_RESPONSE@
      -- Can\'t parse HTTP response.
    | ErrorCodeWrongContentType
      -- ^ @ERROR_CODE_WRONG_CONTENT_TYPE@
      -- HTTP Content-type should be application\/json.
    | ErrorCodeMalformedContent
      -- ^ @ERROR_CODE_MALFORMED_CONTENT@
      -- JSON content is malformed.
    | ErrorCodeSecureAssetIncludesInsecure
      -- ^ @ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE@
      -- A secure asset includes an insecure asset (security downgrade).
    | ErrorCodeFetchBudgetExhausted
      -- ^ @ERROR_CODE_FETCH_BUDGET_EXHAUSTED@
      -- Too many includes (maybe a loop).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CheckResponseErrorCodeItem

instance FromHttpApiData CheckResponseErrorCodeItem where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right ErrorCodeUnspecified
        "ERROR_CODE_INVALID_QUERY" -> Right ErrorCodeInvalidQuery
        "ERROR_CODE_FETCH_ERROR" -> Right ErrorCodeFetchError
        "ERROR_CODE_FAILED_SSL_VALIDATION" -> Right ErrorCodeFailedSSLValidation
        "ERROR_CODE_REDIRECT" -> Right ErrorCodeRedirect
        "ERROR_CODE_TOO_LARGE" -> Right ErrorCodeTooLarge
        "ERROR_CODE_MALFORMED_HTTP_RESPONSE" -> Right ErrorCodeMalformedHTTPResponse
        "ERROR_CODE_WRONG_CONTENT_TYPE" -> Right ErrorCodeWrongContentType
        "ERROR_CODE_MALFORMED_CONTENT" -> Right ErrorCodeMalformedContent
        "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE" -> Right ErrorCodeSecureAssetIncludesInsecure
        "ERROR_CODE_FETCH_BUDGET_EXHAUSTED" -> Right ErrorCodeFetchBudgetExhausted
        x -> Left ("Unable to parse CheckResponseErrorCodeItem from: " <> x)

instance ToHttpApiData CheckResponseErrorCodeItem where
    toQueryParam = \case
        ErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        ErrorCodeInvalidQuery -> "ERROR_CODE_INVALID_QUERY"
        ErrorCodeFetchError -> "ERROR_CODE_FETCH_ERROR"
        ErrorCodeFailedSSLValidation -> "ERROR_CODE_FAILED_SSL_VALIDATION"
        ErrorCodeRedirect -> "ERROR_CODE_REDIRECT"
        ErrorCodeTooLarge -> "ERROR_CODE_TOO_LARGE"
        ErrorCodeMalformedHTTPResponse -> "ERROR_CODE_MALFORMED_HTTP_RESPONSE"
        ErrorCodeWrongContentType -> "ERROR_CODE_WRONG_CONTENT_TYPE"
        ErrorCodeMalformedContent -> "ERROR_CODE_MALFORMED_CONTENT"
        ErrorCodeSecureAssetIncludesInsecure -> "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE"
        ErrorCodeFetchBudgetExhausted -> "ERROR_CODE_FETCH_BUDGET_EXHAUSTED"

instance FromJSON CheckResponseErrorCodeItem where
    parseJSON = parseJSONText "CheckResponseErrorCodeItem"

instance ToJSON CheckResponseErrorCodeItem where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

data ListResponseErrorCodeItem
    = LRECIErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
    | LRECIErrorCodeInvalidQuery
      -- ^ @ERROR_CODE_INVALID_QUERY@
      -- Unable to parse query.
    | LRECIErrorCodeFetchError
      -- ^ @ERROR_CODE_FETCH_ERROR@
      -- Unable to fetch the asset links data.
    | LRECIErrorCodeFailedSSLValidation
      -- ^ @ERROR_CODE_FAILED_SSL_VALIDATION@
      -- Invalid HTTPS certificate .
    | LRECIErrorCodeRedirect
      -- ^ @ERROR_CODE_REDIRECT@
      -- HTTP redirects (e.g, 301) are not allowed.
    | LRECIErrorCodeTooLarge
      -- ^ @ERROR_CODE_TOO_LARGE@
      -- Asset links data exceeds maximum size.
    | LRECIErrorCodeMalformedHTTPResponse
      -- ^ @ERROR_CODE_MALFORMED_HTTP_RESPONSE@
      -- Can\'t parse HTTP response.
    | LRECIErrorCodeWrongContentType
      -- ^ @ERROR_CODE_WRONG_CONTENT_TYPE@
      -- HTTP Content-type should be application\/json.
    | LRECIErrorCodeMalformedContent
      -- ^ @ERROR_CODE_MALFORMED_CONTENT@
      -- JSON content is malformed.
    | LRECIErrorCodeSecureAssetIncludesInsecure
      -- ^ @ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE@
      -- A secure asset includes an insecure asset (security downgrade).
    | LRECIErrorCodeFetchBudgetExhausted
      -- ^ @ERROR_CODE_FETCH_BUDGET_EXHAUSTED@
      -- Too many includes (maybe a loop).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListResponseErrorCodeItem

instance FromHttpApiData ListResponseErrorCodeItem where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right LRECIErrorCodeUnspecified
        "ERROR_CODE_INVALID_QUERY" -> Right LRECIErrorCodeInvalidQuery
        "ERROR_CODE_FETCH_ERROR" -> Right LRECIErrorCodeFetchError
        "ERROR_CODE_FAILED_SSL_VALIDATION" -> Right LRECIErrorCodeFailedSSLValidation
        "ERROR_CODE_REDIRECT" -> Right LRECIErrorCodeRedirect
        "ERROR_CODE_TOO_LARGE" -> Right LRECIErrorCodeTooLarge
        "ERROR_CODE_MALFORMED_HTTP_RESPONSE" -> Right LRECIErrorCodeMalformedHTTPResponse
        "ERROR_CODE_WRONG_CONTENT_TYPE" -> Right LRECIErrorCodeWrongContentType
        "ERROR_CODE_MALFORMED_CONTENT" -> Right LRECIErrorCodeMalformedContent
        "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE" -> Right LRECIErrorCodeSecureAssetIncludesInsecure
        "ERROR_CODE_FETCH_BUDGET_EXHAUSTED" -> Right LRECIErrorCodeFetchBudgetExhausted
        x -> Left ("Unable to parse ListResponseErrorCodeItem from: " <> x)

instance ToHttpApiData ListResponseErrorCodeItem where
    toQueryParam = \case
        LRECIErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        LRECIErrorCodeInvalidQuery -> "ERROR_CODE_INVALID_QUERY"
        LRECIErrorCodeFetchError -> "ERROR_CODE_FETCH_ERROR"
        LRECIErrorCodeFailedSSLValidation -> "ERROR_CODE_FAILED_SSL_VALIDATION"
        LRECIErrorCodeRedirect -> "ERROR_CODE_REDIRECT"
        LRECIErrorCodeTooLarge -> "ERROR_CODE_TOO_LARGE"
        LRECIErrorCodeMalformedHTTPResponse -> "ERROR_CODE_MALFORMED_HTTP_RESPONSE"
        LRECIErrorCodeWrongContentType -> "ERROR_CODE_WRONG_CONTENT_TYPE"
        LRECIErrorCodeMalformedContent -> "ERROR_CODE_MALFORMED_CONTENT"
        LRECIErrorCodeSecureAssetIncludesInsecure -> "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE"
        LRECIErrorCodeFetchBudgetExhausted -> "ERROR_CODE_FETCH_BUDGET_EXHAUSTED"

instance FromJSON ListResponseErrorCodeItem where
    parseJSON = parseJSONText "ListResponseErrorCodeItem"

instance ToJSON ListResponseErrorCodeItem where
    toJSON = toJSONText
