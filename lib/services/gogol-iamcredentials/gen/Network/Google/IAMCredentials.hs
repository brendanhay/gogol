{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IAMCredentials
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates short-lived credentials for impersonating IAM service accounts.
-- To enable this API, you must enable the IAM API (iam.googleapis.com).
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference>
module Network.Google.IAMCredentials
    (
    -- * Service Configuration
      iAMCredentialsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAMCredentialsAPI

    -- * Resources

    -- ** iamcredentials.projects.serviceAccounts.generateAccessToken
    , module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken

    -- ** iamcredentials.projects.serviceAccounts.generateIdToken
    , module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken

    -- ** iamcredentials.projects.serviceAccounts.signBlob
    , module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignBlob

    -- ** iamcredentials.projects.serviceAccounts.signJwt
    , module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignJwt

    -- * Types

    -- ** GenerateIdTokenRequest
    , GenerateIdTokenRequest
    , generateIdTokenRequest
    , gitrAudience
    , gitrDelegates
    , gitrIncludeEmail

    -- ** GenerateAccessTokenResponse
    , GenerateAccessTokenResponse
    , generateAccessTokenResponse
    , gatrAccessToken
    , gatrExpireTime

    -- ** SignJwtResponse
    , SignJwtResponse
    , signJwtResponse
    , sjrKeyId
    , sjrSignedJwt

    -- ** SignBlobRequest
    , SignBlobRequest
    , signBlobRequest
    , sbrDelegates
    , sbrPayload

    -- ** Xgafv
    , Xgafv (..)

    -- ** GenerateAccessTokenRequest
    , GenerateAccessTokenRequest
    , generateAccessTokenRequest
    , gatrDelegates
    , gatrLifetime
    , gatrScope

    -- ** SignJwtRequest
    , SignJwtRequest
    , signJwtRequest
    , sjrDelegates
    , sjrPayload

    -- ** SignBlobResponse
    , SignBlobResponse
    , signBlobResponse
    , sbrKeyId
    , sbrSignedBlob

    -- ** GenerateIdTokenResponse
    , GenerateIdTokenResponse
    , generateIdTokenResponse
    , gitrToken
    ) where

import Network.Google.Prelude
import Network.Google.IAMCredentials.Types
import Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
import Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken
import Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignBlob
import Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignJwt

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the IAM Service Account Credentials API service.
type IAMCredentialsAPI =
     ProjectsServiceAccountsGenerateAccessTokenResource
       :<|> ProjectsServiceAccountsSignJwtResource
       :<|> ProjectsServiceAccountsGenerateIdTokenResource
       :<|> ProjectsServiceAccountsSignBlobResource
