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
-- Module      : Gogol.PubSub.Projects.Subscriptions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription. Note that certain properties of a subscription, such as its topic, are not modifiable.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.patch@.
module Gogol.PubSub.Projects.Subscriptions.Patch
  ( -- * Resource
    PubSubProjectsSubscriptionsPatchResource,

    -- ** Constructing a Request
    newPubSubProjectsSubscriptionsPatch,
    PubSubProjectsSubscriptionsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.patch@ method which the
-- 'PubSubProjectsSubscriptionsPatch' request conforms to.
type PubSubProjectsSubscriptionsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateSubscriptionRequest
    Core.:> Core.Patch '[Core.JSON] Subscription

-- | Updates an existing subscription. Note that certain properties of a subscription, such as its topic, are not modifiable.
--
-- /See:/ 'newPubSubProjectsSubscriptionsPatch' smart constructor.
data PubSubProjectsSubscriptionsPatch = PubSubProjectsSubscriptionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the subscription. It must have the format @\"projects\/{project}\/subscriptions\/{subscription}\"@. @{subscription}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateSubscriptionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsPatch' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsPatch ::
  -- |  Required. The name of the subscription. It must have the format @\"projects\/{project}\/subscriptions\/{subscription}\"@. @{subscription}@ must start with a letter, and contain only letters (@[A-Za-z]@), numbers (@[0-9]@), dashes (@-@), underscores (@_@), periods (@.@), tildes (@~@), plus (@+@) or percent signs (@%@). It must be between 3 and 255 characters in length, and it must not start with @\"goog\"@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateSubscriptionRequest ->
  PubSubProjectsSubscriptionsPatch
newPubSubProjectsSubscriptionsPatch name payload =
  PubSubProjectsSubscriptionsPatch
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
    PubSubProjectsSubscriptionsPatch
  where
  type
    Rs PubSubProjectsSubscriptionsPatch =
      Subscription
  type
    Scopes PubSubProjectsSubscriptionsPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient PubSubProjectsSubscriptionsPatch {..} =
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
              Core.Proxy PubSubProjectsSubscriptionsPatchResource
          )
          Core.mempty
