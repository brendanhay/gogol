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
-- Module      : Gogol.ShoppingContent.Content.Orders.Returnrefundlineitem
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns and refunds a line item. Note that this method can only be called on fully shipped orders. The Orderreturns API is the preferred way to handle returns after you receive a return from a customer. You can use Orderreturns.list or Orderreturns.get to search for the return, and then use Orderreturns.processreturn to issue the refund. If the return cannot be found, then we recommend using this API to issue a refund.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.returnrefundlineitem@.
module Gogol.ShoppingContent.Content.Orders.Returnrefundlineitem
    (
    -- * Resource
      ContentOrdersReturnrefundlineitemResource

    -- ** Constructing a Request
    , newContentOrdersReturnrefundlineitem
    , ContentOrdersReturnrefundlineitem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.returnrefundlineitem@ method which the
-- 'ContentOrdersReturnrefundlineitem' request conforms to.
type ContentOrdersReturnrefundlineitemResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "returnRefundLineItem" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               OrdersReturnRefundLineItemRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 OrdersReturnRefundLineItemResponse

-- | Returns and refunds a line item. Note that this method can only be called on fully shipped orders. The Orderreturns API is the preferred way to handle returns after you receive a return from a customer. You can use Orderreturns.list or Orderreturns.get to search for the return, and then use Orderreturns.processreturn to issue the refund. If the return cannot be found, then we recommend using this API to issue a refund.
--
-- /See:/ 'newContentOrdersReturnrefundlineitem' smart constructor.
data ContentOrdersReturnrefundlineitem = ContentOrdersReturnrefundlineitem
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The ID of the order.
    , orderId :: Core.Text
      -- | Multipart request metadata.
    , payload :: OrdersReturnRefundLineItemRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersReturnrefundlineitem' with the minimum fields required to make a request.
newContentOrdersReturnrefundlineitem 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the order. See 'orderId'.
    -> OrdersReturnRefundLineItemRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersReturnrefundlineitem
newContentOrdersReturnrefundlineitem merchantId orderId payload =
  ContentOrdersReturnrefundlineitem
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , orderId = orderId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentOrdersReturnrefundlineitem
         where
        type Rs ContentOrdersReturnrefundlineitem =
             OrdersReturnRefundLineItemResponse
        type Scopes ContentOrdersReturnrefundlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentOrdersReturnrefundlineitem{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentOrdersReturnrefundlineitemResource)
                      Core.mempty

