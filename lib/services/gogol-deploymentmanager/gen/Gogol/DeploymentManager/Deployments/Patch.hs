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
-- Module      : Gogol.DeploymentManager.Deployments.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a deployment and all of the resources described by the deployment manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.patch@.
module Gogol.DeploymentManager.Deployments.Patch
  ( -- * Resource
    DeploymentManagerDeploymentsPatchResource,

    -- ** Constructing a Request
    DeploymentManagerDeploymentsPatch (..),
    newDeploymentManagerDeploymentsPatch,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.deployments.patch@ method which the
-- 'DeploymentManagerDeploymentsPatch' request conforms to.
type DeploymentManagerDeploymentsPatchResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "deployment" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "createPolicy" DeploymentsPatchCreatePolicy
    Core.:> Core.QueryParam "deletePolicy" DeploymentsPatchDeletePolicy
    Core.:> Core.QueryParam "header.bypassBillingFilter" Core.Bool
    Core.:> Core.QueryParam "preview" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Deployment
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Patches a deployment and all of the resources described by the deployment manifest.
--
-- /See:/ 'newDeploymentManagerDeploymentsPatch' smart constructor.
data DeploymentManagerDeploymentsPatch = DeploymentManagerDeploymentsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Sets the policy to use for creating new resources.
    createPolicy :: DeploymentsPatchCreatePolicy,
    -- | Sets the policy to use for deleting resources.
    deletePolicy :: DeploymentsPatchDeletePolicy,
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    headerBypassBillingFilter :: (Core.Maybe Core.Bool),
    -- | Multipart request metadata.
    payload :: Deployment,
    -- | If set to true, updates the deployment and creates and updates the \"shell\" resources but does not actually alter or instantiate these resources. This allows you to preview what your deployment will look like. You can use this intent to preview how an update would affect your deployment. You must provide a @target.config@ with a configuration if this is set to true. After previewing a deployment, you can deploy your resources by making a request with the @update()@ or you can @cancelPreview()@ to remove the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
    preview :: Core.Bool,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsPatch' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsPatch ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Deployment ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerDeploymentsPatch
newDeploymentManagerDeploymentsPatch deployment payload project =
  DeploymentManagerDeploymentsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      createPolicy = DeploymentsPatchCreatePolicy_CREATEORACQUIRE,
      deletePolicy = DeploymentsPatchDeletePolicy_Delete',
      deployment = deployment,
      headerBypassBillingFilter = Core.Nothing,
      payload = payload,
      preview = Core.False,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DeploymentManagerDeploymentsPatch where
  type Rs DeploymentManagerDeploymentsPatch = Operation
  type
    Scopes DeploymentManagerDeploymentsPatch =
      '[CloudPlatform'FullControl, Ndev'Cloudman]
  requestClient DeploymentManagerDeploymentsPatch {..} =
    go
      project
      deployment
      xgafv
      accessToken
      callback
      (Core.Just createPolicy)
      (Core.Just deletePolicy)
      headerBypassBillingFilter
      (Core.Just preview)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      deploymentManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DeploymentManagerDeploymentsPatchResource
          )
          Core.mempty
