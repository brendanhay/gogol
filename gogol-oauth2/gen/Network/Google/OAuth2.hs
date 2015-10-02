{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.OAuth2
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you access OAuth2 protocol related APIs.
--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference>
module Network.Google.OAuth2
    (
    -- * API
      OAuth2API
    , oAuth2API
    , oAuth2URL

    -- * Service Methods

    -- ** OAuth2GetCertForOpenIdConnect
    , module Network.Google.Method.OAuth2.GetCertForOpenIdConnect

    -- ** OAuth2TokenInfo
    , module Network.Google.Method.OAuth2.TokenInfo

    -- * REST Resources

    -- ** OAuth2UserInfoGet
    , module Network.Google.Resource.OAuth2.UserInfo.Get

    -- ** OAuth2UserInfoV2MeGet
    , module Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get

    -- * Types

    -- ** JwkKeys
    , JwkKeys
    , jwkKeys
    , jkAlg
    , jkUse
    , jkKid
    , jkN
    , jkE
    , jkKty

    -- ** TokenInfo
    , TokenInfo
    , tokenInfo
    , tiAudience
    , tiEmail
    , tiExpiresIn
    , tiAccessType
    , tiScope
    , tiVerifiedEmail
    , tiUserId
    , tiTokenHandle
    , tiIssuedTo

    -- ** Jwk
    , Jwk
    , jwk
    , jwkKeys

    -- ** UserInfoplus
    , UserInfoplus
    , userInfoplus
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
    ) where

import           Network.Google.Method.OAuth2.GetCertForOpenIdConnect
import           Network.Google.Method.OAuth2.TokenInfo
import           Network.Google.OAuth2.Types
import           Network.Google.Prelude
import           Network.Google.Resource.OAuth2.UserInfo.Get
import           Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get

{- $resources
TODO
-}

type OAuth2API =
     UserInfoV2MeGetResource :<|> UserInfoGetResource :<|>
       GetCertForOpenIdConnectMethod
       :<|> TokenInfoMethod

oAuth2API :: Proxy OAuth2API
oAuth2API = Proxy
