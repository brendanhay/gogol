{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OAuth2.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , openidScope

    -- * UserInfo
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

    -- * TokenInfo
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

import Network.Google.OAuth2.Types.Product
import Network.Google.OAuth2.Types.Sum
import Network.Google.Prelude

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
openidScope :: Proxy '["openid"]
openidScope = Proxy
