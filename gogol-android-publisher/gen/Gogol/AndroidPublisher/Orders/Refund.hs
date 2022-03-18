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
-- Module      : Gogol.AndroidPublisher.Orders.Refund
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds a user\'s subscription or in-app purchase order. Orders older than 1 year cannot be refunded.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.orders.refund@.
module Gogol.AndroidPublisher.Orders.Refund
  ( -- * Resource
    AndroidPublisherOrdersRefundResource,

    -- ** Constructing a Request
    newAndroidPublisherOrdersRefund,
    AndroidPublisherOrdersRefund,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.orders.refund@ method which the
-- 'AndroidPublisherOrdersRefund' request conforms to.
type AndroidPublisherOrdersRefundResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "orders"
    Core.:> Core.CaptureMode "orderId" "refund" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "revoke" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Refunds a user\'s subscription or in-app purchase order. Orders older than 1 year cannot be refunded.
--
-- /See:/ 'newAndroidPublisherOrdersRefund' smart constructor.
data AndroidPublisherOrdersRefund = AndroidPublisherOrdersRefund
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The order ID provided to the user when the subscription or in-app order was purchased.
    orderId :: Core.Text,
    -- | The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\').
    packageName :: Core.Text,
    -- | Whether to revoke the purchased item. If set to true, access to the subscription or in-app item will be terminated immediately. If the item is a recurring subscription, all future payments will also be terminated. Consumed in-app items need to be handled by developer\'s app. (optional).
    revoke :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherOrdersRefund' with the minimum fields required to make a request.
newAndroidPublisherOrdersRefund ::
  -- |  The order ID provided to the user when the subscription or in-app order was purchased. See 'orderId'.
  Core.Text ->
  -- |  The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  AndroidPublisherOrdersRefund
newAndroidPublisherOrdersRefund orderId packageName =
  AndroidPublisherOrdersRefund
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      orderId = orderId,
      packageName = packageName,
      revoke = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherOrdersRefund
  where
  type Rs AndroidPublisherOrdersRefund = ()
  type
    Scopes AndroidPublisherOrdersRefund =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherOrdersRefund {..} =
    go
      packageName
      orderId
      xgafv
      accessToken
      callback
      revoke
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherOrdersRefundResource
          )
          Core.mempty
