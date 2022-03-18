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
-- Module      : Network.Google.AppsReseller.Reseller.Subscriptions.StartPaidService
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately move a 30-day free trial subscription to a paid service subscription. This method is only applicable if a payment plan has already been set up for the 30-day trial subscription. For more information, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#paid_service manage subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.startPaidService@.
module Network.Google.AppsReseller.Reseller.Subscriptions.StartPaidService
  ( -- * Resource
    ResellerSubscriptionsStartPaidServiceResource,

    -- ** Constructing a Request
    newResellerSubscriptionsStartPaidService,
    ResellerSubscriptionsStartPaidService,
  )
where

import Network.Google.AppsReseller.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @reseller.subscriptions.startPaidService@ method which the
-- 'ResellerSubscriptionsStartPaidService' request conforms to.
type ResellerSubscriptionsStartPaidServiceResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "startPaidService"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Immediately move a 30-day free trial subscription to a paid service subscription. This method is only applicable if a payment plan has already been set up for the 30-day trial subscription. For more information, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#paid_service manage subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsStartPaidService' smart constructor.
data ResellerSubscriptionsStartPaidService = ResellerSubscriptionsStartPaidService
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method.
    subscriptionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsStartPaidService' with the minimum fields required to make a request.
newResellerSubscriptionsStartPaidService ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method. See 'subscriptionId'.
  Core.Text ->
  ResellerSubscriptionsStartPaidService
newResellerSubscriptionsStartPaidService customerId subscriptionId =
  ResellerSubscriptionsStartPaidService
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      subscriptionId = subscriptionId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ResellerSubscriptionsStartPaidService
  where
  type
    Rs ResellerSubscriptionsStartPaidService =
      Subscription
  type
    Scopes ResellerSubscriptionsStartPaidService =
      '["https://www.googleapis.com/auth/apps.order"]
  requestClient
    ResellerSubscriptionsStartPaidService {..} =
      go
        customerId
        subscriptionId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        appsResellerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ResellerSubscriptionsStartPaidServiceResource
            )
            Core.mempty
