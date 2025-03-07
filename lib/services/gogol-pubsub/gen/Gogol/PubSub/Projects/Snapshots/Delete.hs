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
-- Module      : Gogol.PubSub.Projects.Snapshots.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an existing snapshot. Snapshots are used in [Seek] (https:\/\/cloud.google.com\/pubsub\/docs\/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. When the snapshot is deleted, all messages retained in the snapshot are immediately dropped. After a snapshot is deleted, a new one may be created with the same name, but the new one has no association with the old snapshot or its subscription, unless the same subscription is specified.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.delete@.
module Gogol.PubSub.Projects.Snapshots.Delete
  ( -- * Resource
    PubSubProjectsSnapshotsDeleteResource,

    -- ** Constructing a Request
    PubSubProjectsSnapshotsDelete (..),
    newPubSubProjectsSnapshotsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.delete@ method which the
-- 'PubSubProjectsSnapshotsDelete' request conforms to.
type PubSubProjectsSnapshotsDeleteResource =
  "v1"
    Core.:> Core.Capture "snapshot" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Removes an existing snapshot. Snapshots are used in [Seek] (https:\/\/cloud.google.com\/pubsub\/docs\/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. When the snapshot is deleted, all messages retained in the snapshot are immediately dropped. After a snapshot is deleted, a new one may be created with the same name, but the new one has no association with the old snapshot or its subscription, unless the same subscription is specified.
--
-- /See:/ 'newPubSubProjectsSnapshotsDelete' smart constructor.
data PubSubProjectsSnapshotsDelete = PubSubProjectsSnapshotsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the snapshot to delete. Format is @projects\/{project}\/snapshots\/{snap}@.
    snapshot :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSnapshotsDelete' with the minimum fields required to make a request.
newPubSubProjectsSnapshotsDelete ::
  -- |  Required. The name of the snapshot to delete. Format is @projects\/{project}\/snapshots\/{snap}@. See 'snapshot'.
  Core.Text ->
  PubSubProjectsSnapshotsDelete
newPubSubProjectsSnapshotsDelete snapshot =
  PubSubProjectsSnapshotsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      snapshot = snapshot,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSnapshotsDelete where
  type Rs PubSubProjectsSnapshotsDelete = Empty
  type
    Scopes PubSubProjectsSnapshotsDelete =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSnapshotsDelete {..} =
    go
      snapshot
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      pubSubService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PubSubProjectsSnapshotsDeleteResource)
          Core.mempty
