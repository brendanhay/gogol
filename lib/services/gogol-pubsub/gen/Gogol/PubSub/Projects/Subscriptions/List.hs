{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PubSub.Projects.Subscriptions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matching subscriptions.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.list@.
module Gogol.PubSub.Projects.Subscriptions.List
    (
    -- * Resource
      PubSubProjectsSubscriptionsListResource

    -- ** Constructing a Request
    , PubSubProjectsSubscriptionsList (..)
    , newPubSubProjectsSubscriptionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PubSub.Types

-- | A resource alias for @pubsub.projects.subscriptions.list@ method which the
-- 'PubSubProjectsSubscriptionsList' request conforms to.
type PubSubProjectsSubscriptionsListResource =
     "v1" Core.:>
       Core.Capture "project" Core.Text Core.:>
         "subscriptions" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListSubscriptionsResponse

-- | Lists matching subscriptions.
--
-- /See:/ 'newPubSubProjectsSubscriptionsList' smart constructor.
data PubSubProjectsSubscriptionsList = PubSubProjectsSubscriptionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Maximum number of subscriptions to return.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The value returned by the last @ListSubscriptionsResponse@; indicates that this is a continuation of a prior @ListSubscriptions@ call, and that the system should return the next page of data.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The name of the project in which to list subscriptions. Format is @projects\/{project-id}@.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubSubProjectsSubscriptionsList' with the minimum fields required to make a request.
newPubSubProjectsSubscriptionsList 
    ::  Core.Text
       -- ^  Required. The name of the project in which to list subscriptions. Format is @projects\/{project-id}@. See 'project'.
    -> PubSubProjectsSubscriptionsList
newPubSubProjectsSubscriptionsList project =
  PubSubProjectsSubscriptionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           PubSubProjectsSubscriptionsList
         where
        type Rs PubSubProjectsSubscriptionsList =
             ListSubscriptionsResponse
        type Scopes PubSubProjectsSubscriptionsList =
             '[CloudPlatform'FullControl, Pubsub'FullControl]
        requestClient PubSubProjectsSubscriptionsList{..}
          = go project xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              pubSubService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PubSubProjectsSubscriptionsListResource)
                      Core.mempty

