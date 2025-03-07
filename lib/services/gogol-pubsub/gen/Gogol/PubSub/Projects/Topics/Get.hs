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
-- Module      : Gogol.PubSub.Projects.Topics.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration of a topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.get@.
module Gogol.PubSub.Projects.Topics.Get
  ( -- * Resource
    PubSubProjectsTopicsGetResource,

    -- ** Constructing a Request
    PubSubProjectsTopicsGet (..),
    newPubSubProjectsTopicsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.get@ method which the
-- 'PubSubProjectsTopicsGet' request conforms to.
type PubSubProjectsTopicsGetResource =
  "v1"
    Core.:> Core.Capture "topic" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Topic

-- | Gets the configuration of a topic.
--
-- /See:/ 'newPubSubProjectsTopicsGet' smart constructor.
data PubSubProjectsTopicsGet = PubSubProjectsTopicsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the topic to get. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsGet' with the minimum fields required to make a request.
newPubSubProjectsTopicsGet ::
  -- |  Required. The name of the topic to get. Format is @projects\/{project}\/topics\/{topic}@. See 'topic'.
  Core.Text ->
  PubSubProjectsTopicsGet
newPubSubProjectsTopicsGet topic =
  PubSubProjectsTopicsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      topic = topic,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsTopicsGet where
  type Rs PubSubProjectsTopicsGet = Topic
  type
    Scopes PubSubProjectsTopicsGet =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsTopicsGet {..} =
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
          (Core.Proxy :: Core.Proxy PubSubProjectsTopicsGetResource)
          Core.mempty
