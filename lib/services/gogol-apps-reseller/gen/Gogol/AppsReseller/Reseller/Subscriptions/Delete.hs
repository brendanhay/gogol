{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppsReseller.Reseller.Subscriptions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels, suspends, or transfers a subscription to direct.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.subscriptions.delete@.
module Gogol.AppsReseller.Reseller.Subscriptions.Delete
  ( -- * Resource
    ResellerSubscriptionsDeleteResource,

    -- ** Constructing a Request
    ResellerSubscriptionsDelete (..),
    newResellerSubscriptionsDelete,
  )
where

import Gogol.AppsReseller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @reseller.subscriptions.delete@ method which the
-- 'ResellerSubscriptionsDelete' request conforms to.
type ResellerSubscriptionsDeleteResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> Core.QueryParam "deletionType" SubscriptionsDeleteDeletionType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Cancels, suspends, or transfers a subscription to direct.
--
-- /See:/ 'newResellerSubscriptionsDelete' smart constructor.
data ResellerSubscriptionsDelete = ResellerSubscriptionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | The @deletionType@ query string enables the cancellation, downgrade, or suspension of a subscription.
    deletionType :: SubscriptionsDeleteDeletionType,
    -- | This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method.
    subscriptionId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerSubscriptionsDelete' with the minimum fields required to make a request.
newResellerSubscriptionsDelete ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  The @deletionType@ query string enables the cancellation, downgrade, or suspension of a subscription. See 'deletionType'.
  SubscriptionsDeleteDeletionType ->
  -- |  This is a required property. The @subscriptionId@ is the subscription identifier and is unique for each customer. Since a @subscriptionId@ changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the @subscriptionId@ can be found using the retrieve all reseller subscriptions method. See 'subscriptionId'.
  Core.Text ->
  ResellerSubscriptionsDelete
newResellerSubscriptionsDelete
  customerId
  deletionType
  subscriptionId =
    ResellerSubscriptionsDelete
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        customerId = customerId,
        deletionType = deletionType,
        subscriptionId = subscriptionId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest ResellerSubscriptionsDelete where
  type Rs ResellerSubscriptionsDelete = ()
  type Scopes ResellerSubscriptionsDelete = '[Apps'Order]
  requestClient ResellerSubscriptionsDelete {..} =
    go
      customerId
      subscriptionId
      (Core.Just deletionType)
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
          (Core.Proxy :: Core.Proxy ResellerSubscriptionsDeleteResource)
          Core.mempty
