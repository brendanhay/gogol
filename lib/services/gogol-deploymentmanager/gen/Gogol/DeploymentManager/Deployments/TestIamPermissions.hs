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
-- Module      : Gogol.DeploymentManager.Deployments.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.testIamPermissions@.
module Gogol.DeploymentManager.Deployments.TestIamPermissions
  ( -- * Resource
    DeploymentManagerDeploymentsTestIamPermissionsResource,

    -- ** Constructing a Request
    DeploymentManagerDeploymentsTestIamPermissions (..),
    newDeploymentManagerDeploymentsTestIamPermissions,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.deployments.testIamPermissions@ method which the
-- 'DeploymentManagerDeploymentsTestIamPermissions' request conforms to.
type DeploymentManagerDeploymentsTestIamPermissionsResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "testIamPermissions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "header.bypassBillingFilter" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'newDeploymentManagerDeploymentsTestIamPermissions' smart constructor.
data DeploymentManagerDeploymentsTestIamPermissions = DeploymentManagerDeploymentsTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    headerBypassBillingFilter :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: TestPermissionsRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name or id of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsTestIamPermissions' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestPermissionsRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  DeploymentManagerDeploymentsTestIamPermissions
newDeploymentManagerDeploymentsTestIamPermissions
  payload
  project
  resource =
    DeploymentManagerDeploymentsTestIamPermissions
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        headerBypassBillingFilter = Core.Nothing,
        payload = payload,
        project = project,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DeploymentManagerDeploymentsTestIamPermissions
  where
  type
    Rs DeploymentManagerDeploymentsTestIamPermissions =
      TestPermissionsResponse
  type
    Scopes DeploymentManagerDeploymentsTestIamPermissions =
      '[CloudPlatform'FullControl, Ndev'Cloudman]
  requestClient DeploymentManagerDeploymentsTestIamPermissions {..} =
    go
      project
      resource
      xgafv
      accessToken
      callback
      headerBypassBillingFilter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      deploymentManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DeploymentManagerDeploymentsTestIamPermissionsResource
          )
          Core.mempty
