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
-- Module      : Network.Google.Resource.Content.Orders.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refund a portion of the order, up to the full amount paid.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.refund@.
module Network.Google.Resource.Content.Orders.Refund
    (
    -- * REST Resource
      OrdersRefundResource

    -- * Creating a Request
    , ordersRefund
    , OrdersRefund

    -- * Request Lenses
    , orMerchantId
    , orPayload
    , orOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.refund@ method which the
-- 'OrdersRefund' request conforms to.
type OrdersRefundResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "refund" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersRefundRequest :>
                     Post '[JSON] OrdersRefundResponse

-- | Refund a portion of the order, up to the full amount paid.
--
-- /See:/ 'ordersRefund' smart constructor.
data OrdersRefund = OrdersRefund
    { _orMerchantId :: !(Textual Word64)
    , _orPayload    :: !OrdersRefundRequest
    , _orOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orMerchantId'
--
-- * 'orPayload'
--
-- * 'orOrderId'
ordersRefund
    :: Word64 -- ^ 'orMerchantId'
    -> OrdersRefundRequest -- ^ 'orPayload'
    -> Text -- ^ 'orOrderId'
    -> OrdersRefund
ordersRefund pOrMerchantId_ pOrPayload_ pOrOrderId_ =
    OrdersRefund
    { _orMerchantId = _Coerce # pOrMerchantId_
    , _orPayload = pOrPayload_
    , _orOrderId = pOrOrderId_
    }

-- | The ID of the managing account.
orMerchantId :: Lens' OrdersRefund Word64
orMerchantId
  = lens _orMerchantId (\ s a -> s{_orMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
orPayload :: Lens' OrdersRefund OrdersRefundRequest
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | The ID of the order to refund.
orOrderId :: Lens' OrdersRefund Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

instance GoogleRequest OrdersRefund where
        type Rs OrdersRefund = OrdersRefundResponse
        requestClient OrdersRefund{..}
          = go _orMerchantId _orOrderId (Just AltJSON)
              _orPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersRefundResource)
                      mempty
