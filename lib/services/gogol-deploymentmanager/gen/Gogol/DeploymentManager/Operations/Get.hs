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
-- Module      : Gogol.DeploymentManager.Operations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific operation.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.operations.get@.
module Gogol.DeploymentManager.Operations.Get
    (
    -- * Resource
      DeploymentManagerOperationsGetResource

    -- ** Constructing a Request
    , newDeploymentManagerOperationsGet
    , DeploymentManagerOperationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DeploymentManager.Types

-- | A resource alias for @deploymentmanager.operations.get@ method which the
-- 'DeploymentManagerOperationsGet' request conforms to.
type DeploymentManagerOperationsGetResource =
     "deploymentmanager" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "global" Core.:>
               "operations" Core.:>
                 Core.Capture "operation" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] Operation

-- | Gets information about a specific operation.
--
-- /See:/ 'newDeploymentManagerOperationsGet' smart constructor.
data DeploymentManagerOperationsGet = DeploymentManagerOperationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the operation for this request.
    , operation :: Core.Text
      -- | The project ID for this request.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeploymentManagerOperationsGet' with the minimum fields required to make a request.
newDeploymentManagerOperationsGet 
    ::  Core.Text
       -- ^  The name of the operation for this request. See 'operation'.
    -> Core.Text
       -- ^  The project ID for this request. See 'project'.
    -> DeploymentManagerOperationsGet
newDeploymentManagerOperationsGet operation project =
  DeploymentManagerOperationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , operation = operation
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DeploymentManagerOperationsGet
         where
        type Rs DeploymentManagerOperationsGet = Operation
        type Scopes DeploymentManagerOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient DeploymentManagerOperationsGet{..}
          = go project operation xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              deploymentManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DeploymentManagerOperationsGetResource)
                      Core.mempty

