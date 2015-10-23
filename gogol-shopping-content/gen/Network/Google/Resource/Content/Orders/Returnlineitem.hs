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
-- Module      : Network.Google.Resource.Content.Orders.Returnlineitem
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.returnlineitem@.
module Network.Google.Resource.Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemResource

    -- * Creating a Request
    , ordersReturnlineitem
    , OrdersReturnlineitem

    -- * Request Lenses
    , oMerchantId
    , oPayload
    , oOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.returnlineitem@ method which the
-- 'OrdersReturnlineitem' request conforms to.
type OrdersReturnlineitemResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "returnLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersReturnLineItemRequest :>
                     Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem' smart constructor.
data OrdersReturnlineitem = OrdersReturnlineitem
    { _oMerchantId :: !(JSONText Word64)
    , _oPayload    :: !OrdersReturnLineItemRequest
    , _oOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oMerchantId'
--
-- * 'oPayload'
--
-- * 'oOrderId'
ordersReturnlineitem
    :: Word64 -- ^ 'oMerchantId'
    -> OrdersReturnLineItemRequest -- ^ 'oPayload'
    -> Text -- ^ 'oOrderId'
    -> OrdersReturnlineitem
ordersReturnlineitem pOMerchantId_ pOPayload_ pOOrderId_ =
    OrdersReturnlineitem
    { _oMerchantId = _Coerce # pOMerchantId_
    , _oPayload = pOPayload_
    , _oOrderId = pOOrderId_
    }

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersReturnlineitem Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a}) .
      _Coerce

-- | Multipart request metadata.
oPayload :: Lens' OrdersReturnlineitem OrdersReturnLineItemRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | The ID of the order.
oOrderId :: Lens' OrdersReturnlineitem Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

instance GoogleRequest OrdersReturnlineitem where
        type Rs OrdersReturnlineitem =
             OrdersReturnLineItemResponse
        requestClient OrdersReturnlineitem{..}
          = go _oMerchantId _oOrderId (Just AltJSON) _oPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersReturnlineitemResource)
                      mempty
