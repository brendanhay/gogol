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
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.ChangeSeats
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a subscription\'s user license settings. For more information about updating an annual commitment plan or a flexible plan subscription’s licenses, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_seat Manage Subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.changeSeats@.
module Gogol.AppsReseller.Reseller.Subscriptions.ChangeSeats
    (
    -- * Resource
      ResellerSubscriptionsChangeSeatsResource

    -- ** Constructing a Request
    , newResellerSubscriptionsChangeSeats
    , ResellerSubscriptionsChangeSeats
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsReseller.Types

-- | A resource alias for @reseller.subscriptions.changeSeats@ method which the
-- 'ResellerSubscriptionsChangeSeats' request conforms to.
type ResellerSubscriptionsChangeSeatsResource =
     "apps" Core.:>
       "reseller" Core.:>
         "v1" Core.:>
           "customers" Core.:>
             Core.Capture "customerId" Core.Text Core.:>
               "subscriptions" Core.:>
                 Core.Capture "subscriptionId" Core.Text Core.:>
                   "changeSeats" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] Seats Core.:>
                                   Core.Post '[Core.JSON] Subscription

-- | Updates a subscription\'s user license settings. For more information about updating an annual commitment plan or a flexible plan subscription’s licenses, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_seat Manage Subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsChangeSeats' smart constructor.
data ResellerSubscriptionsChangeSeats = ResellerSubscriptionsChangeSeats
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    , customerId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Seats
      -- | This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method.
    , subscriptionId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsChangeSeats' with the minimum fields required to make a request.
newResellerSubscriptionsChangeSeats 
    ::  Core.Text
       -- ^  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
    -> Seats
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method. See 'subscriptionId'.
    -> ResellerSubscriptionsChangeSeats
newResellerSubscriptionsChangeSeats customerId payload subscriptionId =
  ResellerSubscriptionsChangeSeats
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customerId = customerId
    , payload = payload
    , subscriptionId = subscriptionId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ResellerSubscriptionsChangeSeats
         where
        type Rs ResellerSubscriptionsChangeSeats =
             Subscription
        type Scopes ResellerSubscriptionsChangeSeats =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient ResellerSubscriptionsChangeSeats{..}
          = go customerId subscriptionId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              appsResellerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ResellerSubscriptionsChangeSeatsResource)
                      Core.mempty

