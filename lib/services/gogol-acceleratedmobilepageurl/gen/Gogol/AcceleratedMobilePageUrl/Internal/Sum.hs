{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AcceleratedMobilePageUrl.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AcceleratedMobilePageUrl.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AmpUrlError_ErrorCode
    AmpUrlError_ErrorCode
      (
        AmpUrlError_ErrorCode_ERRORCODEUNSPECIFIED,
        AmpUrlError_ErrorCode_INPUTURLNOTFOUND,
        AmpUrlError_ErrorCode_NOAMPURL,
        AmpUrlError_ErrorCode_APPLICATIONERROR,
        AmpUrlError_ErrorCode_URLISVALIDAMP,
        AmpUrlError_ErrorCode_URLISINVALIDAMP,
        ..
      ),

    -- * BatchGetAmpUrlsRequest_LookupStrategy
    BatchGetAmpUrlsRequest_LookupStrategy
      (
        BatchGetAmpUrlsRequest_LookupStrategy_FETCHLIVEDOC,
        BatchGetAmpUrlsRequest_LookupStrategy_ININDEXDOC,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The error code of an API call.
newtype AmpUrlError_ErrorCode = AmpUrlError_ErrorCode { fromAmpUrlError_ErrorCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not specified error.
pattern AmpUrlError_ErrorCode_ERRORCODEUNSPECIFIED :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_ERRORCODEUNSPECIFIED = AmpUrlError_ErrorCode "ERROR_CODE_UNSPECIFIED"

-- | Indicates the requested URL is not found in the index, possibly because it\'s unable to be found, not able to be accessed by Googlebot, or some other error.
pattern AmpUrlError_ErrorCode_INPUTURLNOTFOUND :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_INPUTURLNOTFOUND = AmpUrlError_ErrorCode "INPUT_URL_NOT_FOUND"

-- | Indicates no AMP URL has been found that corresponds to the requested URL.
pattern AmpUrlError_ErrorCode_NOAMPURL :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_NOAMPURL = AmpUrlError_ErrorCode "NO_AMP_URL"

-- | Indicates some kind of application error occurred at the server. Client advised to retry.
pattern AmpUrlError_ErrorCode_APPLICATIONERROR :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_APPLICATIONERROR = AmpUrlError_ErrorCode "APPLICATION_ERROR"

-- | DEPRECATED: Indicates the requested URL is a valid AMP URL. This is a non-error state, should not be relied upon as a sign of success or failure. It will be removed in future versions of the API.
pattern AmpUrlError_ErrorCode_URLISVALIDAMP :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_URLISVALIDAMP = AmpUrlError_ErrorCode "URL_IS_VALID_AMP"

-- | Indicates that an AMP URL has been found that corresponds to the request URL, but it is not valid AMP HTML.
pattern AmpUrlError_ErrorCode_URLISINVALIDAMP :: AmpUrlError_ErrorCode
pattern AmpUrlError_ErrorCode_URLISINVALIDAMP = AmpUrlError_ErrorCode "URL_IS_INVALID_AMP"

{-# COMPLETE
  AmpUrlError_ErrorCode_ERRORCODEUNSPECIFIED,
  AmpUrlError_ErrorCode_INPUTURLNOTFOUND,
  AmpUrlError_ErrorCode_NOAMPURL,
  AmpUrlError_ErrorCode_APPLICATIONERROR,
  AmpUrlError_ErrorCode_URLISVALIDAMP,
  AmpUrlError_ErrorCode_URLISINVALIDAMP,
  AmpUrlError_ErrorCode #-}

-- | The lookup_strategy being requested.
newtype BatchGetAmpUrlsRequest_LookupStrategy = BatchGetAmpUrlsRequest_LookupStrategy { fromBatchGetAmpUrlsRequest_LookupStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | FETCH/LIVE/DOC strategy involves live document fetch of URLs not found in the index. Any request URL not found in the index is crawled in realtime to validate if there is a corresponding AMP URL. This strategy has higher coverage but with extra latency introduced by realtime crawling. This is the default strategy. Applications using this strategy should set higher HTTP timeouts of the API calls.
pattern BatchGetAmpUrlsRequest_LookupStrategy_FETCHLIVEDOC :: BatchGetAmpUrlsRequest_LookupStrategy
pattern BatchGetAmpUrlsRequest_LookupStrategy_FETCHLIVEDOC = BatchGetAmpUrlsRequest_LookupStrategy "FETCH_LIVE_DOC"

-- | IN/INDEX/DOC strategy skips fetching live documents of URL(s) not found in index. For applications which need low latency use of IN/INDEX/DOC strategy is recommended.
pattern BatchGetAmpUrlsRequest_LookupStrategy_ININDEXDOC :: BatchGetAmpUrlsRequest_LookupStrategy
pattern BatchGetAmpUrlsRequest_LookupStrategy_ININDEXDOC = BatchGetAmpUrlsRequest_LookupStrategy "IN_INDEX_DOC"

{-# COMPLETE
  BatchGetAmpUrlsRequest_LookupStrategy_FETCHLIVEDOC,
  BatchGetAmpUrlsRequest_LookupStrategy_ININDEXDOC,
  BatchGetAmpUrlsRequest_LookupStrategy #-}
