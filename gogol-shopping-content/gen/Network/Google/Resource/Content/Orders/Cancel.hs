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
-- | Cancels all line items in an order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCancel@.
module Network.Google.Resource.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelResource

    -- * Creating a Request
    , ordersCancel'
    , OrdersCancel'

    -- * Request Lenses
    , ocMerchantId
    , ocPayload
    , ocOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancel@ method which the
-- 'OrdersCancel'' request conforms to.
type OrdersCancelResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancel" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] OrdersCancelRequest :>
                 Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order.
--
-- /See:/ 'ordersCancel'' smart constructor.
data OrdersCancel' = OrdersCancel'
    { _ocMerchantId :: !Word64
    , _ocPayload    :: !OrdersCancelRequest
    , _ocOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocMerchantId'
--
-- * 'ocPayload'
--
-- * 'ocOrderId'
ordersCancel'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCancelRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersCancel'
ordersCancel' pOcMerchantId_ pOcPayload_ pOcOrderId_ =
    OrdersCancel'
    { _ocMerchantId = pOcMerchantId_
    , _ocPayload = pOcPayload_
    , _ocOrderId = pOcOrderId_
    }

-- | The ID of the managing account.
ocMerchantId :: Lens' OrdersCancel' Word64
ocMerchantId
  = lens _ocMerchantId (\ s a -> s{_ocMerchantId = a})

-- | Multipart request metadata.
ocPayload :: Lens' OrdersCancel' OrdersCancelRequest
ocPayload
  = lens _ocPayload (\ s a -> s{_ocPayload = a})

-- | The ID of the order to cancel.
ocOrderId :: Lens' OrdersCancel' Text
ocOrderId
  = lens _ocOrderId (\ s a -> s{_ocOrderId = a})

instance GoogleRequest OrdersCancel' where
        type Rs OrdersCancel' = OrdersCancelResponse
        requestClient OrdersCancel'{..}
          = go _ocMerchantId _ocOrderId (Just AltJSON)
              _ocPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersCancelResource)
                      mempty
