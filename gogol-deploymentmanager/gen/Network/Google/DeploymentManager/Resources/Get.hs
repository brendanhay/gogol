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
-- Module      : Network.Google.DeploymentManager.Resources.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a single resource.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.resources.get@.
module Network.Google.DeploymentManager.Resources.Get
  ( -- * Resource
    DeploymentManagerResourcesGetResource,

    -- ** Constructing a Request
    newDeploymentManagerResourcesGet,
    DeploymentManagerResourcesGet,
  )
where

import Network.Google.DeploymentManager.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @deploymentmanager.resources.get@ method which the
-- 'DeploymentManagerResourcesGet' request conforms to.
type DeploymentManagerResourcesGetResource =
  "deploymentmanager"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "deployments"
    Core.:> Core.Capture "deployment" Core.Text
    Core.:> "resources"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Resource

-- | Gets information about a single resource.
--
-- /See:/ 'newDeploymentManagerResourcesGet' smart constructor.
data DeploymentManagerResourcesGet = DeploymentManagerResourcesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | The name of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerResourcesGet' with the minimum fields required to make a request.
newDeploymentManagerResourcesGet ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the resource for this request. See 'resource'.
  Core.Text ->
  DeploymentManagerResourcesGet
newDeploymentManagerResourcesGet deployment project resource =
  DeploymentManagerResourcesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deployment = deployment,
      project = project,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DeploymentManagerResourcesGet
  where
  type Rs DeploymentManagerResourcesGet = Resource
  type
    Scopes DeploymentManagerResourcesGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/ndev.cloudman",
         "https://www.googleapis.com/auth/ndev.cloudman.readonly"
       ]
  requestClient DeploymentManagerResourcesGet {..} =
    go
      project
      deployment
      resource
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      deploymentManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DeploymentManagerResourcesGetResource
          )
          Core.mempty
