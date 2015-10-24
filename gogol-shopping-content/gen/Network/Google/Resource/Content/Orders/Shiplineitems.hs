{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Shiplineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks line item(s) as shipped.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.shiplineitems@.
module Network.Google.Resource.Content.Orders.Shiplineitems
    (
    -- * REST Resource
      OrdersShiplineitemsResource

    -- * Creating a Request
    , ordersShiplineitems
    , OrdersShiplineitems

    -- * Request Lenses
    , osMerchantId
    , osPayload
    , osOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.shiplineitems@ method which the
-- 'OrdersShiplineitems' request conforms to.
type OrdersShiplineitemsResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "shipLineItems" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersShipLineItemsRequest :>
                     Post '[JSON] OrdersShipLineItemsResponse

-- | Marks line item(s) as shipped.
--
-- /See:/ 'ordersShiplineitems' smart constructor.
data OrdersShiplineitems = OrdersShiplineitems
    { _osMerchantId :: !(Textual Word64)
    , _osPayload    :: !OrdersShipLineItemsRequest
    , _osOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersShiplineitems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osMerchantId'
--
-- * 'osPayload'
--
-- * 'osOrderId'
ordersShiplineitems
    :: Word64 -- ^ 'osMerchantId'
    -> OrdersShipLineItemsRequest -- ^ 'osPayload'
    -> Text -- ^ 'osOrderId'
    -> OrdersShiplineitems
ordersShiplineitems pOsMerchantId_ pOsPayload_ pOsOrderId_ =
    OrdersShiplineitems
    { _osMerchantId = _Coerce # pOsMerchantId_
    , _osPayload = pOsPayload_
    , _osOrderId = pOsOrderId_
    }

-- | The ID of the managing account.
osMerchantId :: Lens' OrdersShiplineitems Word64
osMerchantId
  = lens _osMerchantId (\ s a -> s{_osMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
osPayload :: Lens' OrdersShiplineitems OrdersShipLineItemsRequest
osPayload
  = lens _osPayload (\ s a -> s{_osPayload = a})

-- | The ID of the order.
osOrderId :: Lens' OrdersShiplineitems Text
osOrderId
  = lens _osOrderId (\ s a -> s{_osOrderId = a})

instance GoogleRequest OrdersShiplineitems where
        type Rs OrdersShiplineitems =
             OrdersShipLineItemsResponse
        requestClient OrdersShiplineitems{..}
          = go _osMerchantId _osOrderId (Just AltJSON)
              _osPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersShiplineitemsResource)
                      mempty
