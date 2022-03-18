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
-- Module      : Network.Google.PubSub.Projects.Subscriptions.ModifyPushConfig
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the @PushConfig@ for a specified subscription. This may be used to change a push subscription to a pull one (signified by an empty @PushConfig@) or vice versa, or change the endpoint URL and other attributes of a push subscription. Messages will accumulate for delivery continuously through the call regardless of changes to the @PushConfig@.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.modifyPushConfig@.
module Network.Google.PubSub.Projects.Subscriptions.ModifyPushConfig
  ( -- * Resource
    PubSubProjectsSubscriptionsModifyPushConfigResource,

    -- ** Constructing a Request
    newPubSubProjectsSubscriptionsModifyPushConfig,
    PubSubProjectsSubscriptionsModifyPushConfig,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.modifyPushConfig@ method which the
-- 'PubSubProjectsSubscriptionsModifyPushConfig' request conforms to.
type PubSubProjectsSubscriptionsModifyPushConfigResource =
  "v1"
    Core.:> Core.CaptureMode
              "subscription"
              "modifyPushConfig"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ModifyPushConfigRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Modifies the @PushConfig@ for a specified subscription. This may be used to change a push subscription to a pull one (signified by an empty @PushConfig@) or vice versa, or change the endpoint URL and other attributes of a push subscription. Messages will accumulate for delivery continuously through the call regardless of changes to the @PushConfig@.
--
-- /See:/ 'newPubSubProjectsSubscriptionsModifyPushConfig' smart constructor.
data PubSubProjectsSubscriptionsModifyPushConfig = PubSubProjectsSubscriptionsModifyPushConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ModifyPushConfigRequest,
    -- | Required. The name of the subscription. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsModifyPushConfig' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsModifyPushConfig ::
  -- |  Multipart request metadata. See 'payload'.
  ModifyPushConfigRequest ->
  -- |  Required. The name of the subscription. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsModifyPushConfig
newPubSubProjectsSubscriptionsModifyPushConfig payload subscription =
  PubSubProjectsSubscriptionsModifyPushConfig
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
    PubSubProjectsSubscriptionsModifyPushConfig
  where
  type
    Rs PubSubProjectsSubscriptionsModifyPushConfig =
      Empty
  type
    Scopes
      PubSubProjectsSubscriptionsModifyPushConfig =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient
    PubSubProjectsSubscriptionsModifyPushConfig {..} =
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
                Core.Proxy
                  PubSubProjectsSubscriptionsModifyPushConfigResource
            )
            Core.mempty
