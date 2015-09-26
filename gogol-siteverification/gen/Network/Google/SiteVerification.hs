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
    -- * Resources
      SiteVerification
    , WebResourceAPI
    , WebResourceInsert
    , WebResourceList
    , WebResourcePatch
    , WebResourceGet
    , WebResourceGetToken
    , WebResourceDelete
    , WebResourceUpdate

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

type SiteVerification = WebResourceAPI

type WebResourceAPI =
     WebResourceList :<|>
       WebResourcePatch :<|>
         WebResourceGet :<|>
           WebResourceGetToken :<|>
             WebResourceDelete :<|>
               WebResourceUpdate :<|> WebResourceInsert

-- | Attempt verification of a website or domain.
type WebResourceInsert =
     "siteVerification" :> "v1" :> "webResource" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "verificationMethod" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the list of your verified websites and domains.
type WebResourceList =
     "siteVerification" :> "v1" :> "webResource" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modify the list of owners for your website or domain. This method
-- supports patch semantics.
type WebResourcePatch =
     "siteVerification" :> "v1" :> "webResource" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get the most current data for a website or domain.
type WebResourceGet =
     "siteVerification" :> "v1" :> "webResource" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get a verification token for placing on a website or domain.
type WebResourceGetToken =
     "siteVerification" :> "v1" :> "token" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Relinquish ownership of a website or domain.
type WebResourceDelete =
     "siteVerification" :> "v1" :> "webResource" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modify the list of owners for your website or domain.
type WebResourceUpdate =
     "siteVerification" :> "v1" :> "webResource" :>
       Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
