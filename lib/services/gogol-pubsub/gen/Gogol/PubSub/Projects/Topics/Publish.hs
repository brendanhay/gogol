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
-- Module      : Gogol.PubSub.Projects.Topics.Publish
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more messages to the topic. Returns @NOT_FOUND@ if the topic does not exist.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.publish@.
module Gogol.PubSub.Projects.Topics.Publish
  ( -- * Resource
    PubSubProjectsTopicsPublishResource,

    -- ** Constructing a Request
    PubSubProjectsTopicsPublish (..),
    newPubSubProjectsTopicsPublish,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.publish@ method which the
-- 'PubSubProjectsTopicsPublish' request conforms to.
type PubSubProjectsTopicsPublishResource =
  "v1"
    Core.:> Core.CaptureMode "topic" "publish" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PublishRequest
    Core.:> Core.Post '[Core.JSON] PublishResponse

-- | Adds one or more messages to the topic. Returns @NOT_FOUND@ if the topic does not exist.
--
-- /See:/ 'newPubSubProjectsTopicsPublish' smart constructor.
data PubSubProjectsTopicsPublish = PubSubProjectsTopicsPublish
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PublishRequest,
    -- | Required. The messages in the request will be published on this topic. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsPublish' with the minimum fields required to make a request.
newPubSubProjectsTopicsPublish ::
  -- |  Multipart request metadata. See 'payload'.
  PublishRequest ->
  -- |  Required. The messages in the request will be published on this topic. Format is @projects\/{project}\/topics\/{topic}@. See 'topic'.
  Core.Text ->
  PubSubProjectsTopicsPublish
newPubSubProjectsTopicsPublish payload topic =
  PubSubProjectsTopicsPublish
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      topic = topic,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsTopicsPublish
  where
  type Rs PubSubProjectsTopicsPublish = PublishResponse
  type
    Scopes PubSubProjectsTopicsPublish =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsTopicsPublish {..} =
    go
      topic
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
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsTopicsPublishResource
          )
          Core.mempty
