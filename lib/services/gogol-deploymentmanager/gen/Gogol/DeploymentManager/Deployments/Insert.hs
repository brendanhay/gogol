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
-- Module      : Gogol.DeploymentManager.Deployments.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment and all of the resources described by the deployment manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.insert@.
module Gogol.DeploymentManager.Deployments.Insert
  ( -- * Resource
    DeploymentManagerDeploymentsInsertResource,

    -- ** Constructing a Request
    DeploymentManagerDeploymentsInsert (..),
    newDeploymentManagerDeploymentsInsert,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.deployments.insert@ method which the
-- 'DeploymentManagerDeploymentsInsert' request conforms to.
type DeploymentManagerDeploymentsInsertResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "createPolicy" DeploymentsInsertCreatePolicy
    Core.:> Core.QueryParam "header.bypassBillingFilter" Core.Bool
    Core.:> Core.QueryParam "preview" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Deployment
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a deployment and all of the resources described by the deployment manifest.
--
-- /See:/ 'newDeploymentManagerDeploymentsInsert' smart constructor.
data DeploymentManagerDeploymentsInsert = DeploymentManagerDeploymentsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Sets the policy to use for creating new resources.
    createPolicy :: DeploymentsInsertCreatePolicy,
    headerBypassBillingFilter :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: Deployment,
    -- | If set to true, creates a deployment and creates \"shell\" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the @update()@ method or you can use the @cancelPreview()@ method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
    preview :: (Core.Maybe Core.Bool),
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsInsert' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Deployment ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerDeploymentsInsert
newDeploymentManagerDeploymentsInsert payload project =
  DeploymentManagerDeploymentsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      createPolicy = DeploymentsInsertCreatePolicy_CREATEORACQUIRE,
      headerBypassBillingFilter = Core.Nothing,
      payload = payload,
      preview = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DeploymentManagerDeploymentsInsert where
  type Rs DeploymentManagerDeploymentsInsert = Operation
  type
    Scopes DeploymentManagerDeploymentsInsert =
      '[CloudPlatform'FullControl, Ndev'Cloudman]
  requestClient DeploymentManagerDeploymentsInsert {..} =
    go
      project
      xgafv
      accessToken
      callback
      (Core.Just createPolicy)
      headerBypassBillingFilter
      preview
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      deploymentManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DeploymentManagerDeploymentsInsertResource
          )
          Core.mempty
