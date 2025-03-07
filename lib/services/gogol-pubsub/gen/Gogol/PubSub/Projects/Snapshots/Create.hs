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
-- Module      : Gogol.PubSub.Projects.Snapshots.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot from the requested subscription. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns @ALREADY_EXISTS@. If the requested subscription doesn\'t exist, returns @NOT_FOUND@. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then @FAILED_PRECONDITION@ is returned. See also the @Snapshot.expire_time@ field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the [resource name format] (https:\/\/cloud.google.com\/pubsub\/docs\/pubsub-basics#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name
-- in the request.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.create@.
module Gogol.PubSub.Projects.Snapshots.Create
  ( -- * Resource
    PubSubProjectsSnapshotsCreateResource,

    -- ** Constructing a Request
    PubSubProjectsSnapshotsCreate (..),
    newPubSubProjectsSnapshotsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.create@ method which the
-- 'PubSubProjectsSnapshotsCreate' request conforms to.
type PubSubProjectsSnapshotsCreateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateSnapshotRequest
    Core.:> Core.Put '[Core.JSON] Snapshot

-- | Creates a snapshot from the requested subscription. Snapshots are used in <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns @ALREADY_EXISTS@. If the requested subscription doesn\'t exist, returns @NOT_FOUND@. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then @FAILED_PRECONDITION@ is returned. See also the @Snapshot.expire_time@ field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the [resource name format] (https:\/\/cloud.google.com\/pubsub\/docs\/pubsub-basics#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name
-- in the request.
--
-- /See:/ 'newPubSubProjectsSnapshotsCreate' smart constructor.
data PubSubProjectsSnapshotsCreate = PubSubProjectsSnapshotsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. User-provided name for this snapshot. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription. Note that for REST API requests, you must specify a name. See the <https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names resource name rules>. Format is @projects\/{project}\/snapshots\/{snap}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateSnapshotRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSnapshotsCreate' with the minimum fields required to make a request.
newPubSubProjectsSnapshotsCreate ::
  -- |  Required. User-provided name for this snapshot. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription. Note that for REST API requests, you must specify a name. See the <https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names resource name rules>. Format is @projects\/{project}\/snapshots\/{snap}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateSnapshotRequest ->
  PubSubProjectsSnapshotsCreate
newPubSubProjectsSnapshotsCreate name payload =
  PubSubProjectsSnapshotsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSnapshotsCreate where
  type Rs PubSubProjectsSnapshotsCreate = Snapshot
  type
    Scopes PubSubProjectsSnapshotsCreate =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSnapshotsCreate {..} =
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
          (Core.Proxy :: Core.Proxy PubSubProjectsSnapshotsCreateResource)
          Core.mempty
