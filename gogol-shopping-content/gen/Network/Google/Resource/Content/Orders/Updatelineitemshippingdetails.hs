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
-- Module      : Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates ship by and delivery by dates for a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.updatelineitemshippingdetails@.
module Network.Google.Resource.Content.Orders.Updatelineitemshippingdetails
    (
    -- * REST Resource
      OrdersUpdatelineitemshippingdetailsResource

    -- * Creating a Request
    , ordersUpdatelineitemshippingdetails
    , OrdersUpdatelineitemshippingdetails

    -- * Request Lenses
    , ousMerchantId
    , ousPayload
    , ousOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updatelineitemshippingdetails@ method which the
-- 'OrdersUpdatelineitemshippingdetails' request conforms to.
type OrdersUpdatelineitemshippingdetailsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateLineItemShippingDetails" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrdersUpdateLineItemShippingDetailsRequest
                     :>
                     Post '[JSON]
                       OrdersUpdateLineItemShippingDetailsResponse

-- | Updates ship by and delivery by dates for a line item.
--
-- /See:/ 'ordersUpdatelineitemshippingdetails' smart constructor.
data OrdersUpdatelineitemshippingdetails =
  OrdersUpdatelineitemshippingdetails'
    { _ousMerchantId :: !(Textual Word64)
    , _ousPayload    :: !OrdersUpdateLineItemShippingDetailsRequest
    , _ousOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdatelineitemshippingdetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousMerchantId'
--
-- * 'ousPayload'
--
-- * 'ousOrderId'
ordersUpdatelineitemshippingdetails
    :: Word64 -- ^ 'ousMerchantId'
    -> OrdersUpdateLineItemShippingDetailsRequest -- ^ 'ousPayload'
    -> Text -- ^ 'ousOrderId'
    -> OrdersUpdatelineitemshippingdetails
ordersUpdatelineitemshippingdetails pOusMerchantId_ pOusPayload_ pOusOrderId_ =
  OrdersUpdatelineitemshippingdetails'
    { _ousMerchantId = _Coerce # pOusMerchantId_
    , _ousPayload = pOusPayload_
    , _ousOrderId = pOusOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ousMerchantId :: Lens' OrdersUpdatelineitemshippingdetails Word64
ousMerchantId
  = lens _ousMerchantId
      (\ s a -> s{_ousMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ousPayload :: Lens' OrdersUpdatelineitemshippingdetails OrdersUpdateLineItemShippingDetailsRequest
ousPayload
  = lens _ousPayload (\ s a -> s{_ousPayload = a})

-- | The ID of the order.
ousOrderId :: Lens' OrdersUpdatelineitemshippingdetails Text
ousOrderId
  = lens _ousOrderId (\ s a -> s{_ousOrderId = a})

instance GoogleRequest
           OrdersUpdatelineitemshippingdetails
         where
        type Rs OrdersUpdatelineitemshippingdetails =
             OrdersUpdateLineItemShippingDetailsResponse
        type Scopes OrdersUpdatelineitemshippingdetails =
             '["https://www.googleapis.com/auth/content"]
        requestClient
          OrdersUpdatelineitemshippingdetails'{..}
          = go _ousMerchantId _ousOrderId (Just AltJSON)
              _ousPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrdersUpdatelineitemshippingdetailsResource)
                      mempty
