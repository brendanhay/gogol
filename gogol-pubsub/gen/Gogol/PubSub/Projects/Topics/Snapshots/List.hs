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
-- Module      : Gogol.PubSub.Projects.Topics.Snapshots.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the snapshots on this topic. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.snapshots.list@.
module Gogol.PubSub.Projects.Topics.Snapshots.List
  ( -- * Resource
    PubSubProjectsTopicsSnapshotsListResource,

    -- ** Constructing a Request
    newPubSubProjectsTopicsSnapshotsList,
    PubSubProjectsTopicsSnapshotsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.snapshots.list@ method which the
-- 'PubSubProjectsTopicsSnapshotsList' request conforms to.
type PubSubProjectsTopicsSnapshotsListResource =
  "v1"
    Core.:> Core.Capture "topic" Core.Text
    Core.:> "snapshots"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTopicSnapshotsResponse

-- | Lists the names of the snapshots on this topic. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ 'newPubSubProjectsTopicsSnapshotsList' smart constructor.
data PubSubProjectsTopicsSnapshotsList = PubSubProjectsTopicsSnapshotsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of snapshot names to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListTopicSnapshotsResponse@; indicates that this is a continuation of a prior @ListTopicSnapshots@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the topic that snapshots are attached to. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsSnapshotsList' with the minimum fields required to make a request.
newPubSubProjectsTopicsSnapshotsList ::
  -- |  Required. The name of the topic that snapshots are attached to. Format is @projects\/{project}\/topics\/{topic}@. See 'topic'.
  Core.Text ->
  PubSubProjectsTopicsSnapshotsList
newPubSubProjectsTopicsSnapshotsList topic =
  PubSubProjectsTopicsSnapshotsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      topic = topic,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsTopicsSnapshotsList
  where
  type
    Rs PubSubProjectsTopicsSnapshotsList =
      ListTopicSnapshotsResponse
  type
    Scopes PubSubProjectsTopicsSnapshotsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient PubSubProjectsTopicsSnapshotsList {..} =
    go
      topic
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      pubSubService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsTopicsSnapshotsListResource
          )
          Core.mempty
