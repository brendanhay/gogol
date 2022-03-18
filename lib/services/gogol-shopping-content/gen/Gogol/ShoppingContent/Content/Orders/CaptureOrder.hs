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
-- Module      : Gogol.ShoppingContent.Content.Orders.CaptureOrder
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Capture funds from the customer for the current order total. This method should be called after the merchant verifies that they are able and ready to start shipping the order. This method blocks until a response is received from the payment processsor. If this method succeeds, the merchant is guaranteed to receive funds for the order after shipment. If the request fails, it can be retried or the order may be cancelled. This method cannot be called after the entire order is already shipped. A rejected error code is returned when the payment service provider has declined the charge. This indicates a problem between the PSP and either the merchant\'s or customer\'s account. Sometimes this error will be resolved by the customer. We recommend retrying these errors once per day or cancelling the order with reason @failedToCaptureFunds@ if the items cannot be held.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.captureOrder@.
module Gogol.ShoppingContent.Content.Orders.CaptureOrder
  ( -- * Resource
    ContentOrdersCaptureOrderResource,

    -- ** Constructing a Request
    newContentOrdersCaptureOrder,
    ContentOrdersCaptureOrder,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.captureOrder@ method which the
-- 'ContentOrdersCaptureOrder' request conforms to.
type ContentOrdersCaptureOrderResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "orders"
    Core.:> Core.Capture "orderId" Core.Text
    Core.:> "captureOrder"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CaptureOrderRequest
    Core.:> Core.Post '[Core.JSON] CaptureOrderResponse

-- | Capture funds from the customer for the current order total. This method should be called after the merchant verifies that they are able and ready to start shipping the order. This method blocks until a response is received from the payment processsor. If this method succeeds, the merchant is guaranteed to receive funds for the order after shipment. If the request fails, it can be retried or the order may be cancelled. This method cannot be called after the entire order is already shipped. A rejected error code is returned when the payment service provider has declined the charge. This indicates a problem between the PSP and either the merchant\'s or customer\'s account. Sometimes this error will be resolved by the customer. We recommend retrying these errors once per day or cancelling the order with reason @failedToCaptureFunds@ if the items cannot be held.
--
-- /See:/ 'newContentOrdersCaptureOrder' smart constructor.
data ContentOrdersCaptureOrder = ContentOrdersCaptureOrder
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Int64,
    -- | Required. The ID of the Order.
    orderId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CaptureOrderRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersCaptureOrder' with the minimum fields required to make a request.
newContentOrdersCaptureOrder ::
  -- |  Required. The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Int64 ->
  -- |  Required. The ID of the Order. See 'orderId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CaptureOrderRequest ->
  ContentOrdersCaptureOrder
newContentOrdersCaptureOrder merchantId orderId payload =
  ContentOrdersCaptureOrder
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      orderId = orderId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrdersCaptureOrder where
  type
    Rs ContentOrdersCaptureOrder =
      CaptureOrderResponse
  type
    Scopes ContentOrdersCaptureOrder =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentOrdersCaptureOrder {..} =
    go
      merchantId
      orderId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentOrdersCaptureOrderResource
          )
          Core.mempty
