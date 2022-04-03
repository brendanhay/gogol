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
-- Module      : Gogol.PubSub.Projects.Topics.Subscriptions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the attached subscriptions on this topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.subscriptions.list@.
module Gogol.PubSub.Projects.Topics.Subscriptions.List
  ( -- * Resource
    PubSubProjectsTopicsSubscriptionsListResource,

    -- ** Constructing a Request
    PubSubProjectsTopicsSubscriptionsList (..),
    newPubSubProjectsTopicsSubscriptionsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.subscriptions.list@ method which the
-- 'PubSubProjectsTopicsSubscriptionsList' request conforms to.
type PubSubProjectsTopicsSubscriptionsListResource =
  "v1"
    Core.:> Core.Capture "topic" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTopicSubscriptionsResponse

-- | Lists the names of the attached subscriptions on this topic.
--
-- /See:/ 'newPubSubProjectsTopicsSubscriptionsList' smart constructor.
data PubSubProjectsTopicsSubscriptionsList = PubSubProjectsTopicsSubscriptionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of subscription names to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListTopicSubscriptionsResponse@; indicates that this is a continuation of a prior @ListTopicSubscriptions@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the topic that subscriptions are attached to. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsSubscriptionsList' with the minimum fields required to make a request.
newPubSubProjectsTopicsSubscriptionsList ::
  -- |  Required. The name of the topic that subscriptions are attached to. Format is @projects\/{project}\/topics\/{topic}@. See 'topic'.
  Core.Text ->
  PubSubProjectsTopicsSubscriptionsList
newPubSubProjectsTopicsSubscriptionsList topic =
  PubSubProjectsTopicsSubscriptionsList
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
    PubSubProjectsTopicsSubscriptionsList
  where
  type
    Rs PubSubProjectsTopicsSubscriptionsList =
      ListTopicSubscriptionsResponse
  type
    Scopes PubSubProjectsTopicsSubscriptionsList =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient
    PubSubProjectsTopicsSubscriptionsList {..} =
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
                Core.Proxy
                  PubSubProjectsTopicsSubscriptionsListResource
            )
            Core.mempty
