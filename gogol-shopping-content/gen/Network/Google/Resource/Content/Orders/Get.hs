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
-- Module      : Network.Google.Resource.Content.Orders.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an order from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.get@.
module Network.Google.Resource.Content.Orders.Get
    (
    -- * REST Resource
      OrdersGetResource

    -- * Creating a Request
    , ordersGet
    , OrdersGet

    -- * Request Lenses
    , ogMerchantId
    , ogOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.get@ method which the
-- 'OrdersGet' request conforms to.
type OrdersGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ 'ordersGet' smart constructor.
data OrdersGet = OrdersGet'
    { _ogMerchantId :: !(Textual Word64)
    , _ogOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogMerchantId'
--
-- * 'ogOrderId'
ordersGet
    :: Word64 -- ^ 'ogMerchantId'
    -> Text -- ^ 'ogOrderId'
    -> OrdersGet
ordersGet pOgMerchantId_ pOgOrderId_ =
    OrdersGet'
    { _ogMerchantId = _Coerce # pOgMerchantId_
    , _ogOrderId = pOgOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ogMerchantId :: Lens' OrdersGet Word64
ogMerchantId
  = lens _ogMerchantId (\ s a -> s{_ogMerchantId = a})
      . _Coerce

-- | The ID of the order.
ogOrderId :: Lens' OrdersGet Text
ogOrderId
  = lens _ogOrderId (\ s a -> s{_ogOrderId = a})

instance GoogleRequest OrdersGet where
        type Rs OrdersGet = Order
        type Scopes OrdersGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersGet'{..}
          = go _ogMerchantId _ogOrderId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersGetResource)
                      mempty
