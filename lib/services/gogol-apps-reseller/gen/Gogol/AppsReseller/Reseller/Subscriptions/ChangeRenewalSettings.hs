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
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.ChangeRenewalSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user license\'s renewal settings. This is applicable for accounts with annual commitment plans only. For more information, see the description in </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_renewal manage subscriptions>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.changeRenewalSettings@.
module Gogol.AppsReseller.Reseller.Subscriptions.ChangeRenewalSettings
  ( -- * Resource
    ResellerSubscriptionsChangeRenewalSettingsResource,

    -- ** Constructing a Request
    newResellerSubscriptionsChangeRenewalSettings,
    ResellerSubscriptionsChangeRenewalSettings,
  )
where

import Gogol.AppsReseller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reseller.subscriptions.changeRenewalSettings@ method which the
-- 'ResellerSubscriptionsChangeRenewalSettings' request conforms to.
type ResellerSubscriptionsChangeRenewalSettingsResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "changeRenewalSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RenewalSettings
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Updates a user license\'s renewal settings. This is applicable for accounts with annual commitment plans only. For more information, see the description in </admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_renewal manage subscriptions>.
--
-- /See:/ 'newResellerSubscriptionsChangeRenewalSettings' smart constructor.
data ResellerSubscriptionsChangeRenewalSettings = ResellerSubscriptionsChangeRenewalSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: RenewalSettings,
    -- | This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method.
    subscriptionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsChangeRenewalSettings' with the minimum fields required to make a request.
newResellerSubscriptionsChangeRenewalSettings ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RenewalSettings ->
  -- |  This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method. See 'subscriptionId'.
  Core.Text ->
  ResellerSubscriptionsChangeRenewalSettings
newResellerSubscriptionsChangeRenewalSettings customerId payload subscriptionId =
  ResellerSubscriptionsChangeRenewalSettings
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
    ResellerSubscriptionsChangeRenewalSettings
  where
  type
    Rs ResellerSubscriptionsChangeRenewalSettings =
      Subscription
  type
    Scopes
      ResellerSubscriptionsChangeRenewalSettings =
      '[Apps'Order]
  requestClient
    ResellerSubscriptionsChangeRenewalSettings {..} =
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
                Core.Proxy
                  ResellerSubscriptionsChangeRenewalSettingsResource
            )
            Core.mempty
