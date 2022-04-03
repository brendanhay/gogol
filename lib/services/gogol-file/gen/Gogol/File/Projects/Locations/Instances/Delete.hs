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
-- Module      : Gogol.File.Projects.Locations.Instances.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an instance.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.delete@.
module Gogol.File.Projects.Locations.Instances.Delete
  ( -- * Resource
    FileProjectsLocationsInstancesDeleteResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesDelete (..),
    newFileProjectsLocationsInstancesDelete,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.delete@ method which the
-- 'FileProjectsLocationsInstancesDelete' request conforms to.
type FileProjectsLocationsInstancesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "force" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes an instance.
--
-- /See:/ 'newFileProjectsLocationsInstancesDelete' smart constructor.
data FileProjectsLocationsInstancesDelete = FileProjectsLocationsInstancesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set to true, all snapshots of the instance will also be deleted. (Otherwise, the request will only work if the instance has no snapshots.)
    force :: (Core.Maybe Core.Bool),
    -- | Required. The instance resource name, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesDelete' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesDelete ::
  -- |  Required. The instance resource name, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@ See 'name'.
  Core.Text ->
  FileProjectsLocationsInstancesDelete
newFileProjectsLocationsInstancesDelete name =
  FileProjectsLocationsInstancesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      force = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesDelete
  where
  type
    Rs FileProjectsLocationsInstancesDelete =
      Operation
  type
    Scopes FileProjectsLocationsInstancesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    FileProjectsLocationsInstancesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        force
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fileService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FileProjectsLocationsInstancesDeleteResource
            )
            Core.mempty
