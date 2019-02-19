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
-- Module      : Network.Google.Resource.Content.Orders.Returnrefundlineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns and refunds a line item. Note that this method can only be
-- called on fully shipped orders.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.returnrefundlineitem@.
module Network.Google.Resource.Content.Orders.Returnrefundlineitem
    (
    -- * REST Resource
      OrdersReturnrefundlineitemResource

    -- * Creating a Request
    , ordersReturnrefundlineitem
    , OrdersReturnrefundlineitem

    -- * Request Lenses
    , orMerchantId
    , orPayload
    , orOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.returnrefundlineitem@ method which the
-- 'OrdersReturnrefundlineitem' request conforms to.
type OrdersReturnrefundlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "returnRefundLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersReturnRefundLineItemRequest :>
                     Post '[JSON] OrdersReturnRefundLineItemResponse

-- | Returns and refunds a line item. Note that this method can only be
-- called on fully shipped orders.
--
-- /See:/ 'ordersReturnrefundlineitem' smart constructor.
data OrdersReturnrefundlineitem =
  OrdersReturnrefundlineitem'
    { _orMerchantId :: !(Textual Word64)
    , _orPayload    :: !OrdersReturnRefundLineItemRequest
    , _orOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersReturnrefundlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orMerchantId'
--
-- * 'orPayload'
--
-- * 'orOrderId'
ordersReturnrefundlineitem
    :: Word64 -- ^ 'orMerchantId'
    -> OrdersReturnRefundLineItemRequest -- ^ 'orPayload'
    -> Text -- ^ 'orOrderId'
    -> OrdersReturnrefundlineitem
ordersReturnrefundlineitem pOrMerchantId_ pOrPayload_ pOrOrderId_ =
  OrdersReturnrefundlineitem'
    { _orMerchantId = _Coerce # pOrMerchantId_
    , _orPayload = pOrPayload_
    , _orOrderId = pOrOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orMerchantId :: Lens' OrdersReturnrefundlineitem Word64
orMerchantId
  = lens _orMerchantId (\ s a -> s{_orMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
orPayload :: Lens' OrdersReturnrefundlineitem OrdersReturnRefundLineItemRequest
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | The ID of the order.
orOrderId :: Lens' OrdersReturnrefundlineitem Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

instance GoogleRequest OrdersReturnrefundlineitem
         where
        type Rs OrdersReturnrefundlineitem =
             OrdersReturnRefundLineItemResponse
        type Scopes OrdersReturnrefundlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersReturnrefundlineitem'{..}
          = go _orMerchantId _orOrderId (Just AltJSON)
              _orPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersReturnrefundlineitemResource)
                      mempty
