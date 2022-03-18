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
-- Module      : Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an OAuth 2.0 access token for a service account.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.generateAccessToken@.
module Gogol.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
  ( -- * Resource
    IAMCredentialsProjectsServiceAccountsGenerateAccessTokenResource,

    -- ** Constructing a Request
    newIAMCredentialsProjectsServiceAccountsGenerateAccessToken,
    IAMCredentialsProjectsServiceAccountsGenerateAccessToken,
  )
where

import Gogol.IAMCredentials.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iamcredentials.projects.serviceAccounts.generateAccessToken@ method which the
-- 'IAMCredentialsProjectsServiceAccountsGenerateAccessToken' request conforms to.
type IAMCredentialsProjectsServiceAccountsGenerateAccessTokenResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "generateAccessToken"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateAccessTokenRequest
    Core.:> Core.Post '[Core.JSON] GenerateAccessTokenResponse

-- | Generates an OAuth 2.0 access token for a service account.
--
-- /See:/ 'newIAMCredentialsProjectsServiceAccountsGenerateAccessToken' smart constructor.
data IAMCredentialsProjectsServiceAccountsGenerateAccessToken = IAMCredentialsProjectsServiceAccountsGenerateAccessToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateAccessTokenRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsProjectsServiceAccountsGenerateAccessToken' with the minimum fields required to make a request.
newIAMCredentialsProjectsServiceAccountsGenerateAccessToken ::
  -- |  Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateAccessTokenRequest ->
  IAMCredentialsProjectsServiceAccountsGenerateAccessToken
newIAMCredentialsProjectsServiceAccountsGenerateAccessToken name payload =
  IAMCredentialsProjectsServiceAccountsGenerateAccessToken
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMCredentialsProjectsServiceAccountsGenerateAccessToken
  where
  type
    Rs
      IAMCredentialsProjectsServiceAccountsGenerateAccessToken =
      GenerateAccessTokenResponse
  type
    Scopes
      IAMCredentialsProjectsServiceAccountsGenerateAccessToken =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMCredentialsProjectsServiceAccountsGenerateAccessToken {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        iAMCredentialsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMCredentialsProjectsServiceAccountsGenerateAccessTokenResource
            )
            Core.mempty
