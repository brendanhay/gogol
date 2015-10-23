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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels all line items in an order.
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
    , occMerchantId
    , occPayload
    , occOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancel@ method which the
-- 'OrdersCancel' request conforms to.
type OrdersCancelResource =
     "content" :>
       "v2" :>
         Capture "merchantId" Word64 :>
           "orders" :>
             Capture "orderId" Text :>
               "cancel" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCancelRequest :>
                     Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order.
--
-- /See:/ 'ordersCancel' smart constructor.
data OrdersCancel = OrdersCancel
    { _occMerchantId :: !Word64
    , _occPayload    :: !OrdersCancelRequest
    , _occOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occMerchantId'
--
-- * 'occPayload'
--
-- * 'occOrderId'
ordersCancel
    :: Word64 -- ^ 'occMerchantId'
    -> OrdersCancelRequest -- ^ 'occPayload'
    -> Text -- ^ 'occOrderId'
    -> OrdersCancel
ordersCancel pOccMerchantId_ pOccPayload_ pOccOrderId_ =
    OrdersCancel
    { _occMerchantId = pOccMerchantId_
    , _occPayload = pOccPayload_
    , _occOrderId = pOccOrderId_
    }

-- | The ID of the managing account.
occMerchantId :: Lens' OrdersCancel Word64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})

-- | Multipart request metadata.
occPayload :: Lens' OrdersCancel OrdersCancelRequest
occPayload
  = lens _occPayload (\ s a -> s{_occPayload = a})

-- | The ID of the order to cancel.
occOrderId :: Lens' OrdersCancel Text
occOrderId
  = lens _occOrderId (\ s a -> s{_occOrderId = a})

instance GoogleRequest OrdersCancel where
        type Rs OrdersCancel = OrdersCancelResponse
        requestClient OrdersCancel{..}
          = go _occMerchantId _occOrderId (Just AltJSON)
              _occPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersCancelResource)
                      mempty
