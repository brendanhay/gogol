{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OAuth2.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OAuth2.Types
    (
    -- * Service Configuration
      oAuth2Service

    -- * OAuth Scopes
    , userInfoProFileScope
    , userInfoEmailScope
    , plusMeScope

    -- * TokenInfo
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

    -- * JWK
    , JWK
    , jwk
    , jKeys

    -- * JWKKeysItem
    , JWKKeysItem
    , jwkKeysItem
    , jkiAlg
    , jkiUse
    , jkiKid
    , jkiN
    , jkiE
    , jkiKty

    -- * UserInfoplus
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

import           Network.Google.OAuth2.Types.Product
import           Network.Google.OAuth2.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Google OAuth2 API. This contains the host and root path used as a starting point for constructing service requests.
oAuth2Service :: ServiceConfig
oAuth2Service
  = defaultService (ServiceId "oauth2:v2")
      "www.googleapis.com"

-- | See your personal info, including any personal info you\'ve made
-- publicly available
userInfoProFileScope :: Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userInfoProFileScope = Proxy

-- | View your email address
userInfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userInfoEmailScope = Proxy

-- | Associate you with your personal info on Google
plusMeScope :: Proxy '["https://www.googleapis.com/auth/plus.me"]
plusMeScope = Proxy
