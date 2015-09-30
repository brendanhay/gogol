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

    -- ** Oauth2GetCertForOpenIdConnect
    , module Network.Google.Method.OAuth2.GetCertForOpenIdConnect

    -- ** Oauth2Tokeninfo
    , module Network.Google.Method.OAuth2.Tokeninfo

    -- * REST Resources

    -- ** Oauth2UserinfoGet
    , module Network.Google.Resource.OAuth2.Userinfo.Get

    -- ** Oauth2UserinfoV2MeGet
    , module Network.Google.Resource.OAuth2.Userinfo.V2.Me.Get

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

    -- ** Tokeninfo
    , Tokeninfo
    , tokeninfo
    , tAudience
    , tEmail
    , tExpiresIn
    , tAccessType
    , tScope
    , tVerifiedEmail
    , tUserId
    , tTokenHandle
    , tIssuedTo

    -- ** Jwk
    , Jwk
    , jwk
    , jwkKeys

    -- ** Userinfoplus
    , Userinfoplus
    , userinfoplus
    , uHd
    , uEmail
    , uLink
    , uLocale
    , uGivenName
    , uFamilyName
    , uPicture
    , uGender
    , uName
    , uVerifiedEmail
    , uId

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.Method.OAuth2.GetCertForOpenIdConnect
import           Network.Google.Method.OAuth2.Tokeninfo
import           Network.Google.OAuth2.Types
import           Network.Google.Prelude
import           Network.Google.Resource.OAuth2.Userinfo.Get
import           Network.Google.Resource.OAuth2.Userinfo.V2.Me.Get

{- $resources
TODO
-}

type OAuth2API =
     UserinfoV2MeGetResource :<|> UserinfoGetResource :<|>
       GetCertForOpenIdConnectMethod
       :<|> TokeninfoMethod

oAuth2API :: Proxy OAuth2API
oAuth2API = Proxy
