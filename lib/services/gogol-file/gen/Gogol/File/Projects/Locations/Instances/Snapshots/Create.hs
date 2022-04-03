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
-- Module      : Gogol.File.Projects.Locations.Instances.Snapshots.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.snapshots.create@.
module Gogol.File.Projects.Locations.Instances.Snapshots.Create
  ( -- * Resource
    FileProjectsLocationsInstancesSnapshotsCreateResource,

    -- ** Constructing a Request
    FileProjectsLocationsInstancesSnapshotsCreate (..),
    newFileProjectsLocationsInstancesSnapshotsCreate,
  )
where

import Gogol.File.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.snapshots.create@ method which the
-- 'FileProjectsLocationsInstancesSnapshotsCreate' request conforms to.
type FileProjectsLocationsInstancesSnapshotsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "snapshotId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Snapshot
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a snapshot.
--
-- /See:/ 'newFileProjectsLocationsInstancesSnapshotsCreate' smart constructor.
data FileProjectsLocationsInstancesSnapshotsCreate = FileProjectsLocationsInstancesSnapshotsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Filestore Instance to create the snapshots of, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Snapshot,
    -- | Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
    snapshotId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesSnapshotsCreate' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesSnapshotsCreate ::
  -- |  Required. The Filestore Instance to create the snapshots of, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Snapshot ->
  FileProjectsLocationsInstancesSnapshotsCreate
newFileProjectsLocationsInstancesSnapshotsCreate parent payload =
  FileProjectsLocationsInstancesSnapshotsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      snapshotId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesSnapshotsCreate
  where
  type
    Rs FileProjectsLocationsInstancesSnapshotsCreate =
      Operation
  type
    Scopes
      FileProjectsLocationsInstancesSnapshotsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    FileProjectsLocationsInstancesSnapshotsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        snapshotId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        fileService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FileProjectsLocationsInstancesSnapshotsCreateResource
            )
            Core.mempty
