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
    -- * REST Resources

    -- ** Google OAuth2 API
      OAuth2
    , oAuth2
    , oAuth2URL

    -- ** oauth2.userinfo.v2.me.get
    , module Network.Google.API.OAuth2.Userinfo.V2.Me.Get

    -- * Types

    -- ** Alt
    , Alt (..)

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

    -- ** Jwk
    , Jwk
    , jwk
    , jwkKeys

    -- ** JwkItemKeys
    , JwkItemKeys
    , jwkItemKeys
    , jikAlg
    , jikUse
    , jikKid
    , jikN
    , jikE
    , jikKty

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
    ) where

import           Network.Google.API.OAuth2.Userinfo.V2.Me.Get
import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type OAuth2 = UserinfoV2MeGetAPI

oAuth2 :: Proxy OAuth2
oAuth2 = Proxy
