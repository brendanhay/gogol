-- |
-- Module      : Network.Google.SiteVerification
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you programatically verify ownership of websites or domains with Google.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference>
module Network.Google.SiteVerification
    (
    -- * API Definition
      SiteVerification



    -- * Types

    -- ** SiteVerificationWebResourceGettokenRequest
    , SiteVerificationWebResourceGettokenRequest
    , siteVerificationWebResourceGettokenRequest
    , svwrgrSite
    , svwrgrVerificationMethod

    -- ** SiteVerificationWebResourceGettokenRequestSite
    , SiteVerificationWebResourceGettokenRequestSite
    , siteVerificationWebResourceGettokenRequestSite
    , svwrgrsIdentifier
    , svwrgrsType

    -- ** SiteVerificationWebResourceGettokenResponse
    , SiteVerificationWebResourceGettokenResponse
    , siteVerificationWebResourceGettokenResponse
    , svwrgrToken
    , svwrgrMethod

    -- ** SiteVerificationWebResourceListResponse
    , SiteVerificationWebResourceListResponse
    , siteVerificationWebResourceListResponse
    , svwrlrItems

    -- ** SiteVerificationWebResourceResource
    , SiteVerificationWebResourceResource
    , siteVerificationWebResourceResource
    , svwrrOwners
    , svwrrId
    , svwrrSite

    -- ** SiteVerificationWebResourceResourceSite
    , SiteVerificationWebResourceResourceSite
    , siteVerificationWebResourceResourceSite
    , svwrrsIdentifier
    , svwrrsType
    ) where

import           Network.Google.SiteVerification.Types

{- $resources
TODO
-}

type SiteVerification = ()

siteVerification :: Proxy SiteVerification
siteVerification = Proxy




