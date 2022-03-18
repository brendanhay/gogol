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
-- Module      : Gogol.DeploymentManager.Deployments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.delete@.
module Gogol.DeploymentManager.Deployments.Delete
  ( -- * Resource
    DeploymentManagerDeploymentsDeleteResource,

    -- ** Constructing a Request
    newDeploymentManagerDeploymentsDelete,
    DeploymentManagerDeploymentsDelete,
  )
where

import Gogol.DeploymentManager.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @deploymentmanager.deployments.delete@ method which the
-- 'DeploymentManagerDeploymentsDelete' request conforms to.
type DeploymentManagerDeploymentsDeleteResource =
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
    Core.:> Core.QueryParam
              "deletePolicy"
              DeploymentsDeleteDeletePolicy
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'newDeploymentManagerDeploymentsDelete' smart constructor.
data DeploymentManagerDeploymentsDelete = DeploymentManagerDeploymentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Sets the policy to use for deleting resources.
    deletePolicy :: DeploymentsDeleteDeletePolicy,
    -- | The name of the deployment for this request.
    deployment :: Core.Text,
    -- | The project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerDeploymentsDelete' with the minimum fields required to make a request.
newDeploymentManagerDeploymentsDelete ::
  -- |  The name of the deployment for this request. See 'deployment'.
  Core.Text ->
  -- |  The project ID for this request. See 'project'.
  Core.Text ->
  DeploymentManagerDeploymentsDelete
newDeploymentManagerDeploymentsDelete deployment project =
  DeploymentManagerDeploymentsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deletePolicy = DeploymentsDeleteDeletePolicy_Delete',
      deployment = deployment,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DeploymentManagerDeploymentsDelete
  where
  type
    Rs DeploymentManagerDeploymentsDelete =
      Operation
  type
    Scopes DeploymentManagerDeploymentsDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/ndev.cloudman"
       ]
  requestClient DeploymentManagerDeploymentsDelete {..} =
    go
      project
      deployment
      xgafv
      accessToken
      callback
      (Core.Just deletePolicy)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      deploymentManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DeploymentManagerDeploymentsDeleteResource
          )
          Core.mempty
