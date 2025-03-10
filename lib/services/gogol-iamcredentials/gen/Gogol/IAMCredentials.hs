{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAMCredentials
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates short-lived credentials for impersonating IAM service accounts. Disabling this API also disables the IAM API (iam.googleapis.com). However, enabling this API doesn\'t enable the IAM API.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference>
module Gogol.IAMCredentials
  ( -- * Configuration
    iAMCredentialsService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** iamcredentials.projects.serviceAccounts.generateAccessToken
    IAMCredentialsProjectsServiceAccountsGenerateAccessTokenResource,
    IAMCredentialsProjectsServiceAccountsGenerateAccessToken (..),
    newIAMCredentialsProjectsServiceAccountsGenerateAccessToken,

    -- ** iamcredentials.projects.serviceAccounts.generateIdToken
    IAMCredentialsProjectsServiceAccountsGenerateIdTokenResource,
    IAMCredentialsProjectsServiceAccountsGenerateIdToken (..),
    newIAMCredentialsProjectsServiceAccountsGenerateIdToken,

    -- ** iamcredentials.projects.serviceAccounts.getAllowedLocations
    IAMCredentialsProjectsServiceAccountsGetAllowedLocationsResource,
    IAMCredentialsProjectsServiceAccountsGetAllowedLocations (..),
    newIAMCredentialsProjectsServiceAccountsGetAllowedLocations,

    -- ** iamcredentials.projects.serviceAccounts.signBlob
    IAMCredentialsProjectsServiceAccountsSignBlobResource,
    IAMCredentialsProjectsServiceAccountsSignBlob (..),
    newIAMCredentialsProjectsServiceAccountsSignBlob,

    -- ** iamcredentials.projects.serviceAccounts.signJwt
    IAMCredentialsProjectsServiceAccountsSignJwtResource,
    IAMCredentialsProjectsServiceAccountsSignJwt (..),
    newIAMCredentialsProjectsServiceAccountsSignJwt,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GenerateAccessTokenRequest
    GenerateAccessTokenRequest (..),
    newGenerateAccessTokenRequest,

    -- ** GenerateAccessTokenResponse
    GenerateAccessTokenResponse (..),
    newGenerateAccessTokenResponse,

    -- ** GenerateIdTokenRequest
    GenerateIdTokenRequest (..),
    newGenerateIdTokenRequest,

    -- ** GenerateIdTokenResponse
    GenerateIdTokenResponse (..),
    newGenerateIdTokenResponse,

    -- ** ServiceAccountAllowedLocations
    ServiceAccountAllowedLocations (..),
    newServiceAccountAllowedLocations,

    -- ** SignBlobRequest
    SignBlobRequest (..),
    newSignBlobRequest,

    -- ** SignBlobResponse
    SignBlobResponse (..),
    newSignBlobResponse,

    -- ** SignJwtRequest
    SignJwtRequest (..),
    newSignJwtRequest,

    -- ** SignJwtResponse
    SignJwtResponse (..),
    newSignJwtResponse,
  )
where

import Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
import Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken
import Gogol.IAMCredentials.Projects.ServiceAccounts.GetAllowedLocations
import Gogol.IAMCredentials.Projects.ServiceAccounts.SignBlob
import Gogol.IAMCredentials.Projects.ServiceAccounts.SignJwt
import Gogol.IAMCredentials.Types
