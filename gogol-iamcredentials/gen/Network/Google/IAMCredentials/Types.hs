{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.IAMCredentials.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.IAMCredentials.Types
  ( -- * Configuration
    iAMCredentialsService,

    -- * OAuth Scopes
    cloudPlatformScope,

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

import Network.Google.IAMCredentials.Internal.Product
import Network.Google.IAMCredentials.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the IAM Service Account Credentials API. This contains the host and root path used as a starting point for constructing service requests.
iAMCredentialsService :: Core.ServiceConfig
iAMCredentialsService =
  Core.defaultService
    (Core.ServiceId "iamcredentials:v1")
    "iamcredentials.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
