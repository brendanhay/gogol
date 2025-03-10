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
-- Module      : Gogol.IAMCredentials.Projects.ServiceAccounts.GetAllowedLocations
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the trust boundary info for a given service account.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.getAllowedLocations@.
module Gogol.IAMCredentials.Projects.ServiceAccounts.GetAllowedLocations
  ( -- * Resource
    IAMCredentialsProjectsServiceAccountsGetAllowedLocationsResource,

    -- ** Constructing a Request
    IAMCredentialsProjectsServiceAccountsGetAllowedLocations (..),
    newIAMCredentialsProjectsServiceAccountsGetAllowedLocations,
  )
where

import Gogol.IAMCredentials.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iamcredentials.projects.serviceAccounts.getAllowedLocations@ method which the
-- 'IAMCredentialsProjectsServiceAccountsGetAllowedLocations' request conforms to.
type IAMCredentialsProjectsServiceAccountsGetAllowedLocationsResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "allowedLocations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ServiceAccountAllowedLocations

-- | Returns the trust boundary info for a given service account.
--
-- /See:/ 'newIAMCredentialsProjectsServiceAccountsGetAllowedLocations' smart constructor.
data IAMCredentialsProjectsServiceAccountsGetAllowedLocations = IAMCredentialsProjectsServiceAccountsGetAllowedLocations
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of service account.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsProjectsServiceAccountsGetAllowedLocations' with the minimum fields required to make a request.
newIAMCredentialsProjectsServiceAccountsGetAllowedLocations ::
  -- |  Required. Resource name of service account. See 'name'.
  Core.Text ->
  IAMCredentialsProjectsServiceAccountsGetAllowedLocations
newIAMCredentialsProjectsServiceAccountsGetAllowedLocations name =
  IAMCredentialsProjectsServiceAccountsGetAllowedLocations
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMCredentialsProjectsServiceAccountsGetAllowedLocations
  where
  type
    Rs IAMCredentialsProjectsServiceAccountsGetAllowedLocations =
      ServiceAccountAllowedLocations
  type
    Scopes
      IAMCredentialsProjectsServiceAccountsGetAllowedLocations =
      '[]
  requestClient
    IAMCredentialsProjectsServiceAccountsGetAllowedLocations {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        iAMCredentialsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMCredentialsProjectsServiceAccountsGetAllowedLocationsResource
            )
            Core.mempty
