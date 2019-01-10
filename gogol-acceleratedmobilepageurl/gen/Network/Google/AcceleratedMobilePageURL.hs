{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AcceleratedMobilePageURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a
-- given list of public URL(s).
--
-- /See:/ <https://developers.google.com/amp/cache/ Accelerated Mobile Pages (AMP) URL API Reference>
module Network.Google.AcceleratedMobilePageURL
    (
    -- * Service Configuration
      acceleratedMobilePageUrlService

    -- * API Declaration
    , AcceleratedMobilePageUrlAPI

    -- * Resources

    -- ** acceleratedmobilepageurl.ampUrls.batchGet
    , module Network.Google.Resource.AcceleratedMobilePageURL.AmpURLs.BatchGet

    -- * Types

    -- ** AmpURLError
    , AmpURLError
    , ampURLError
    , aueOriginalURL
    , aueErrorCode
    , aueErrorMessage

    -- ** AmpURLErrorErrorCode
    , AmpURLErrorErrorCode (..)

    -- ** BatchGetAmpURLsResponse
    , BatchGetAmpURLsResponse
    , batchGetAmpURLsResponse
    , bgaurAmpURLs
    , bgaurURLErrors

    -- ** BatchGetAmpURLsRequest
    , BatchGetAmpURLsRequest
    , batchGetAmpURLsRequest
    , bgaurURLs
    , bgaurLookupStrategy

    -- ** AmpURL
    , AmpURL
    , ampURL
    , auOriginalURL
    , auAmpURL
    , auCdnAmpURL

    -- ** Xgafv
    , Xgafv (..)

    -- ** BatchGetAmpURLsRequestLookupStrategy
    , BatchGetAmpURLsRequestLookupStrategy (..)
    ) where

import           Network.Google.AcceleratedMobilePageURL.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AcceleratedMobilePageURL.AmpURLs.BatchGet

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Accelerated Mobile Pages (AMP) URL API service.
type AcceleratedMobilePageUrlAPI =
     AmpURLsBatchGetResource
