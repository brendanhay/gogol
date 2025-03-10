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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Projects.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request that a new project be created. The result is an @Operation@ which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking @Operation@ is automatically deleted after a few hours, so there is no need to call @DeleteOperation@.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.create@.
module Gogol.ResourceManager.Cloudresourcemanager.Projects.Create
  ( -- * Resource
    CloudresourcemanagerProjectsCreateResource,

    -- ** Constructing a Request
    CloudresourcemanagerProjectsCreate (..),
    newCloudresourcemanagerProjectsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.create@ method which the
-- 'CloudresourcemanagerProjectsCreate' request conforms to.
type CloudresourcemanagerProjectsCreateResource =
  "v3"
    Core.:> "projects"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Project
    Core.:> Core.Post '[Core.JSON] Operation

-- | Request that a new project be created. The result is an @Operation@ which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking @Operation@ is automatically deleted after a few hours, so there is no need to call @DeleteOperation@.
--
-- /See:/ 'newCloudresourcemanagerProjectsCreate' smart constructor.
data CloudresourcemanagerProjectsCreate = CloudresourcemanagerProjectsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Project,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerProjectsCreate' with the minimum fields required to make a request.
newCloudresourcemanagerProjectsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Project ->
  CloudresourcemanagerProjectsCreate
newCloudresourcemanagerProjectsCreate payload =
  CloudresourcemanagerProjectsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerProjectsCreate where
  type Rs CloudresourcemanagerProjectsCreate = Operation
  type
    Scopes CloudresourcemanagerProjectsCreate =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerProjectsCreate {..} =
    go
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
              Core.Proxy CloudresourcemanagerProjectsCreateResource
          )
          Core.mempty
