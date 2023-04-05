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
-- Module      : Gogol.PubSub.Projects.Subscriptions.Pull
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pulls messages from the server.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.pull@.
module Gogol.PubSub.Projects.Subscriptions.Pull
  ( -- * Resource
    PubSubProjectsSubscriptionsPullResource,

    -- ** Constructing a Request
    PubSubProjectsSubscriptionsPull (..),
    newPubSubProjectsSubscriptionsPull,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.pull@ method which the
-- 'PubSubProjectsSubscriptionsPull' request conforms to.
type PubSubProjectsSubscriptionsPullResource =
  "v1"
    Core.:> Core.CaptureMode "subscription" "pull" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PullRequest
    Core.:> Core.Post '[Core.JSON] PullResponse

-- | Pulls messages from the server.
--
-- /See:/ 'newPubSubProjectsSubscriptionsPull' smart constructor.
data PubSubProjectsSubscriptionsPull = PubSubProjectsSubscriptionsPull
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: PullRequest,
    -- | Required. The subscription from which messages should be pulled. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsPull' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsPull ::
  -- |  Multipart request metadata. See 'payload'.
  PullRequest ->
  -- |  Required. The subscription from which messages should be pulled. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsPull
newPubSubProjectsSubscriptionsPull payload subscription =
  PubSubProjectsSubscriptionsPull
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      subscription = subscription,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsSubscriptionsPull
  where
  type
    Rs PubSubProjectsSubscriptionsPull =
      PullResponse
  type
    Scopes PubSubProjectsSubscriptionsPull =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSubscriptionsPull {..} =
    go
      subscription
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
              Core.Proxy PubSubProjectsSubscriptionsPullResource
          )
          Core.mempty
