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
-- Module      : Gogol.Script.Projects.Deployments.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.update@.
module Gogol.Script.Projects.Deployments.Update
  ( -- * Resource
    ScriptProjectsDeploymentsUpdateResource,

    -- ** Constructing a Request
    newScriptProjectsDeploymentsUpdate,
    ScriptProjectsDeploymentsUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.deployments.update@ method which the
-- 'ScriptProjectsDeploymentsUpdate' request conforms to.
type ScriptProjectsDeploymentsUpdateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "scriptId" Core.Text
    Core.:> "deployments"
    Core.:> Core.Capture "deploymentId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateDeploymentRequest
    Core.:> Core.Put '[Core.JSON] Deployment

-- | Updates a deployment of an Apps Script project.
--
-- /See:/ 'newScriptProjectsDeploymentsUpdate' smart constructor.
data ScriptProjectsDeploymentsUpdate = ScriptProjectsDeploymentsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The deployment ID for this deployment.
    deploymentId :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateDeploymentRequest,
    -- | The script project\'s Drive ID.
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsDeploymentsUpdate' with the minimum fields required to make a request.
newScriptProjectsDeploymentsUpdate ::
  -- |  The deployment ID for this deployment. See 'deploymentId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateDeploymentRequest ->
  -- |  The script project\'s Drive ID. See 'scriptId'.
  Core.Text ->
  ScriptProjectsDeploymentsUpdate
newScriptProjectsDeploymentsUpdate deploymentId payload scriptId =
  ScriptProjectsDeploymentsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deploymentId = deploymentId,
      payload = payload,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ScriptProjectsDeploymentsUpdate
  where
  type Rs ScriptProjectsDeploymentsUpdate = Deployment
  type
    Scopes ScriptProjectsDeploymentsUpdate =
      '[Script'Deployments]
  requestClient ScriptProjectsDeploymentsUpdate {..} =
    go
      scriptId
      deploymentId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      scriptService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ScriptProjectsDeploymentsUpdateResource
          )
          Core.mempty
