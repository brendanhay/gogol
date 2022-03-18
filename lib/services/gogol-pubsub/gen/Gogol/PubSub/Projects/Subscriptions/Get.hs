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
-- Module      : Gogol.PubSub.Projects.Subscriptions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration details of a subscription.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.get@.
module Gogol.PubSub.Projects.Subscriptions.Get
  ( -- * Resource
    PubSubProjectsSubscriptionsGetResource,

    -- ** Constructing a Request
    newPubSubProjectsSubscriptionsGet,
    PubSubProjectsSubscriptionsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.get@ method which the
-- 'PubSubProjectsSubscriptionsGet' request conforms to.
type PubSubProjectsSubscriptionsGetResource =
  "v1"
    Core.:> Core.Capture "subscription" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Subscription

-- | Gets the configuration details of a subscription.
--
-- /See:/ 'newPubSubProjectsSubscriptionsGet' smart constructor.
data PubSubProjectsSubscriptionsGet = PubSubProjectsSubscriptionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the subscription to get. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsGet' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsGet ::
  -- |  Required. The name of the subscription to get. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsGet
newPubSubProjectsSubscriptionsGet subscription =
  PubSubProjectsSubscriptionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      subscription = subscription,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsSubscriptionsGet
  where
  type Rs PubSubProjectsSubscriptionsGet = Subscription
  type
    Scopes PubSubProjectsSubscriptionsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/pubsub"
       ]
  requestClient PubSubProjectsSubscriptionsGet {..} =
    go
      subscription
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
          ( Core.Proxy ::
              Core.Proxy PubSubProjectsSubscriptionsGetResource
          )
          Core.mempty
