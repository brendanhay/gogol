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
-- Module      : Gogol.DeploymentManager.Deployments.CancelPreview
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels and removes the preview currently associated with the deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.cancelPreview@.
module Gogol.DeploymentManager.Deployments.CancelPreview
  ( -- * Resource
    DeploymentManagerDeploymentsCancelPreviewResource,

    -- ** Constructing a Request
    DeploymentManagerDeploymentsCancelPreview (..),
    newDeploymentManagerDeploymentsCancelPreview,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.deployments.cancelPreview@ method which the
-- 'DeploymentManagerDeploymentsCancelPreview' request conforms to.
type DeploymentManagerDeploymentsCancelPreviewResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "deployment" Core.Text
    Core.:> "cancelPreview"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeploymentsCancelPreviewRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Cancels and removes the preview currently associated with the deployment.
--
-- /See:/ 'newDeploymentManagerDeploymentsCancelPreview' smart constructor.
data DeploymentManagerDeploymentsCancelPreview = DeploymentManagerDeploymentsCancelPreview
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeploymentsCancelPreviewRequest,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsCancelPreview' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsCancelPreview ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeploymentsCancelPreviewRequest ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerDeploymentsCancelPreview
newDeploymentManagerDeploymentsCancelPreview
  deployment
  payload
  project =
    DeploymentManagerDeploymentsCancelPreview
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        deployment = deployment,
        payload = payload,
        project = project,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    DeploymentManagerDeploymentsCancelPreview
  where
  type Rs DeploymentManagerDeploymentsCancelPreview = Operation
  type
    Scopes DeploymentManagerDeploymentsCancelPreview =
      '[CloudPlatform'FullControl, Ndev'Cloudman]
  requestClient DeploymentManagerDeploymentsCancelPreview {..} =
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
          ( Core.Proxy ::
              Core.Proxy DeploymentManagerDeploymentsCancelPreviewResource
          )
          Core.mempty
