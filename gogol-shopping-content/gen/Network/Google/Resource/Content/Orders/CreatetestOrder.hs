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
-- Module      : Network.Google.Resource.Content.Orders.CreatetestOrder
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Creates a test order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.createtestorder@.
module Network.Google.Resource.Content.Orders.CreatetestOrder
    (
    -- * REST Resource
      OrdersCreatetestOrderResource

    -- * Creating a Request
    , ordersCreatetestOrder
    , OrdersCreatetestOrder

    -- * Request Lenses
    , ococMerchantId
    , ococPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.createtestorder@ method which the
-- 'OrdersCreatetestOrder' request conforms to.
type OrdersCreatetestOrderResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "testorders" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] OrdersCreateTestOrderRequest :>
                 Post '[JSON] OrdersCreateTestOrderResponse

-- | Sandbox only. Creates a test order.
--
-- /See:/ 'ordersCreatetestOrder' smart constructor.
data OrdersCreatetestOrder =
  OrdersCreatetestOrder'
    { _ococMerchantId :: !(Textual Word64)
    , _ococPayload    :: !OrdersCreateTestOrderRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCreatetestOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ococMerchantId'
--
-- * 'ococPayload'
ordersCreatetestOrder
    :: Word64 -- ^ 'ococMerchantId'
    -> OrdersCreateTestOrderRequest -- ^ 'ococPayload'
    -> OrdersCreatetestOrder
ordersCreatetestOrder pOcocMerchantId_ pOcocPayload_ =
  OrdersCreatetestOrder'
    {_ococMerchantId = _Coerce # pOcocMerchantId_, _ococPayload = pOcocPayload_}

-- | The ID of the account that should manage the order. This cannot be a
-- multi-client account.
ococMerchantId :: Lens' OrdersCreatetestOrder Word64
ococMerchantId
  = lens _ococMerchantId
      (\ s a -> s{_ococMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ococPayload :: Lens' OrdersCreatetestOrder OrdersCreateTestOrderRequest
ococPayload
  = lens _ococPayload (\ s a -> s{_ococPayload = a})

instance GoogleRequest OrdersCreatetestOrder where
        type Rs OrdersCreatetestOrder =
             OrdersCreateTestOrderResponse
        type Scopes OrdersCreatetestOrder =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCreatetestOrder'{..}
          = go _ococMerchantId (Just AltJSON) _ococPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCreatetestOrderResource)
                      mempty
