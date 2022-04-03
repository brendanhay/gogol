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
-- Module      : Gogol.PubSub.Projects.Snapshots.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration details of a snapshot. Snapshots are used in Seek operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.get@.
module Gogol.PubSub.Projects.Snapshots.Get
  ( -- * Resource
    PubSubProjectsSnapshotsGetResource,

    -- ** Constructing a Request
    PubSubProjectsSnapshotsGet (..),
    newPubSubProjectsSnapshotsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.get@ method which the
-- 'PubSubProjectsSnapshotsGet' request conforms to.
type PubSubProjectsSnapshotsGetResource =
  "v1"
    Core.:> Core.Capture "snapshot" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Snapshot

-- | Gets the configuration details of a snapshot. Snapshots are used in Seek operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.
--
-- /See:/ 'newPubSubProjectsSnapshotsGet' smart constructor.
data PubSubProjectsSnapshotsGet = PubSubProjectsSnapshotsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the snapshot to get. Format is @projects\/{project}\/snapshots\/{snap}@.
    snapshot :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSnapshotsGet' with the minimum fields required to make a request.
newPubSubProjectsSnapshotsGet ::
  -- |  Required. The name of the snapshot to get. Format is @projects\/{project}\/snapshots\/{snap}@. See 'snapshot'.
  Core.Text ->
  PubSubProjectsSnapshotsGet
newPubSubProjectsSnapshotsGet snapshot =
  PubSubProjectsSnapshotsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      snapshot = snapshot,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsSnapshotsGet
  where
  type Rs PubSubProjectsSnapshotsGet = Snapshot
  type
    Scopes PubSubProjectsSnapshotsGet =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSnapshotsGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsSnapshotsGetResource
          )
          Core.mempty
