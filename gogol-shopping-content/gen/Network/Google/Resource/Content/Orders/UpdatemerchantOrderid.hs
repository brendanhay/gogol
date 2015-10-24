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
-- Module      : Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the merchant order ID for a given order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.updatemerchantorderid@.
module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
    (
    -- * REST Resource
      OrdersUpdatemerchantOrderidResource

    -- * Creating a Request
    , ordersUpdatemerchantOrderid
    , OrdersUpdatemerchantOrderid

    -- * Request Lenses
    , ouoMerchantId
    , ouoPayload
    , ouoOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updatemerchantorderid@ method which the
-- 'OrdersUpdatemerchantOrderid' request conforms to.
type OrdersUpdatemerchantOrderidResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateMerchantOrderId" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersUpdateMerchantOrderIdRequest :>
                     Post '[JSON] OrdersUpdateMerchantOrderIdResponse

-- | Updates the merchant order ID for a given order.
--
-- /See:/ 'ordersUpdatemerchantOrderid' smart constructor.
data OrdersUpdatemerchantOrderid = OrdersUpdatemerchantOrderid
    { _ouoMerchantId :: !(Textual Word64)
    , _ouoPayload    :: !OrdersUpdateMerchantOrderIdRequest
    , _ouoOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdatemerchantOrderid' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouoMerchantId'
--
-- * 'ouoPayload'
--
-- * 'ouoOrderId'
ordersUpdatemerchantOrderid
    :: Word64 -- ^ 'ouoMerchantId'
    -> OrdersUpdateMerchantOrderIdRequest -- ^ 'ouoPayload'
    -> Text -- ^ 'ouoOrderId'
    -> OrdersUpdatemerchantOrderid
ordersUpdatemerchantOrderid pOuoMerchantId_ pOuoPayload_ pOuoOrderId_ =
    OrdersUpdatemerchantOrderid
    { _ouoMerchantId = _Coerce # pOuoMerchantId_
    , _ouoPayload = pOuoPayload_
    , _ouoOrderId = pOuoOrderId_
    }

-- | The ID of the managing account.
ouoMerchantId :: Lens' OrdersUpdatemerchantOrderid Word64
ouoMerchantId
  = lens _ouoMerchantId
      (\ s a -> s{_ouoMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ouoPayload :: Lens' OrdersUpdatemerchantOrderid OrdersUpdateMerchantOrderIdRequest
ouoPayload
  = lens _ouoPayload (\ s a -> s{_ouoPayload = a})

-- | The ID of the order.
ouoOrderId :: Lens' OrdersUpdatemerchantOrderid Text
ouoOrderId
  = lens _ouoOrderId (\ s a -> s{_ouoOrderId = a})

instance GoogleRequest OrdersUpdatemerchantOrderid
         where
        type Rs OrdersUpdatemerchantOrderid =
             OrdersUpdateMerchantOrderIdResponse
        requestClient OrdersUpdatemerchantOrderid{..}
          = go _ouoMerchantId _ouoOrderId (Just AltJSON)
              _ouoPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersUpdatemerchantOrderidResource)
                      mempty
