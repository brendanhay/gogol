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
-- Module      : Gogol.ShoppingContent.Content.Orders.Getbymerchantorderid
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an order using merchant order ID.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.getbymerchantorderid@.
module Gogol.ShoppingContent.Content.Orders.Getbymerchantorderid
  ( -- * Resource
    ContentOrdersGetbymerchantorderidResource,

    -- ** Constructing a Request
    newContentOrdersGetbymerchantorderid,
    ContentOrdersGetbymerchantorderid,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.getbymerchantorderid@ method which the
-- 'ContentOrdersGetbymerchantorderid' request conforms to.
type ContentOrdersGetbymerchantorderidResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "ordersbymerchantid"
    Core.:> Core.Capture "merchantOrderId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order ID.
--
-- /See:/ 'newContentOrdersGetbymerchantorderid' smart constructor.
data ContentOrdersGetbymerchantorderid = ContentOrdersGetbymerchantorderid
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account that manages the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | The merchant order ID to be looked for.
    merchantOrderId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersGetbymerchantorderid' with the minimum fields required to make a request.
newContentOrdersGetbymerchantorderid ::
  -- |  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  The merchant order ID to be looked for. See 'merchantOrderId'.
  Core.Text ->
  ContentOrdersGetbymerchantorderid
newContentOrdersGetbymerchantorderid merchantId merchantOrderId =
  ContentOrdersGetbymerchantorderid
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      merchantOrderId = merchantOrderId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentOrdersGetbymerchantorderid
  where
  type
    Rs ContentOrdersGetbymerchantorderid =
      OrdersGetByMerchantOrderIdResponse
  type
    Scopes ContentOrdersGetbymerchantorderid =
      '[Content'FullControl]
  requestClient ContentOrdersGetbymerchantorderid {..} =
    go
      merchantId
      merchantOrderId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentOrdersGetbymerchantorderidResource
          )
          Core.mempty
