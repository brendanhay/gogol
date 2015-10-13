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
-- Module      : Network.Google.Resource.Content.Orders.AdvancetestOrder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersAdvancetestOrder@.
module Network.Google.Resource.Content.Orders.AdvancetestOrder
    (
    -- * REST Resource
      OrdersAdvancetestOrderResource

    -- * Creating a Request
    , ordersAdvancetestOrder'
    , OrdersAdvancetestOrder'

    -- * Request Lenses
    , oaoMerchantId
    , oaoOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersAdvancetestOrder@ method which the
-- 'OrdersAdvancetestOrder'' request conforms to.
type OrdersAdvancetestOrderResource =
     Capture "merchantId" Word64 :>
       "testorders" :>
         Capture "orderId" Text :>
           "advance" :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] OrdersAdvanceTestOrderResponse

-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ 'ordersAdvancetestOrder'' smart constructor.
data OrdersAdvancetestOrder' = OrdersAdvancetestOrder'
    { _oaoMerchantId :: !Word64
    , _oaoOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAdvancetestOrder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaoMerchantId'
--
-- * 'oaoOrderId'
ordersAdvancetestOrder'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAdvancetestOrder'
ordersAdvancetestOrder' pOaoMerchantId_ pOaoOrderId_ =
    OrdersAdvancetestOrder'
    { _oaoMerchantId = pOaoMerchantId_
    , _oaoOrderId = pOaoOrderId_
    }

-- | The ID of the managing account.
oaoMerchantId :: Lens' OrdersAdvancetestOrder' Word64
oaoMerchantId
  = lens _oaoMerchantId
      (\ s a -> s{_oaoMerchantId = a})

-- | The ID of the test order to modify.
oaoOrderId :: Lens' OrdersAdvancetestOrder' Text
oaoOrderId
  = lens _oaoOrderId (\ s a -> s{_oaoOrderId = a})

instance GoogleRequest OrdersAdvancetestOrder' where
        type Rs OrdersAdvancetestOrder' =
             OrdersAdvanceTestOrderResponse
        requestClient OrdersAdvancetestOrder'{..}
          = go _oaoMerchantId _oaoOrderId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersAdvancetestOrderResource)
                      mempty
