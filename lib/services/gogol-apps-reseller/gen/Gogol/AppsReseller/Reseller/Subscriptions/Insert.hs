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
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or transfer a subscription. Create a subscription for a customer\'s account that you ordered using the </admin-sdk/reseller/v1/reference/customers/insert.html Order a new customer account> method. For more information about creating a subscription for different payment plans, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#create_subscription manage subscriptions>.\\ If you did not order the customer\'s account using the customer insert method, use the customer\'s @customerAuthToken@ when creating a subscription for that customer. If transferring a G Suite subscription with an associated Google Drive or Google Vault subscription, use the </admin-sdk/reseller/v1/how-tos/batch.html batch operation> to transfer all of these subscriptions. For more information, see how to </admin-sdk/reseller/v1/how-tos/manage_subscriptions#transfer_a_subscription transfer subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.insert@.
module Gogol.AppsReseller.Reseller.Subscriptions.Insert
  ( -- * Resource
    ResellerSubscriptionsInsertResource,

    -- ** Constructing a Request
    newResellerSubscriptionsInsert,
    ResellerSubscriptionsInsert,
  )
where

import Gogol.AppsReseller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reseller.subscriptions.insert@ method which the
-- 'ResellerSubscriptionsInsert' request conforms to.
type ResellerSubscriptionsInsertResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerAuthToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Subscription
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Creates or transfer a subscription. Create a subscription for a customer\'s account that you ordered using the </admin-sdk/reseller/v1/reference/customers/insert.html Order a new customer account> method. For more information about creating a subscription for different payment plans, see </admin-sdk/reseller/v1/how-tos/manage_subscriptions#create_subscription manage subscriptions>.\\ If you did not order the customer\'s account using the customer insert method, use the customer\'s @customerAuthToken@ when creating a subscription for that customer. If transferring a G Suite subscription with an associated Google Drive or Google Vault subscription, use the </admin-sdk/reseller/v1/how-tos/batch.html batch operation> to transfer all of these subscriptions. For more information, see how to </admin-sdk/reseller/v1/how-tos/manage_subscriptions#transfer_a_subscription transfer subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsInsert' smart constructor.
data ResellerSubscriptionsInsert = ResellerSubscriptionsInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The @customerAuthToken@ query string is required when creating a resold account that transfers a direct customer\'s subscription or transfers another reseller customer\'s subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.
    customerAuthToken :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Subscription,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsInsert' with the minimum fields required to make a request.
newResellerSubscriptionsInsert ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Subscription ->
  ResellerSubscriptionsInsert
newResellerSubscriptionsInsert customerId payload =
  ResellerSubscriptionsInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerAuthToken = Core.Nothing,
      customerId = customerId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ResellerSubscriptionsInsert
  where
  type Rs ResellerSubscriptionsInsert = Subscription
  type
    Scopes ResellerSubscriptionsInsert =
      '[Apps'Order]
  requestClient ResellerSubscriptionsInsert {..} =
    go
      customerId
      xgafv
      accessToken
      callback
      customerAuthToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerSubscriptionsInsertResource
          )
          Core.mempty
