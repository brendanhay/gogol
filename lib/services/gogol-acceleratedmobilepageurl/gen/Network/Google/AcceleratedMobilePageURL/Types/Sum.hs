{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AcceleratedMobilePageURL.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AcceleratedMobilePageURL.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The error code of an API call.
data AmpURLErrorErrorCode
    = ErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
      -- Not specified error.
    | InputURLNotFound
      -- ^ @INPUT_URL_NOT_FOUND@
      -- Indicates the requested URL is not found in the index, possibly because
      -- it\'s unable to be found, not able to be accessed by Googlebot, or some
      -- other error.
    | NoAmpURL
      -- ^ @NO_AMP_URL@
      -- Indicates no AMP URL has been found that corresponds to the requested
      -- URL.
    | ApplicationError
      -- ^ @APPLICATION_ERROR@
      -- Indicates some kind of application error occurred at the server. Client
      -- advised to retry.
    | URLIsValidAmp
      -- ^ @URL_IS_VALID_AMP@
      -- DEPRECATED: Indicates the requested URL is a valid AMP URL. This is a
      -- non-error state, should not be relied upon as a sign of success or
      -- failure. It will be removed in future versions of the API.
    | URLIsInvalidAmp
      -- ^ @URL_IS_INVALID_AMP@
      -- Indicates that an AMP URL has been found that corresponds to the request
      -- URL, but it is not valid AMP HTML.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AmpURLErrorErrorCode

instance FromHttpApiData AmpURLErrorErrorCode where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right ErrorCodeUnspecified
        "INPUT_URL_NOT_FOUND" -> Right InputURLNotFound
        "NO_AMP_URL" -> Right NoAmpURL
        "APPLICATION_ERROR" -> Right ApplicationError
        "URL_IS_VALID_AMP" -> Right URLIsValidAmp
        "URL_IS_INVALID_AMP" -> Right URLIsInvalidAmp
        x -> Left ("Unable to parse AmpURLErrorErrorCode from: " <> x)

instance ToHttpApiData AmpURLErrorErrorCode where
    toQueryParam = \case
        ErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        InputURLNotFound -> "INPUT_URL_NOT_FOUND"
        NoAmpURL -> "NO_AMP_URL"
        ApplicationError -> "APPLICATION_ERROR"
        URLIsValidAmp -> "URL_IS_VALID_AMP"
        URLIsInvalidAmp -> "URL_IS_INVALID_AMP"

instance FromJSON AmpURLErrorErrorCode where
    parseJSON = parseJSONText "AmpURLErrorErrorCode"

instance ToJSON AmpURLErrorErrorCode where
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

-- | The lookup_strategy being requested.
data BatchGetAmpURLsRequestLookupStrategy
    = FetchLiveDoc
      -- ^ @FETCH_LIVE_DOC@
      -- FETCH_LIVE_DOC strategy involves live document fetch of URLs not found
      -- in the index. Any request URL not found in the index is crawled in
      -- realtime to validate if there is a corresponding AMP URL. This strategy
      -- has higher coverage but with extra latency introduced by realtime
      -- crawling. This is the default strategy. Applications using this strategy
      -- should set higher HTTP timeouts of the API calls.
    | InIndexDoc
      -- ^ @IN_INDEX_DOC@
      -- IN_INDEX_DOC strategy skips fetching live documents of URL(s) not found
      -- in index. For applications which need low latency use of IN_INDEX_DOC
      -- strategy is recommended.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchGetAmpURLsRequestLookupStrategy

instance FromHttpApiData BatchGetAmpURLsRequestLookupStrategy where
    parseQueryParam = \case
        "FETCH_LIVE_DOC" -> Right FetchLiveDoc
        "IN_INDEX_DOC" -> Right InIndexDoc
        x -> Left ("Unable to parse BatchGetAmpURLsRequestLookupStrategy from: " <> x)

instance ToHttpApiData BatchGetAmpURLsRequestLookupStrategy where
    toQueryParam = \case
        FetchLiveDoc -> "FETCH_LIVE_DOC"
        InIndexDoc -> "IN_INDEX_DOC"

instance FromJSON BatchGetAmpURLsRequestLookupStrategy where
    parseJSON = parseJSONText "BatchGetAmpURLsRequestLookupStrategy"

instance ToJSON BatchGetAmpURLsRequestLookupStrategy where
    toJSON = toJSONText
