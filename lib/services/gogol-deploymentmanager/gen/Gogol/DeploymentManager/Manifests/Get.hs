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
-- Module      : Gogol.DeploymentManager.Manifests.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.manifests.get@.
module Gogol.DeploymentManager.Manifests.Get
  ( -- * Resource
    DeploymentManagerManifestsGetResource,

    -- ** Constructing a Request
    DeploymentManagerManifestsGet (..),
    newDeploymentManagerManifestsGet,
  )
where

import Gogol.DeploymentManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @deploymentmanager.manifests.get@ method which the
-- 'DeploymentManagerManifestsGet' request conforms to.
type DeploymentManagerManifestsGetResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "deployment" Core.Text
    Core.:> "manifests"
    Core.:> Core.Capture "manifest" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "header.bypassBillingFilter" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Manifest

-- | Gets information about a specific manifest.
--
-- /See:/ 'newDeploymentManagerManifestsGet' smart constructor.
data DeploymentManagerManifestsGet = DeploymentManagerManifestsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    headerBypassBillingFilter :: (Core.Maybe Core.Bool),
    -- | The name of the manifest for this request.
    manifest :: Core.Text,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerManifestsGet' with the minimum fields required to make a request.
newDeploymentManagerManifestsGet ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  The name of the manifest for this request. See 'manifest'.
  Core.Text ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerManifestsGet
newDeploymentManagerManifestsGet deployment manifest project =
  DeploymentManagerManifestsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deployment = deployment,
      headerBypassBillingFilter = Core.Nothing,
      manifest = manifest,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DeploymentManagerManifestsGet where
  type Rs DeploymentManagerManifestsGet = Manifest
  type
    Scopes DeploymentManagerManifestsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Ndev'Cloudman,
         Ndev'Cloudman'Readonly
       ]
  requestClient DeploymentManagerManifestsGet {..} =
    go
      project
      deployment
      manifest
      xgafv
      accessToken
      callback
      headerBypassBillingFilter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      deploymentManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DeploymentManagerManifestsGetResource)
          Core.mempty
