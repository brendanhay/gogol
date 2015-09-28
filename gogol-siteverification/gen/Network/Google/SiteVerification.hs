{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SiteVerification
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you programatically verify ownership of websites or domains with
-- Google.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference>
module Network.Google.SiteVerification
    (
    -- * REST Resources

    -- ** Google Site Verification API
      SiteVerification
    , siteVerification
    , siteVerificationURL

    -- ** siteVerification.webResource.delete
    , module Network.Google.API.SiteVerification.WebResource.Delete

    -- ** siteVerification.webResource.get
    , module Network.Google.API.SiteVerification.WebResource.Get

    -- ** siteVerification.webResource.getToken
    , module Network.Google.API.SiteVerification.WebResource.GetToken

    -- ** siteVerification.webResource.insert
    , module Network.Google.API.SiteVerification.WebResource.Insert

    -- ** siteVerification.webResource.list
    , module Network.Google.API.SiteVerification.WebResource.List

    -- ** siteVerification.webResource.patch
    , module Network.Google.API.SiteVerification.WebResource.Patch

    -- ** siteVerification.webResource.update
    , module Network.Google.API.SiteVerification.WebResource.Update

    -- * Types

    -- ** SiteVerificationWebResourceGettokenRequest
    , SiteVerificationWebResourceGettokenRequest
    , siteVerificationWebResourceGettokenRequest
    , svwrgrSite
    , svwrgrVerificationMethod

    -- ** Alt
    , Alt (..)

    -- ** SiteVerificationWebResourceGettokenResponse
    , SiteVerificationWebResourceGettokenResponse
    , siteVerificationWebResourceGettokenResponse
    , svwrgrToken
    , svwrgrMethod

    -- ** SiteVerificationWebResourceGettokenRequestSite
    , SiteVerificationWebResourceGettokenRequestSite
    , siteVerificationWebResourceGettokenRequestSite
    , svwrgrsIdentifier
    , svwrgrsType

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

    -- ** SiteVerificationWebResourceListResponse
    , SiteVerificationWebResourceListResponse
    , siteVerificationWebResourceListResponse
    , svwrlrItems
    ) where

import           Network.Google.API.SiteVerification.WebResource.Delete
import           Network.Google.API.SiteVerification.WebResource.Get
import           Network.Google.API.SiteVerification.WebResource.GetToken
import           Network.Google.API.SiteVerification.WebResource.Insert
import           Network.Google.API.SiteVerification.WebResource.List
import           Network.Google.API.SiteVerification.WebResource.Patch
import           Network.Google.API.SiteVerification.WebResource.Update
import           Network.Google.Prelude
import           Network.Google.SiteVerification.Types

{- $resources
TODO
-}

type SiteVerification =
     WebResourceUpdateAPI :<|> WebResourceGetAPI :<|>
       WebResourceListAPI
       :<|> WebResourcePatchAPI
       :<|> WebResourceGetTokenAPI
       :<|> WebResourceInsertAPI
       :<|> WebResourceDeleteAPI

siteVerification :: Proxy SiteVerification
siteVerification = Proxy
