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
-- Module      : Network.Google.Resource.Content.Orders.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels all line items in an order, making a full refund.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.cancel@.
module Network.Google.Resource.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelResource

    -- * Creating a Request
    , ordersCancel
    , OrdersCancel

    -- * Request Lenses
    , o2MerchantId
    , o2Payload
    , o2OrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancel@ method which the
-- 'OrdersCancel' request conforms to.
type OrdersCancelResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "cancel" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCancelRequest :>
                     Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order, making a full refund.
--
-- /See:/ 'ordersCancel' smart constructor.
data OrdersCancel = OrdersCancel'
    { _o2MerchantId :: !(Textual Word64)
    , _o2Payload    :: !OrdersCancelRequest
    , _o2OrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'o2MerchantId'
--
-- * 'o2Payload'
--
-- * 'o2OrderId'
ordersCancel
    :: Word64 -- ^ 'o2MerchantId'
    -> OrdersCancelRequest -- ^ 'o2Payload'
    -> Text -- ^ 'o2OrderId'
    -> OrdersCancel
ordersCancel pO2MerchantId_ pO2Payload_ pO2OrderId_ =
    OrdersCancel'
    { _o2MerchantId = _Coerce # pO2MerchantId_
    , _o2Payload = pO2Payload_
    , _o2OrderId = pO2OrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
o2MerchantId :: Lens' OrdersCancel Word64
o2MerchantId
  = lens _o2MerchantId (\ s a -> s{_o2MerchantId = a})
      . _Coerce

-- | Multipart request metadata.
o2Payload :: Lens' OrdersCancel OrdersCancelRequest
o2Payload
  = lens _o2Payload (\ s a -> s{_o2Payload = a})

-- | The ID of the order to cancel.
o2OrderId :: Lens' OrdersCancel Text
o2OrderId
  = lens _o2OrderId (\ s a -> s{_o2OrderId = a})

instance GoogleRequest OrdersCancel where
        type Rs OrdersCancel = OrdersCancelResponse
        type Scopes OrdersCancel =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCancel'{..}
          = go _o2MerchantId _o2OrderId (Just AltJSON)
              _o2Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersCancelResource)
                      mempty
