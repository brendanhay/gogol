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
-- Module      : Gogol.PubSub.Projects.Subscriptions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing subscription. All messages retained in the subscription are immediately dropped. Calls to @Pull@ after deletion will return @NOT_FOUND@. After a subscription is deleted, a new one may be created with the same name, but the new one has no association with the old subscription or its topic unless the same topic is specified.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.delete@.
module Gogol.PubSub.Projects.Subscriptions.Delete
  ( -- * Resource
    PubSubProjectsSubscriptionsDeleteResource,

    -- ** Constructing a Request
    PubSubProjectsSubscriptionsDelete (..),
    newPubSubProjectsSubscriptionsDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.delete@ method which the
-- 'PubSubProjectsSubscriptionsDelete' request conforms to.
type PubSubProjectsSubscriptionsDeleteResource =
  "v1"
    Core.:> Core.Capture "subscription" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an existing subscription. All messages retained in the subscription are immediately dropped. Calls to @Pull@ after deletion will return @NOT_FOUND@. After a subscription is deleted, a new one may be created with the same name, but the new one has no association with the old subscription or its topic unless the same topic is specified.
--
-- /See:/ 'newPubSubProjectsSubscriptionsDelete' smart constructor.
data PubSubProjectsSubscriptionsDelete = PubSubProjectsSubscriptionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The subscription to delete. Format is @projects\/{project}\/subscriptions\/{sub}@.
    subscription :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsDelete' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsDelete ::
  -- |  Required. The subscription to delete. Format is @projects\/{project}\/subscriptions\/{sub}@. See 'subscription'.
  Core.Text ->
  PubSubProjectsSubscriptionsDelete
newPubSubProjectsSubscriptionsDelete subscription =
  PubSubProjectsSubscriptionsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      subscription = subscription,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    PubSubProjectsSubscriptionsDelete
  where
  type Rs PubSubProjectsSubscriptionsDelete = Empty
  type
    Scopes PubSubProjectsSubscriptionsDelete =
      '[CloudPlatform'FullControl, Pubsub'FullControl]
  requestClient PubSubProjectsSubscriptionsDelete {..} =
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
              Core.Proxy PubSubProjectsSubscriptionsDeleteResource
          )
          Core.mempty
