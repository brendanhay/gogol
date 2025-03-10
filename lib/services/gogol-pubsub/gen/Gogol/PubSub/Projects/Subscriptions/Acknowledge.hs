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
-- Module      : Gogol.PubSub.Projects.Subscriptions.Acknowledge
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges the messages associated with the @ack_ids@ in the @AcknowledgeRequest@. The Pub\/Sub system can remove the relevant messages from the subscription. Acknowledging a message whose ack deadline has expired may succeed, but such a message may be redelivered later. Acknowledging a message more than once will not result in an error.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.acknowledge@.
module Gogol.PubSub.Projects.Subscriptions.Acknowledge
  ( -- * Resource
    PubSubProjectsSubscriptionsAcknowledgeResource,

    -- ** Constructing a Request
    PubSubProjectsSubscriptionsAcknowledge (..),
    newPubSubProjectsSubscriptionsAcknowledge,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.acknowledge@ method which the
-- 'PubSubProjectsSubscriptionsAcknowledge' request conforms to.
type PubSubProjectsSubscriptionsAcknowledgeResource =
  "v1"
    Core.:> Core.CaptureMode "subscription" "acknowledge" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AcknowledgeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Acknowledges the messages associated with the @ack_ids@ in the @AcknowledgeRequest@. The Pub\/Sub system can remove the relevant messages from the subscription. Acknowledging a message whose ack deadline has expired may succeed, but such a message may be redelivered later. Acknowledging a message more than once will not result in an error.
--
-- /See:/ 'newPubSubProjectsSubscriptionsAcknowledge' smart constructor.
data PubSubProjectsSubscriptionsAcknowledge = PubSubProjectsSubscriptionsAcknowledge
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AcknowledgeRequest,
    -- | Required. The subscription whose message is being acknowledged. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsAcknowledge' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsAcknowledge ::
  -- |  Multipart request metadata. See 'payload'.
  AcknowledgeRequest ->
  -- |  Required. The subscription whose message is being acknowledged. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsAcknowledge
newPubSubProjectsSubscriptionsAcknowledge payload subscription =
  PubSubProjectsSubscriptionsAcknowledge
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      subscription = subscription,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PubSubProjectsSubscriptionsAcknowledge where
  type Rs PubSubProjectsSubscriptionsAcknowledge = Empty
  type
    Scopes PubSubProjectsSubscriptionsAcknowledge =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSubscriptionsAcknowledge {..} =
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
              Core.Proxy PubSubProjectsSubscriptionsAcknowledgeResource
          )
          Core.mempty
