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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Clusters.HotTablets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists hot tablets in a cluster, within the time range provided. Hot tablets are ordered based on CPU usage.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.hotTablets.list@.
module Gogol.BigtableAdmin.Projects.Instances.Clusters.HotTablets.List
  ( -- * Resource
    BigtableAdminProjectsInstancesClustersHotTabletsListResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesClustersHotTabletsList (..),
    newBigtableAdminProjectsInstancesClustersHotTabletsList,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.clusters.hotTablets.list@ method which the
-- 'BigtableAdminProjectsInstancesClustersHotTabletsList' request conforms to.
type BigtableAdminProjectsInstancesClustersHotTabletsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "hotTablets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.DateTime
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.DateTime
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListHotTabletsResponse

-- | Lists hot tablets in a cluster, within the time range provided. Hot tablets are ordered based on CPU usage.
--
-- /See:/ 'newBigtableAdminProjectsInstancesClustersHotTabletsList' smart constructor.
data BigtableAdminProjectsInstancesClustersHotTabletsList = BigtableAdminProjectsInstancesClustersHotTabletsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The end time to list hot tablets.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Maximum number of results per page. A page/size that is empty or zero lets the server choose the number of items to return. A page/size which is strictly positive will return at most that many items. A negative page/size will cause an error. Following the first request, subsequent paginated calls do not need a page/size field. If a page/size is set in subsequent calls, it must match the page/size given in the first request.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value of @next_page_token@ returned by a previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The cluster name to list hot tablets. Value is in the following form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@.
    parent :: Core.Text,
    -- | The start time to list hot tablets. The hot tablets in the response will have start times between the requested start time and end time. Start time defaults to Now if it is unset, and end time defaults to Now - 24 hours if it is unset. The start time should be less than the end time, and the maximum allowed time range between start time and end time is 48 hours. Start time and end time should have values between Now and Now - 14 days.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesClustersHotTabletsList' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesClustersHotTabletsList ::
  -- |  Required. The cluster name to list hot tablets. Value is in the following form: @projects\/{project}\/instances\/{instance}\/clusters\/{cluster}@. See 'parent'.
  Core.Text ->
  BigtableAdminProjectsInstancesClustersHotTabletsList
newBigtableAdminProjectsInstancesClustersHotTabletsList parent =
  BigtableAdminProjectsInstancesClustersHotTabletsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesClustersHotTabletsList
  where
  type
    Rs
      BigtableAdminProjectsInstancesClustersHotTabletsList =
      ListHotTabletsResponse
  type
    Scopes
      BigtableAdminProjectsInstancesClustersHotTabletsList =
      '[ Bigtable'Admin,
         Bigtable'Admin'Cluster,
         Bigtable'Admin'Instance,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Cluster,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesClustersHotTabletsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        endTime
        pageSize
        pageToken
        startTime
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesClustersHotTabletsListResource
            )
            Core.mempty
