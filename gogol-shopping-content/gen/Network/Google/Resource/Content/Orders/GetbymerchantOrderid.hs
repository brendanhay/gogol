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
-- Module      : Network.Google.Resource.Content.Orders.GetbymerchantOrderid
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an order using merchant order id.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.getbymerchantorderid@.
module Network.Google.Resource.Content.Orders.GetbymerchantOrderid
    (
    -- * REST Resource
      OrdersGetbymerchantOrderidResource

    -- * Creating a Request
    , ordersGetbymerchantOrderid
    , OrdersGetbymerchantOrderid

    -- * Request Lenses
    , ogogMerchantId
    , ogogMerchantOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.getbymerchantorderid@ method which the
-- 'OrdersGetbymerchantOrderid' request conforms to.
type OrdersGetbymerchantOrderidResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "ordersbymerchantid" :>
             Capture "merchantOrderId" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order id.
--
-- /See:/ 'ordersGetbymerchantOrderid' smart constructor.
data OrdersGetbymerchantOrderid =
  OrdersGetbymerchantOrderid'
    { _ogogMerchantId      :: !(Textual Word64)
    , _ogogMerchantOrderId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGetbymerchantOrderid' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogogMerchantId'
--
-- * 'ogogMerchantOrderId'
ordersGetbymerchantOrderid
    :: Word64 -- ^ 'ogogMerchantId'
    -> Text -- ^ 'ogogMerchantOrderId'
    -> OrdersGetbymerchantOrderid
ordersGetbymerchantOrderid pOgogMerchantId_ pOgogMerchantOrderId_ =
  OrdersGetbymerchantOrderid'
    { _ogogMerchantId = _Coerce # pOgogMerchantId_
    , _ogogMerchantOrderId = pOgogMerchantOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ogogMerchantId :: Lens' OrdersGetbymerchantOrderid Word64
ogogMerchantId
  = lens _ogogMerchantId
      (\ s a -> s{_ogogMerchantId = a})
      . _Coerce

-- | The merchant order id to be looked for.
ogogMerchantOrderId :: Lens' OrdersGetbymerchantOrderid Text
ogogMerchantOrderId
  = lens _ogogMerchantOrderId
      (\ s a -> s{_ogogMerchantOrderId = a})

instance GoogleRequest OrdersGetbymerchantOrderid
         where
        type Rs OrdersGetbymerchantOrderid =
             OrdersGetByMerchantOrderIdResponse
        type Scopes OrdersGetbymerchantOrderid =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersGetbymerchantOrderid'{..}
          = go _ogogMerchantId _ogogMerchantOrderId
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersGetbymerchantOrderidResource)
                      mempty
