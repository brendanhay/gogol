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
-- Module      : Network.Google.Resource.Content.Orders.Rejectreturnlineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects return on an line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.rejectreturnlineitem@.
module Network.Google.Resource.Content.Orders.Rejectreturnlineitem
    (
    -- * REST Resource
      OrdersRejectreturnlineitemResource

    -- * Creating a Request
    , ordersRejectreturnlineitem
    , OrdersRejectreturnlineitem

    -- * Request Lenses
    , orrMerchantId
    , orrPayload
    , orrOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.rejectreturnlineitem@ method which the
-- 'OrdersRejectreturnlineitem' request conforms to.
type OrdersRejectreturnlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "rejectReturnLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersRejectReturnLineItemRequest :>
                     Post '[JSON] OrdersRejectReturnLineItemResponse

-- | Rejects return on an line item.
--
-- /See:/ 'ordersRejectreturnlineitem' smart constructor.
data OrdersRejectreturnlineitem = OrdersRejectreturnlineitem'
    { _orrMerchantId :: !(Textual Word64)
    , _orrPayload    :: !OrdersRejectReturnLineItemRequest
    , _orrOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRejectreturnlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrMerchantId'
--
-- * 'orrPayload'
--
-- * 'orrOrderId'
ordersRejectreturnlineitem
    :: Word64 -- ^ 'orrMerchantId'
    -> OrdersRejectReturnLineItemRequest -- ^ 'orrPayload'
    -> Text -- ^ 'orrOrderId'
    -> OrdersRejectreturnlineitem
ordersRejectreturnlineitem pOrrMerchantId_ pOrrPayload_ pOrrOrderId_ =
    OrdersRejectreturnlineitem'
    { _orrMerchantId = _Coerce # pOrrMerchantId_
    , _orrPayload = pOrrPayload_
    , _orrOrderId = pOrrOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orrMerchantId :: Lens' OrdersRejectreturnlineitem Word64
orrMerchantId
  = lens _orrMerchantId
      (\ s a -> s{_orrMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
orrPayload :: Lens' OrdersRejectreturnlineitem OrdersRejectReturnLineItemRequest
orrPayload
  = lens _orrPayload (\ s a -> s{_orrPayload = a})

-- | The ID of the order.
orrOrderId :: Lens' OrdersRejectreturnlineitem Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

instance GoogleRequest OrdersRejectreturnlineitem
         where
        type Rs OrdersRejectreturnlineitem =
             OrdersRejectReturnLineItemResponse
        type Scopes OrdersRejectreturnlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersRejectreturnlineitem'{..}
          = go _orrMerchantId _orrOrderId (Just AltJSON)
              _orrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersRejectreturnlineitemResource)
                      mempty
