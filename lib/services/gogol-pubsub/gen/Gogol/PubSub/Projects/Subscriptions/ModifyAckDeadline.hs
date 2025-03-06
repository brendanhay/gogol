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
-- Module      : Gogol.PubSub.Projects.Subscriptions.ModifyAckDeadline
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the ack deadline for a specific message. This method is useful to indicate that more time is needed to process a message by the subscriber, or to make the message available for redelivery if the processing was interrupted. Note that this does not modify the subscription-level @ackDeadlineSeconds@ used for subsequent messages.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.modifyAckDeadline@.
module Gogol.PubSub.Projects.Subscriptions.ModifyAckDeadline
  ( -- * Resource
    PubSubProjectsSubscriptionsModifyAckDeadlineResource,

    -- ** Constructing a Request
    PubSubProjectsSubscriptionsModifyAckDeadline (..),
    newPubSubProjectsSubscriptionsModifyAckDeadline,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.modifyAckDeadline@ method which the
-- 'PubSubProjectsSubscriptionsModifyAckDeadline' request conforms to.
type PubSubProjectsSubscriptionsModifyAckDeadlineResource =
  "v1"
    Core.:> Core.CaptureMode "subscription" "modifyAckDeadline" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ModifyAckDeadlineRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Modifies the ack deadline for a specific message. This method is useful to indicate that more time is needed to process a message by the subscriber, or to make the message available for redelivery if the processing was interrupted. Note that this does not modify the subscription-level @ackDeadlineSeconds@ used for subsequent messages.
--
-- /See:/ 'newPubSubProjectsSubscriptionsModifyAckDeadline' smart constructor.
data PubSubProjectsSubscriptionsModifyAckDeadline = PubSubProjectsSubscriptionsModifyAckDeadline
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ModifyAckDeadlineRequest,
    -- | Required. The name of the subscription. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsModifyAckDeadline' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsModifyAckDeadline ::
  -- |  Multipart request metadata. See 'payload'.
  ModifyAckDeadlineRequest ->
  -- |  Required. The name of the subscription. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsModifyAckDeadline
newPubSubProjectsSubscriptionsModifyAckDeadline
  payload
  subscription =
    PubSubProjectsSubscriptionsModifyAckDeadline
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        subscription = subscription,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    PubSubProjectsSubscriptionsModifyAckDeadline
  where
  type Rs PubSubProjectsSubscriptionsModifyAckDeadline = Empty
  type
    Scopes PubSubProjectsSubscriptionsModifyAckDeadline =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSubscriptionsModifyAckDeadline {..} =
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
              Core.Proxy PubSubProjectsSubscriptionsModifyAckDeadlineResource
          )
          Core.mempty
