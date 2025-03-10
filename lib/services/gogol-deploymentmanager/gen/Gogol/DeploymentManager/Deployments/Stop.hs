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
-- Module      : Gogol.DeploymentManager.Deployments.Stop
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an ongoing operation. This does not roll back any work that has already been completed, but prevents any new work from being started.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.stop@.
module Gogol.DeploymentManager.Deployments.Stop
  ( -- * Resource
    DeploymentManagerDeploymentsStopResource,

    -- ** Constructing a Request
    DeploymentManagerDeploymentsStop (..),
    newDeploymentManagerDeploymentsStop,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.deployments.stop@ method which the
-- 'DeploymentManagerDeploymentsStop' request conforms to.
type DeploymentManagerDeploymentsStopResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "deployment" Core.Text
    Core.:> "stop"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeploymentsStopRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Stops an ongoing operation. This does not roll back any work that has already been completed, but prevents any new work from being started.
--
-- /See:/ 'newDeploymentManagerDeploymentsStop' smart constructor.
data DeploymentManagerDeploymentsStop = DeploymentManagerDeploymentsStop
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeploymentsStopRequest,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsStop' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsStop ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeploymentsStopRequest ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerDeploymentsStop
newDeploymentManagerDeploymentsStop deployment payload project =
  DeploymentManagerDeploymentsStop
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deployment = deployment,
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DeploymentManagerDeploymentsStop where
  type Rs DeploymentManagerDeploymentsStop = Operation
  type
    Scopes DeploymentManagerDeploymentsStop =
      '[CloudPlatform'FullControl, Ndev'Cloudman]
  requestClient DeploymentManagerDeploymentsStop {..} =
    go
      project
      deployment
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      deploymentManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DeploymentManagerDeploymentsStopResource)
          Core.mempty
