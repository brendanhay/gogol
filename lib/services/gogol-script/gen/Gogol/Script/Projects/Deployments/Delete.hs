{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Script.Projects.Deployments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.delete@.
module Gogol.Script.Projects.Deployments.Delete
    (
    -- * Resource
      ScriptProjectsDeploymentsDeleteResource

    -- ** Constructing a Request
    , newScriptProjectsDeploymentsDelete
    , ScriptProjectsDeploymentsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.deployments.delete@ method which the
-- 'ScriptProjectsDeploymentsDelete' request conforms to.
type ScriptProjectsDeploymentsDeleteResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "scriptId" Core.Text Core.:>
           "deployments" Core.:>
             Core.Capture "deploymentId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] Empty

-- | Deletes a deployment of an Apps Script project.
--
-- /See:/ 'newScriptProjectsDeploymentsDelete' smart constructor.
data ScriptProjectsDeploymentsDelete = ScriptProjectsDeploymentsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The deployment ID to be undeployed.
    , deploymentId :: Core.Text
      -- | The script project\'s Drive ID.
    , scriptId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsDeploymentsDelete' with the minimum fields required to make a request.
newScriptProjectsDeploymentsDelete 
    ::  Core.Text
       -- ^  The deployment ID to be undeployed. See 'deploymentId'.
    -> Core.Text
       -- ^  The script project\'s Drive ID. See 'scriptId'.
    -> ScriptProjectsDeploymentsDelete
newScriptProjectsDeploymentsDelete deploymentId scriptId =
  ScriptProjectsDeploymentsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , deploymentId = deploymentId
    , scriptId = scriptId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ScriptProjectsDeploymentsDelete
         where
        type Rs ScriptProjectsDeploymentsDelete = Empty
        type Scopes ScriptProjectsDeploymentsDelete =
             '["https://www.googleapis.com/auth/script.deployments"]
        requestClient ScriptProjectsDeploymentsDelete{..}
          = go scriptId deploymentId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              scriptService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ScriptProjectsDeploymentsDeleteResource)
                      Core.mempty

