{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.IAMCredentials.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.IAMCredentials.Types
    (
    -- * Service Configuration
      iAMCredentialsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GenerateIdTokenRequest
    , GenerateIdTokenRequest
    , generateIdTokenRequest
    , gitrAudience
    , gitrDelegates
    , gitrIncludeEmail

    -- * GenerateAccessTokenResponse
    , GenerateAccessTokenResponse
    , generateAccessTokenResponse
    , gatrAccessToken
    , gatrExpireTime

    -- * SignJwtResponse
    , SignJwtResponse
    , signJwtResponse
    , sjrKeyId
    , sjrSignedJwt

    -- * SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrDelegates
    , sbrPayload

    -- * Xgafv
    , Xgafv (..)

    -- * GenerateAccessTokenRequest
    , GenerateAccessTokenRequest
    , generateAccessTokenRequest
    , gatrDelegates
    , gatrLifetime
    , gatrScope

    -- * SignJwtRequest
    , SignJwtRequest
    , signJwtRequest
    , sjrDelegates
    , sjrPayload

    -- * SignBlobResponse
    , SignBlobResponse
    , signBlobResponse
    , sbrKeyId
    , sbrSignedBlob

    -- * GenerateIdTokenResponse
    , GenerateIdTokenResponse
    , generateIdTokenResponse
    , gitrToken
    ) where

import Network.Google.IAMCredentials.Types.Product
import Network.Google.IAMCredentials.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the IAM Service Account Credentials API. This contains the host and root path used as a starting point for constructing service requests.
iAMCredentialsService :: ServiceConfig
iAMCredentialsService
  = defaultService (ServiceId "iamcredentials:v1")
      "iamcredentials.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
