{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AcceleratedMobilePageURL.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AcceleratedMobilePageURL.Types
    (
    -- * Service Configuration
      acceleratedMobilePageUrlService

    -- * AmpURLError
    , AmpURLError
    , ampURLError
    , aueOriginalURL
    , aueErrorCode
    , aueErrorMessage

    -- * AmpURLErrorErrorCode
    , AmpURLErrorErrorCode (..)

    -- * BatchGetAmpURLsResponse
    , BatchGetAmpURLsResponse
    , batchGetAmpURLsResponse
    , bgaurAmpURLs
    , bgaurURLErrors

    -- * BatchGetAmpURLsRequest
    , BatchGetAmpURLsRequest
    , batchGetAmpURLsRequest
    , bgaurURLs
    , bgaurLookupStrategy

    -- * AmpURL
    , AmpURL
    , ampURL
    , auOriginalURL
    , auAmpURL
    , auCdnAmpURL

    -- * Xgafv
    , Xgafv (..)

    -- * BatchGetAmpURLsRequestLookupStrategy
    , BatchGetAmpURLsRequestLookupStrategy (..)
    ) where

import Network.Google.AcceleratedMobilePageURL.Types.Product
import Network.Google.AcceleratedMobilePageURL.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Accelerated Mobile Pages (AMP) URL API. This contains the host and root path used as a starting point for constructing service requests.
acceleratedMobilePageUrlService :: ServiceConfig
acceleratedMobilePageUrlService
  = defaultService
      (ServiceId "acceleratedmobilepageurl:v1")
      "acceleratedmobilepageurl.googleapis.com"
