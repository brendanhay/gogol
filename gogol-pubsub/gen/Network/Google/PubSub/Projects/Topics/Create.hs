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
-- Module      : Network.Google.PubSub.Projects.Topics.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the given topic with the given name. See the [resource name rules] (https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.topics.create@.
module Network.Google.PubSub.Projects.Topics.Create
  ( -- * Resource
    PubSubProjectsTopicsCreateResource,

    -- ** Constructing a Request
    newPubSubProjectsTopicsCreate,
    PubSubProjectsTopicsCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.topics.create@ method which the
-- 'PubSubProjectsTopicsCreate' request conforms to.
type PubSubProjectsTopicsCreateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Topic
    Core.:> Core.Put '[Core.JSON] Topic

-- | Creates the given topic with the given name. See the [resource name rules] (https:\/\/cloud.google.com\/pubsub\/docs\/admin#resource_names).
--
-- /See:/ 'newPubSubProjectsTopicsCreate' smart constructor.
data PubSubProjectsTopicsCreate = PubSubProjectsTopicsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the topic. It must have the format @\"projects\/{project}\/topics\/{topic}\"@. @{topic}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Topic,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsTopicsCreate' with the minimum fields required to make a request.
newPubSubProjectsTopicsCreate ::
  -- |  Required. The name of the topic. It must have the format @\"projects\/{project}\/topics\/{topic}\"@. @{topic}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Topic ->
  PubSubProjectsTopicsCreate
newPubSubProjectsTopicsCreate name payload =
  PubSubProjectsTopicsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsTopicsCreate
  where
  type Rs PubSubProjectsTopicsCreate = Topic
  type
    Scopes PubSubProjectsTopicsCreate =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient PubSubProjectsTopicsCreate {..} =
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
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsTopicsCreateResource
          )
          Core.mempty
