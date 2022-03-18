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
-- Module      : Gogol.PubSub.Projects.Snapshots.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing snapshots. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.list@.
module Gogol.PubSub.Projects.Snapshots.List
    (
    -- * Resource
      PubSubProjectsSnapshotsListResource

    -- ** Constructing a Request
    , newPubSubProjectsSnapshotsList
    , PubSubProjectsSnapshotsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.list@ method which the
-- 'PubSubProjectsSnapshotsList' request conforms to.
type PubSubProjectsSnapshotsListResource =
     "v1" Core.:>
       Core.Capture "project" Core.Text Core.:>
         "snapshots" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListSnapshotsResponse

-- | Lists the existing snapshots. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ 'newPubSubProjectsSnapshotsList' smart constructor.
data PubSubProjectsSnapshotsList = PubSubProjectsSnapshotsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum number of snapshots to return.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The value returned by the last @ListSnapshotsResponse@; indicates that this is a continuation of a prior @ListSnapshots@ call, and that the system should return the next page of data.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the project in which to list snapshots. Format is @projects\/{project-id}@.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSnapshotsList' with the minimum fields required to make a request.
newPubSubProjectsSnapshotsList 
    ::  Core.Text
       -- ^  Required. The name of the project in which to list snapshots. Format is @projects\/{project-id}@. See 'project'.
    -> PubSubProjectsSnapshotsList
newPubSubProjectsSnapshotsList project =
  PubSubProjectsSnapshotsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PubSubProjectsSnapshotsList
         where
        type Rs PubSubProjectsSnapshotsList =
             ListSnapshotsResponse
        type Scopes PubSubProjectsSnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient PubSubProjectsSnapshotsList{..}
          = go project xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              pubSubService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PubSubProjectsSnapshotsListResource)
                      Core.mempty

