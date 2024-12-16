{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Orders.Updatelineitemshippingdetails
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates ship by and delivery by dates for a line item.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.updatelineitemshippingdetails@.
module Gogol.ShoppingContent.Content.Orders.Updatelineitemshippingdetails
    (
    -- * Resource
      ContentOrdersUpdatelineitemshippingdetailsResource

    -- ** Constructing a Request
    , ContentOrdersUpdatelineitemshippingdetails (..)
    , newContentOrdersUpdatelineitemshippingdetails
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.updatelineitemshippingdetails@ method which the
-- 'ContentOrdersUpdatelineitemshippingdetails' request conforms to.
type ContentOrdersUpdatelineitemshippingdetailsResource
     =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "updateLineItemShippingDetails" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON]
                               OrdersUpdateLineItemShippingDetailsRequest
                               Core.:>
                               Core.Post '[Core.JSON]
                                 OrdersUpdateLineItemShippingDetailsResponse

-- | Updates ship by and delivery by dates for a line item.
--
-- /See:/ 'newContentOrdersUpdatelineitemshippingdetails' smart constructor.
data ContentOrdersUpdatelineitemshippingdetails = ContentOrdersUpdatelineitemshippingdetails
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
    , payload :: OrdersUpdateLineItemShippingDetailsRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersUpdatelineitemshippingdetails' with the minimum fields required to make a request.
newContentOrdersUpdatelineitemshippingdetails 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the order. See 'orderId'.
    -> OrdersUpdateLineItemShippingDetailsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersUpdatelineitemshippingdetails
newContentOrdersUpdatelineitemshippingdetails merchantId orderId payload =
  ContentOrdersUpdatelineitemshippingdetails
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
           ContentOrdersUpdatelineitemshippingdetails
         where
        type Rs ContentOrdersUpdatelineitemshippingdetails =
             OrdersUpdateLineItemShippingDetailsResponse
        type Scopes
               ContentOrdersUpdatelineitemshippingdetails
             = '[Content'FullControl]
        requestClient
          ContentOrdersUpdatelineitemshippingdetails{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentOrdersUpdatelineitemshippingdetailsResource)
                      Core.mempty

