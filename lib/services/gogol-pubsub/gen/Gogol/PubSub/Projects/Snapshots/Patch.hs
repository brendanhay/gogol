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
-- Module      : Gogol.PubSub.Projects.Snapshots.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing snapshot by updating the fields specified in the update mask. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.patch@.
module Gogol.PubSub.Projects.Snapshots.Patch
  ( -- * Resource
    PubSubProjectsSnapshotsPatchResource,

    -- ** Constructing a Request
    PubSubProjectsSnapshotsPatch (..),
    newPubSubProjectsSnapshotsPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.patch@ method which the
-- 'PubSubProjectsSnapshotsPatch' request conforms to.
type PubSubProjectsSnapshotsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateSnapshotRequest
    Core.:> Core.Patch '[Core.JSON] Snapshot

-- | Updates an existing snapshot by updating the fields specified in the update mask. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ 'newPubSubProjectsSnapshotsPatch' smart constructor.
data PubSubProjectsSnapshotsPatch = PubSubProjectsSnapshotsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The name of the snapshot.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateSnapshotRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSnapshotsPatch' with the minimum fields required to make a request.
newPubSubProjectsSnapshotsPatch ::
  -- |  Optional. The name of the snapshot. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateSnapshotRequest ->
  PubSubProjectsSnapshotsPatch
newPubSubProjectsSnapshotsPatch name payload =
  PubSubProjectsSnapshotsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSnapshotsPatch where
  type Rs PubSubProjectsSnapshotsPatch = Snapshot
  type
    Scopes PubSubProjectsSnapshotsPatch =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSnapshotsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      pubSubService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PubSubProjectsSnapshotsPatchResource)
          Core.mempty
