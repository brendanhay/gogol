{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataflow.Projects.Snapshots.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.snapshots.get@.
module Gogol.Dataflow.Projects.Snapshots.Get
    (
    -- * Resource
      DataflowProjectsSnapshotsGetResource

    -- ** Constructing a Request
    , DataflowProjectsSnapshotsGet (..)
    , newDataflowProjectsSnapshotsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.snapshots.get@ method which the
-- 'DataflowProjectsSnapshotsGet' request conforms to.
type DataflowProjectsSnapshotsGetResource =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "snapshots" Core.:>
             Core.Capture "snapshotId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "location" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] Snapshot

-- | Gets information about a snapshot.
--
-- /See:/ 'newDataflowProjectsSnapshotsGet' smart constructor.
data DataflowProjectsSnapshotsGet = DataflowProjectsSnapshotsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The location that contains this snapshot.
    , location :: (Core.Maybe Core.Text)
      -- | The ID of the Cloud Platform project that the snapshot belongs to.
    , projectId :: Core.Text
      -- | The ID of the snapshot.
    , snapshotId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsSnapshotsGet' with the minimum fields required to make a request.
newDataflowProjectsSnapshotsGet 
    ::  Core.Text
       -- ^  The ID of the Cloud Platform project that the snapshot belongs to. See 'projectId'.
    -> Core.Text
       -- ^  The ID of the snapshot. See 'snapshotId'.
    -> DataflowProjectsSnapshotsGet
newDataflowProjectsSnapshotsGet projectId snapshotId =
  DataflowProjectsSnapshotsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , location = Core.Nothing
    , projectId = projectId
    , snapshotId = snapshotId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsSnapshotsGet
         where
        type Rs DataflowProjectsSnapshotsGet = Snapshot
        type Scopes DataflowProjectsSnapshotsGet =
             '[CloudPlatform'FullControl, Compute'FullControl]
        requestClient DataflowProjectsSnapshotsGet{..}
          = go projectId snapshotId xgafv accessToken callback
              location
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DataflowProjectsSnapshotsGetResource)
                      Core.mempty

