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
-- Module      : Network.Google.File.Projects.Locations.Instances.Snapshots.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all snapshots in a project for either a specified location or for all locations.
--
-- /See:/ <https://cloud.google.com/filestore/ Cloud Filestore API Reference> for @file.projects.locations.instances.snapshots.list@.
module Network.Google.File.Projects.Locations.Instances.Snapshots.List
  ( -- * Resource
    FileProjectsLocationsInstancesSnapshotsListResource,

    -- ** Constructing a Request
    newFileProjectsLocationsInstancesSnapshotsList,
    FileProjectsLocationsInstancesSnapshotsList,
  )
where

import Network.Google.File.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @file.projects.locations.instances.snapshots.list@ method which the
-- 'FileProjectsLocationsInstancesSnapshotsList' request conforms to.
type FileProjectsLocationsInstancesSnapshotsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSnapshotsResponse

-- | Lists all snapshots in a project for either a specified location or for all locations.
--
-- /See:/ 'newFileProjectsLocationsInstancesSnapshotsList' smart constructor.
data FileProjectsLocationsInstancesSnapshotsList = FileProjectsLocationsInstancesSnapshotsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | List filter.
    filter :: (Core.Maybe Core.Text),
    -- | Sort results. Supported values are \"name\", \"name desc\" or \"\" (unsorted).
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of items to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value to use if there are additional results to retrieve for this list request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The instance for which to retrieve snapshot information, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileProjectsLocationsInstancesSnapshotsList' with the minimum fields required to make a request.
newFileProjectsLocationsInstancesSnapshotsList ::
  -- |  Required. The instance for which to retrieve snapshot information, in the format @projects\/{project_id}\/locations\/{location}\/instances\/{instance_id}@. See 'parent'.
  Core.Text ->
  FileProjectsLocationsInstancesSnapshotsList
newFileProjectsLocationsInstancesSnapshotsList parent =
  FileProjectsLocationsInstancesSnapshotsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FileProjectsLocationsInstancesSnapshotsList
  where
  type
    Rs FileProjectsLocationsInstancesSnapshotsList =
      ListSnapshotsResponse
  type
    Scopes
      FileProjectsLocationsInstancesSnapshotsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    FileProjectsLocationsInstancesSnapshotsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        orderBy
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fileService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FileProjectsLocationsInstancesSnapshotsListResource
            )
            Core.mempty
