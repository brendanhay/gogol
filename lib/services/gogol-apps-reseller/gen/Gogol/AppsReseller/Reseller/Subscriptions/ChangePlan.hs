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
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.ChangePlan
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a subscription plan. Use this method to update a plan for a 30-day trial or a flexible plan subscription to an annual commitment plan with monthly or yearly payments. How a plan is updated differs depending on the plan and the products. For more information, see the description in </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_plan manage subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.changePlan@.
module Gogol.AppsReseller.Reseller.Subscriptions.ChangePlan
  ( -- * Resource
    ResellerSubscriptionsChangePlanResource,

    -- ** Constructing a Request
    ResellerSubscriptionsChangePlan (..),
    newResellerSubscriptionsChangePlan,
  )
where

import Gogol.AppsReseller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reseller.subscriptions.changePlan@ method which the
-- 'ResellerSubscriptionsChangePlan' request conforms to.
type ResellerSubscriptionsChangePlanResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "changePlan"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ChangePlanRequest
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Updates a subscription plan. Use this method to update a plan for a 30-day trial or a flexible plan subscription to an annual commitment plan with monthly or yearly payments. How a plan is updated differs depending on the plan and the products. For more information, see the description in </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_plan manage subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsChangePlan' smart constructor.
data ResellerSubscriptionsChangePlan = ResellerSubscriptionsChangePlan
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ChangePlanRequest,
    -- | This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method.
    subscriptionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsChangePlan' with the minimum fields required to make a request.
newResellerSubscriptionsChangePlan ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ChangePlanRequest ->
  -- |  This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method. See 'subscriptionId'.
  Core.Text ->
  ResellerSubscriptionsChangePlan
newResellerSubscriptionsChangePlan customerId payload subscriptionId =
  ResellerSubscriptionsChangePlan
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      subscriptionId = subscriptionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ResellerSubscriptionsChangePlan
  where
  type
    Rs ResellerSubscriptionsChangePlan =
      Subscription
  type
    Scopes ResellerSubscriptionsChangePlan =
      '[Apps'Order]
  requestClient ResellerSubscriptionsChangePlan {..} =
    go
      customerId
      subscriptionId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerSubscriptionsChangePlanResource
          )
          Core.mempty
