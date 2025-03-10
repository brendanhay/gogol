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
-- Module      : Gogol.PubSub.Projects.Topics.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the topic with the given name. Returns @NOT_FOUND@ if the topic does not exist. After a topic is deleted, a new topic may be created with the same name; this is an entirely new topic with none of the old configuration or subscriptions. Existing subscriptions to this topic are not deleted, but their @topic@ field is set to @_deleted-topic_@.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.delete@.
module Gogol.PubSub.Projects.Topics.Delete
  ( -- * Resource
    PubSubProjectsTopicsDeleteResource,

    -- ** Constructing a Request
    PubSubProjectsTopicsDelete (..),
    newPubSubProjectsTopicsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.delete@ method which the
-- 'PubSubProjectsTopicsDelete' request conforms to.
type PubSubProjectsTopicsDeleteResource =
  "v1"
    Core.:> Core.Capture "topic" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the topic with the given name. Returns @NOT_FOUND@ if the topic does not exist. After a topic is deleted, a new topic may be created with the same name; this is an entirely new topic with none of the old configuration or subscriptions. Existing subscriptions to this topic are not deleted, but their @topic@ field is set to @_deleted-topic_@.
--
-- /See:/ 'newPubSubProjectsTopicsDelete' smart constructor.
data PubSubProjectsTopicsDelete = PubSubProjectsTopicsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the topic to delete. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsDelete' with the minimum fields required to make a request.
newPubSubProjectsTopicsDelete ::
  -- |  Required. Name of the topic to delete. Format is @projects\/{project}\/topics\/{topic}@. See 'topic'.
  Core.Text ->
  PubSubProjectsTopicsDelete
newPubSubProjectsTopicsDelete topic =
  PubSubProjectsTopicsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      topic = topic,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsTopicsDelete where
  type Rs PubSubProjectsTopicsDelete = Empty
  type
    Scopes PubSubProjectsTopicsDelete =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsTopicsDelete {..} =
    go
      topic
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
          (Core.Proxy :: Core.Proxy PubSubProjectsTopicsDeleteResource)
          Core.mempty
