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
-- Module      : Gogol.ShoppingContent.Content.Orders.Refunditem
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a partial or total refund for items and shipment.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.refunditem@.
module Gogol.ShoppingContent.Content.Orders.Refunditem
    (
    -- * Resource
      ContentOrdersRefunditemResource

    -- ** Constructing a Request
    , newContentOrdersRefunditem
    , ContentOrdersRefunditem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.refunditem@ method which the
-- 'ContentOrdersRefunditem' request conforms to.
type ContentOrdersRefunditemResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "refunditem" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] OrdersRefundItemRequest
                               Core.:>
                               Core.Post '[Core.JSON] OrdersRefundItemResponse

-- | Issues a partial or total refund for items and shipment.
--
-- /See:/ 'newContentOrdersRefunditem' smart constructor.
data ContentOrdersRefunditem = ContentOrdersRefunditem
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The ID of the order to refund.
    , orderId :: Core.Text
      -- | Multipart request metadata.
    , payload :: OrdersRefundItemRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersRefunditem' with the minimum fields required to make a request.
newContentOrdersRefunditem 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the order to refund. See 'orderId'.
    -> OrdersRefundItemRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersRefunditem
newContentOrdersRefunditem merchantId orderId payload =
  ContentOrdersRefunditem
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , orderId = orderId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrdersRefunditem
         where
        type Rs ContentOrdersRefunditem =
             OrdersRefundItemResponse
        type Scopes ContentOrdersRefunditem =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentOrdersRefunditem{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentOrdersRefunditemResource)
                      Core.mempty

