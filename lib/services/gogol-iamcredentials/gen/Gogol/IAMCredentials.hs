{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAMCredentials
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates short-lived credentials for impersonating IAM service accounts. To enable this API, you must enable the IAM API (iam.googleapis.com).
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference>
module Gogol.IAMCredentials
    (
    -- * Configuration
      iAMCredentialsService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Resources

    -- ** iamcredentials.projects.serviceAccounts.generateAccessToken
    , IAMCredentialsProjectsServiceAccountsGenerateAccessTokenResource
    , newIAMCredentialsProjectsServiceAccountsGenerateAccessToken
    , IAMCredentialsProjectsServiceAccountsGenerateAccessToken

    -- ** iamcredentials.projects.serviceAccounts.generateIdToken
    , IAMCredentialsProjectsServiceAccountsGenerateIdTokenResource
    , newIAMCredentialsProjectsServiceAccountsGenerateIdToken
    , IAMCredentialsProjectsServiceAccountsGenerateIdToken

    -- ** iamcredentials.projects.serviceAccounts.signBlob
    , IAMCredentialsProjectsServiceAccountsSignBlobResource
    , newIAMCredentialsProjectsServiceAccountsSignBlob
    , IAMCredentialsProjectsServiceAccountsSignBlob

    -- ** iamcredentials.projects.serviceAccounts.signJwt
    , IAMCredentialsProjectsServiceAccountsSignJwtResource
    , newIAMCredentialsProjectsServiceAccountsSignJwt
    , IAMCredentialsProjectsServiceAccountsSignJwt

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GenerateAccessTokenRequest
    , GenerateAccessTokenRequest (..)
    , newGenerateAccessTokenRequest

    -- ** GenerateAccessTokenResponse
    , GenerateAccessTokenResponse (..)
    , newGenerateAccessTokenResponse

    -- ** GenerateIdTokenRequest
    , GenerateIdTokenRequest (..)
    , newGenerateIdTokenRequest

    -- ** GenerateIdTokenResponse
    , GenerateIdTokenResponse (..)
    , newGenerateIdTokenResponse

    -- ** SignBlobRequest
    , SignBlobRequest (..)
    , newSignBlobRequest

    -- ** SignBlobResponse
    , SignBlobResponse (..)
    , newSignBlobResponse

    -- ** SignJwtRequest
    , SignJwtRequest (..)
    , newSignJwtRequest

    -- ** SignJwtResponse
    , SignJwtResponse (..)
    , newSignJwtResponse
    ) where

import Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
import Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken
import Gogol.IAMCredentials.Projects.ServiceAccounts.SignBlob
import Gogol.IAMCredentials.Projects.ServiceAccounts.SignJwt
import Gogol.IAMCredentials.Types
