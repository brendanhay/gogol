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
-- Module      : Network.Google.Resource.Content.Orders.Updateshipment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.updateshipment@.
module Network.Google.Resource.Content.Orders.Updateshipment
    (
    -- * REST Resource
      OrdersUpdateshipmentResource

    -- * Creating a Request
    , ordersUpdateshipment
    , OrdersUpdateshipment

    -- * Request Lenses
    , ouMerchantId
    , ouPayload
    , ouOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updateshipment@ method which the
-- 'OrdersUpdateshipment' request conforms to.
type OrdersUpdateshipmentResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateShipment" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersUpdateShipmentRequest :>
                     Post '[JSON] OrdersUpdateShipmentResponse

-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ 'ordersUpdateshipment' smart constructor.
data OrdersUpdateshipment = OrdersUpdateshipment'
    { _ouMerchantId :: !(Textual Word64)
    , _ouPayload    :: !OrdersUpdateShipmentRequest
    , _ouOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateshipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouMerchantId'
--
-- * 'ouPayload'
--
-- * 'ouOrderId'
ordersUpdateshipment
    :: Word64 -- ^ 'ouMerchantId'
    -> OrdersUpdateShipmentRequest -- ^ 'ouPayload'
    -> Text -- ^ 'ouOrderId'
    -> OrdersUpdateshipment
ordersUpdateshipment pOuMerchantId_ pOuPayload_ pOuOrderId_ =
    OrdersUpdateshipment'
    { _ouMerchantId = _Coerce # pOuMerchantId_
    , _ouPayload = pOuPayload_
    , _ouOrderId = pOuOrderId_
    }

-- | The ID of the managing account.
ouMerchantId :: Lens' OrdersUpdateshipment Word64
ouMerchantId
  = lens _ouMerchantId (\ s a -> s{_ouMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ouPayload :: Lens' OrdersUpdateshipment OrdersUpdateShipmentRequest
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | The ID of the order.
ouOrderId :: Lens' OrdersUpdateshipment Text
ouOrderId
  = lens _ouOrderId (\ s a -> s{_ouOrderId = a})

instance GoogleRequest OrdersUpdateshipment where
        type Rs OrdersUpdateshipment =
             OrdersUpdateShipmentResponse
        type Scopes OrdersUpdateshipment =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersUpdateshipment'{..}
          = go _ouMerchantId _ouOrderId (Just AltJSON)
              _ouPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersUpdateshipmentResource)
                      mempty
