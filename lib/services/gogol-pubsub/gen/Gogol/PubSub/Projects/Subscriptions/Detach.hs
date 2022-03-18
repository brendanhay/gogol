{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PubSub.Projects.Subscriptions.Detach
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches a subscription from this topic. All messages retained in the subscription are dropped. Subsequent @Pull@ and @StreamingPull@ requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will stop.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.detach@.
module Gogol.PubSub.Projects.Subscriptions.Detach
    (
    -- * Resource
      PubSubProjectsSubscriptionsDetachResource

    -- ** Constructing a Request
    , newPubSubProjectsSubscriptionsDetach
    , PubSubProjectsSubscriptionsDetach
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.detach@ method which the
-- 'PubSubProjectsSubscriptionsDetach' request conforms to.
type PubSubProjectsSubscriptionsDetachResource =
     "v1" Core.:>
       Core.CaptureMode "subscription" "detach" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Post '[Core.JSON] DetachSubscriptionResponse

-- | Detaches a subscription from this topic. All messages retained in the subscription are dropped. Subsequent @Pull@ and @StreamingPull@ requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will stop.
--
-- /See:/ 'newPubSubProjectsSubscriptionsDetach' smart constructor.
data PubSubProjectsSubscriptionsDetach = PubSubProjectsSubscriptionsDetach
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The subscription to detach. Format is @projects\/{project}\/subscriptions\/{subscription}@.
    , subscription :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsDetach' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsDetach 
    ::  Core.Text
       -- ^  Required. The subscription to detach. Format is @projects\/{project}\/subscriptions\/{subscription}@. See 'subscription'.
    -> PubSubProjectsSubscriptionsDetach
newPubSubProjectsSubscriptionsDetach subscription =
  PubSubProjectsSubscriptionsDetach
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , subscription = subscription
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PubSubProjectsSubscriptionsDetach
         where
        type Rs PubSubProjectsSubscriptionsDetach =
             DetachSubscriptionResponse
        type Scopes PubSubProjectsSubscriptionsDetach =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient PubSubProjectsSubscriptionsDetach{..}
          = go subscription xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              pubSubService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PubSubProjectsSubscriptionsDetachResource)
                      Core.mempty

