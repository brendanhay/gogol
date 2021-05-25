{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SiteVerification
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies ownership of websites or domains with Google.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference>
module Network.Google.SiteVerification
    (
    -- * Service Configuration
      siteVerificationService

    -- * OAuth Scopes
    , siteVerificationVerifyOnlyScope
    , siteVerificationScope

    -- * API Declaration
    , SiteVerificationAPI

    -- * Resources

    -- ** siteVerification.webResource.delete
    , module Network.Google.Resource.SiteVerification.WebResource.Delete

    -- ** siteVerification.webResource.get
    , module Network.Google.Resource.SiteVerification.WebResource.Get

    -- ** siteVerification.webResource.getToken
    , module Network.Google.Resource.SiteVerification.WebResource.GetToken

    -- ** siteVerification.webResource.insert
    , module Network.Google.Resource.SiteVerification.WebResource.Insert

    -- ** siteVerification.webResource.list
    , module Network.Google.Resource.SiteVerification.WebResource.List

    -- ** siteVerification.webResource.patch
    , module Network.Google.Resource.SiteVerification.WebResource.Patch

    -- ** siteVerification.webResource.update
    , module Network.Google.Resource.SiteVerification.WebResource.Update

    -- * Types

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

    -- ** SiteVerificationWebResourceResourceSite
    , SiteVerificationWebResourceResourceSite
    , siteVerificationWebResourceResourceSite
    , svwrrsIdentifier
    , svwrrsType

    -- ** SiteVerificationWebResourceGettokenRequest
    , SiteVerificationWebResourceGettokenRequest
    , siteVerificationWebResourceGettokenRequest
    , svwrgrSite
    , svwrgrVerificationMethod

    -- ** SiteVerificationWebResourceResource
    , SiteVerificationWebResourceResource
    , siteVerificationWebResourceResource
    , svwrrOwners
    , svwrrId
    , svwrrSite
    ) where

import Network.Google.Prelude
import Network.Google.Resource.SiteVerification.WebResource.Delete
import Network.Google.Resource.SiteVerification.WebResource.Get
import Network.Google.Resource.SiteVerification.WebResource.GetToken
import Network.Google.Resource.SiteVerification.WebResource.Insert
import Network.Google.Resource.SiteVerification.WebResource.List
import Network.Google.Resource.SiteVerification.WebResource.Patch
import Network.Google.Resource.SiteVerification.WebResource.Update
import Network.Google.SiteVerification.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Site Verification API service.
type SiteVerificationAPI =
     WebResourceInsertResource :<|>
       WebResourceListResource
       :<|> WebResourcePatchResource
       :<|> WebResourceGetResource
       :<|> WebResourceGetTokenResource
       :<|> WebResourceDeleteResource
       :<|> WebResourceUpdateResource
