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
-- Copyright   : (c) 2015 Brendan Hay
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
    , ordersGetbymerchantOrderid'
    , OrdersGetbymerchantOrderid'

    -- * Request Lenses
    , ordMerchantId
    , ordMerchantOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.getbymerchantorderid@ method which the
-- 'OrdersGetbymerchantOrderid'' request conforms to.
type OrdersGetbymerchantOrderidResource =
     Capture "merchantId" Word64 :>
       "ordersbymerchantid" :>
         Capture "merchantOrderId" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order id.
--
-- /See:/ 'ordersGetbymerchantOrderid'' smart constructor.
data OrdersGetbymerchantOrderid' = OrdersGetbymerchantOrderid'
    { _ordMerchantId      :: !Word64
    , _ordMerchantOrderId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetbymerchantOrderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordMerchantId'
--
-- * 'ordMerchantOrderId'
ordersGetbymerchantOrderid'
    :: Word64 -- ^ 'ordMerchantId'
    -> Text -- ^ 'ordMerchantOrderId'
    -> OrdersGetbymerchantOrderid'
ordersGetbymerchantOrderid' pOrdMerchantId_ pOrdMerchantOrderId_ =
    OrdersGetbymerchantOrderid'
    { _ordMerchantId = pOrdMerchantId_
    , _ordMerchantOrderId = pOrdMerchantOrderId_
    }

-- | The ID of the managing account.
ordMerchantId :: Lens' OrdersGetbymerchantOrderid' Word64
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})

-- | The merchant order id to be looked for.
ordMerchantOrderId :: Lens' OrdersGetbymerchantOrderid' Text
ordMerchantOrderId
  = lens _ordMerchantOrderId
      (\ s a -> s{_ordMerchantOrderId = a})

instance GoogleRequest OrdersGetbymerchantOrderid'
         where
        type Rs OrdersGetbymerchantOrderid' =
             OrdersGetByMerchantOrderIdResponse
        requestClient OrdersGetbymerchantOrderid'{..}
          = go _ordMerchantId _ordMerchantOrderId
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersGetbymerchantOrderidResource)
                      mempty
