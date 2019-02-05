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
-- Module      : Network.Google.Resource.Content.Orders.Instorerefundlineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies that item return and refund was handled directly by merchant
-- outside of Google payments processing (e.g. cash refund done in store).
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.instorerefundlineitem@.
module Network.Google.Resource.Content.Orders.Instorerefundlineitem
    (
    -- * REST Resource
      OrdersInstorerefundlineitemResource

    -- * Creating a Request
    , ordersInstorerefundlineitem
    , OrdersInstorerefundlineitem

    -- * Request Lenses
    , oiMerchantId
    , oiPayload
    , oiOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.instorerefundlineitem@ method which the
-- 'OrdersInstorerefundlineitem' request conforms to.
type OrdersInstorerefundlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "inStoreRefundLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersInStoreRefundLineItemRequest :>
                     Post '[JSON] OrdersInStoreRefundLineItemResponse

-- | Notifies that item return and refund was handled directly by merchant
-- outside of Google payments processing (e.g. cash refund done in store).
--
-- /See:/ 'ordersInstorerefundlineitem' smart constructor.
data OrdersInstorerefundlineitem = OrdersInstorerefundlineitem'
    { _oiMerchantId :: !(Textual Word64)
    , _oiPayload    :: !OrdersInStoreRefundLineItemRequest
    , _oiOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersInstorerefundlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiMerchantId'
--
-- * 'oiPayload'
--
-- * 'oiOrderId'
ordersInstorerefundlineitem
    :: Word64 -- ^ 'oiMerchantId'
    -> OrdersInStoreRefundLineItemRequest -- ^ 'oiPayload'
    -> Text -- ^ 'oiOrderId'
    -> OrdersInstorerefundlineitem
ordersInstorerefundlineitem pOiMerchantId_ pOiPayload_ pOiOrderId_ =
    OrdersInstorerefundlineitem'
    { _oiMerchantId = _Coerce # pOiMerchantId_
    , _oiPayload = pOiPayload_
    , _oiOrderId = pOiOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oiMerchantId :: Lens' OrdersInstorerefundlineitem Word64
oiMerchantId
  = lens _oiMerchantId (\ s a -> s{_oiMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
oiPayload :: Lens' OrdersInstorerefundlineitem OrdersInStoreRefundLineItemRequest
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

-- | The ID of the order.
oiOrderId :: Lens' OrdersInstorerefundlineitem Text
oiOrderId
  = lens _oiOrderId (\ s a -> s{_oiOrderId = a})

instance GoogleRequest OrdersInstorerefundlineitem
         where
        type Rs OrdersInstorerefundlineitem =
             OrdersInStoreRefundLineItemResponse
        type Scopes OrdersInstorerefundlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersInstorerefundlineitem'{..}
          = go _oiMerchantId _oiOrderId (Just AltJSON)
              _oiPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersInstorerefundlineitemResource)
                      mempty
