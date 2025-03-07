{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.Undelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores the project identified by the specified @name@ (for example, @projects\/415104041262@). You can only use this method for a project that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the project cannot be restored. The caller must have @resourcemanager.projects.undelete@ permission for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.undelete@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.Undelete
  ( -- * Resource
    CloudresourcemanagerProjectsUndeleteResource,

    -- ** Constructing a Request
    CloudresourcemanagerProjectsUndelete (..),
    newCloudresourcemanagerProjectsUndelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.undelete@ method which the
-- 'CloudresourcemanagerProjectsUndelete' request conforms to.
type CloudresourcemanagerProjectsUndeleteResource =
  "v3"
    Core.:> Core.CaptureMode "name" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UndeleteProjectRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Restores the project identified by the specified @name@ (for example, @projects\/415104041262@). You can only use this method for a project that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the project cannot be restored. The caller must have @resourcemanager.projects.undelete@ permission for this project.
--
-- /See:/ 'newCloudresourcemanagerProjectsUndelete' smart constructor.
data CloudresourcemanagerProjectsUndelete = CloudresourcemanagerProjectsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project (for example, @projects\/415104041262@). Required.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UndeleteProjectRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsUndelete' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsUndelete ::
  -- |  Required. The name of the project (for example, @projects\/415104041262@). Required. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UndeleteProjectRequest ->
  CloudresourcemanagerProjectsUndelete
newCloudresourcemanagerProjectsUndelete name payload =
  CloudresourcemanagerProjectsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerProjectsUndelete where
  type Rs CloudresourcemanagerProjectsUndelete = Operation
  type
    Scopes CloudresourcemanagerProjectsUndelete =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerProjectsUndelete {..} =
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
              Core.Proxy CloudresourcemanagerProjectsUndeleteResource
          )
          Core.mempty
