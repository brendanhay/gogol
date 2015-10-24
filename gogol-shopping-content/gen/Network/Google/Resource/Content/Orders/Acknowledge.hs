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
-- Module      : Network.Google.Resource.Content.Orders.Acknowledge
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks an order as acknowledged.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.acknowledge@.
module Network.Google.Resource.Content.Orders.Acknowledge
    (
    -- * REST Resource
      OrdersAcknowledgeResource

    -- * Creating a Request
    , ordersAcknowledge
    , OrdersAcknowledge

    -- * Request Lenses
    , oaMerchantId
    , oaPayload
    , oaOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.acknowledge@ method which the
-- 'OrdersAcknowledge' request conforms to.
type OrdersAcknowledgeResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "acknowledge" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersAcknowledgeRequest :>
                     Post '[JSON] OrdersAcknowledgeResponse

-- | Marks an order as acknowledged.
--
-- /See:/ 'ordersAcknowledge' smart constructor.
data OrdersAcknowledge = OrdersAcknowledge
    { _oaMerchantId :: !(Textual Word64)
    , _oaPayload    :: !OrdersAcknowledgeRequest
    , _oaOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaMerchantId'
--
-- * 'oaPayload'
--
-- * 'oaOrderId'
ordersAcknowledge
    :: Word64 -- ^ 'oaMerchantId'
    -> OrdersAcknowledgeRequest -- ^ 'oaPayload'
    -> Text -- ^ 'oaOrderId'
    -> OrdersAcknowledge
ordersAcknowledge pOaMerchantId_ pOaPayload_ pOaOrderId_ =
    OrdersAcknowledge
    { _oaMerchantId = _Coerce # pOaMerchantId_
    , _oaPayload = pOaPayload_
    , _oaOrderId = pOaOrderId_
    }

-- | The ID of the managing account.
oaMerchantId :: Lens' OrdersAcknowledge Word64
oaMerchantId
  = lens _oaMerchantId (\ s a -> s{_oaMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
oaPayload :: Lens' OrdersAcknowledge OrdersAcknowledgeRequest
oaPayload
  = lens _oaPayload (\ s a -> s{_oaPayload = a})

-- | The ID of the order.
oaOrderId :: Lens' OrdersAcknowledge Text
oaOrderId
  = lens _oaOrderId (\ s a -> s{_oaOrderId = a})

instance GoogleRequest OrdersAcknowledge where
        type Rs OrdersAcknowledge = OrdersAcknowledgeResponse
        requestClient OrdersAcknowledge{..}
          = go _oaMerchantId _oaOrderId (Just AltJSON)
              _oaPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersAcknowledgeResource)
                      mempty
