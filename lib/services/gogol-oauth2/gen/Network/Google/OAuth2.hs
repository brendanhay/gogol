{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.OAuth2
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains end-user authorization grants for use with other Google APIs.
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference>
module Network.Google.OAuth2
    (
    -- * Service Configuration
      oAuth2Service

    -- * OAuth Scopes
    , userInfoProFileScope
    , userInfoEmailScope
    , openidScope

    -- * API Declaration
    , OAuth2API

    -- * Methods

    -- ** oauth2.tokeninfo
    , module Network.Google.Method.OAuth2.TokenInfo

    -- * Resources

    -- ** oauth2.userinfo.get
    , module Network.Google.Resource.OAuth2.UserInfo.Get

    -- ** oauth2.userinfo.v2.me.get
    , module Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get

    -- * Types

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiHd
    , uiEmail
    , uiLink
    , uiLocale
    , uiGivenName
    , uiFamilyName
    , uiPicture
    , uiGender
    , uiName
    , uiVerifiedEmail
    , uiId

    -- ** TokenInfo
    , TokenInfo
    , tokenInfo
    , tiAudience
    , tiEmail
    , tiExpiresIn
    , tiScope
    , tiVerifiedEmail
    , tiUserId
    , tiIssuedTo
    ) where

import Network.Google.Prelude
import Network.Google.Method.OAuth2.TokenInfo
import Network.Google.OAuth2.Types
import Network.Google.Resource.OAuth2.UserInfo.Get
import Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google OAuth2 API service.
type OAuth2API =
     UserInfoV2MeGetResource :<|> UserInfoGetResource :<|>
       TokenInfoMethod
