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
    -- * Resources
      OAuth2
    , UserinfoAPI
    , V2API
    , MeAPI
    , MeGet

    -- * Types

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
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type OAuth2 = UserinfoAPI

type UserinfoAPI = V2API

type V2API = MeAPI

type MeAPI = MeGet

type MeGet =
     "userinfo" :>
       "v2" :>
         "me" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Text :> Get '[JSON] Userinfoplus
