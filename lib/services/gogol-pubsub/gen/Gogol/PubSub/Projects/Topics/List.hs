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
-- Module      : Gogol.PubSub.Projects.Topics.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matching topics.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.list@.
module Gogol.PubSub.Projects.Topics.List
  ( -- * Resource
    PubSubProjectsTopicsListResource,

    -- ** Constructing a Request
    PubSubProjectsTopicsList (..),
    newPubSubProjectsTopicsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.list@ method which the
-- 'PubSubProjectsTopicsList' request conforms to.
type PubSubProjectsTopicsListResource =
  "v1"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "topics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTopicsResponse

-- | Lists matching topics.
--
-- /See:/ 'newPubSubProjectsTopicsList' smart constructor.
data PubSubProjectsTopicsList = PubSubProjectsTopicsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of topics to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListTopicsResponse@; indicates that this is a continuation of a prior @ListTopics@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in which to list topics. Format is @projects\/{project-id}@.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsList' with the minimum fields required to make a request.
newPubSubProjectsTopicsList ::
  -- |  Required. The name of the project in which to list topics. Format is @projects\/{project-id}@. See 'project'.
  Core.Text ->
  PubSubProjectsTopicsList
newPubSubProjectsTopicsList project =
  PubSubProjectsTopicsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsTopicsList where
  type Rs PubSubProjectsTopicsList = ListTopicsResponse
  type
    Scopes PubSubProjectsTopicsList =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsTopicsList {..} =
    go
      project
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
              Core.Proxy PubSubProjectsTopicsListResource
          )
          Core.mempty
