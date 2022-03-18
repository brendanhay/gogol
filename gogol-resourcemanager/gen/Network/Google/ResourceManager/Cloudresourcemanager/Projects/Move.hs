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
-- Module      : Network.Google.ResourceManager.Cloudresourcemanager.Projects.Move
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Move a project to another place in your resource hierarchy, under a new resource parent. Returns an operation which can be used to track the process of the project move workflow. Upon success, the @Operation.response@ field will be populated with the moved project. The caller must have @resourcemanager.projects.move@ permission on the project, on the project\'s current and proposed new parent. If project has no current parent, or it currently does not have an associated organization resource, you will also need the @resourcemanager.projects.setIamPolicy@ permission in the project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.move@.
module Network.Google.ResourceManager.Cloudresourcemanager.Projects.Move
  ( -- * Resource
    CloudresourcemanagerProjectsMoveResource,

    -- ** Constructing a Request
    newCloudresourcemanagerProjectsMove,
    CloudresourcemanagerProjectsMove,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.move@ method which the
-- 'CloudresourcemanagerProjectsMove' request conforms to.
type CloudresourcemanagerProjectsMoveResource =
  "v3"
    Core.:> Core.CaptureMode "name" "move" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] MoveProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Move a project to another place in your resource hierarchy, under a new resource parent. Returns an operation which can be used to track the process of the project move workflow. Upon success, the @Operation.response@ field will be populated with the moved project. The caller must have @resourcemanager.projects.move@ permission on the project, on the project\'s current and proposed new parent. If project has no current parent, or it currently does not have an associated organization resource, you will also need the @resourcemanager.projects.setIamPolicy@ permission in the project.
--
-- /See:/ 'newCloudresourcemanagerProjectsMove' smart constructor.
data CloudresourcemanagerProjectsMove = CloudresourcemanagerProjectsMove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project to move.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: MoveProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsMove' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsMove ::
  -- |  Required. The name of the project to move. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MoveProjectRequest ->
  CloudresourcemanagerProjectsMove
newCloudresourcemanagerProjectsMove name payload =
  CloudresourcemanagerProjectsMove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudresourcemanagerProjectsMove
  where
  type Rs CloudresourcemanagerProjectsMove = Operation
  type
    Scopes CloudresourcemanagerProjectsMove =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudresourcemanagerProjectsMove {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudresourcemanagerProjectsMoveResource
          )
          Core.mempty
