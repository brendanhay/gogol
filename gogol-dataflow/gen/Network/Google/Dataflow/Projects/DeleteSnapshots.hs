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
-- Module      : Network.Google.Dataflow.Projects.DeleteSnapshots
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.deleteSnapshots@.
module Network.Google.Dataflow.Projects.DeleteSnapshots
  ( -- * Resource
    DataflowProjectsDeleteSnapshotsResource,

    -- ** Constructing a Request
    newDataflowProjectsDeleteSnapshots,
    DataflowProjectsDeleteSnapshots,
  )
where

import Network.Google.Dataflow.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataflow.projects.deleteSnapshots@ method which the
-- 'DataflowProjectsDeleteSnapshots' request conforms to.
type DataflowProjectsDeleteSnapshotsResource =
  "v1b3"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "snapshotId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] DeleteSnapshotResponse

-- | Deletes a snapshot.
--
-- /See:/ 'newDataflowProjectsDeleteSnapshots' smart constructor.
data DataflowProjectsDeleteSnapshots = DataflowProjectsDeleteSnapshots
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The location that contains this snapshot.
    location :: (Core.Maybe Core.Text),
    -- | The ID of the Cloud Platform project that the snapshot belongs to.
    projectId :: Core.Text,
    -- | The ID of the snapshot.
    snapshotId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsDeleteSnapshots' with the minimum fields required to make a request.
newDataflowProjectsDeleteSnapshots ::
  -- |  The ID of the Cloud Platform project that the snapshot belongs to. See 'projectId'.
  Core.Text ->
  DataflowProjectsDeleteSnapshots
newDataflowProjectsDeleteSnapshots projectId =
  DataflowProjectsDeleteSnapshots
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      location = Core.Nothing,
      projectId = projectId,
      snapshotId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataflowProjectsDeleteSnapshots
  where
  type
    Rs DataflowProjectsDeleteSnapshots =
      DeleteSnapshotResponse
  type
    Scopes DataflowProjectsDeleteSnapshots =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly",
         "https://www.googleapis.com/auth/userinfo.email"
       ]
  requestClient DataflowProjectsDeleteSnapshots {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      location
      snapshotId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataflowService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataflowProjectsDeleteSnapshotsResource
          )
          Core.mempty
