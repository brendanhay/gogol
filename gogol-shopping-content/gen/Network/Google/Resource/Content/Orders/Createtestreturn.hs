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
-- Module      : Network.Google.Resource.Content.Orders.Createtestreturn
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Creates a test return.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.createtestreturn@.
module Network.Google.Resource.Content.Orders.Createtestreturn
    (
    -- * REST Resource
      OrdersCreatetestreturnResource

    -- * Creating a Request
    , ordersCreatetestreturn
    , OrdersCreatetestreturn

    -- * Request Lenses
    , occMerchantId
    , occPayload
    , occOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.createtestreturn@ method which the
-- 'OrdersCreatetestreturn' request conforms to.
type OrdersCreatetestreturnResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "testreturn" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCreateTestReturnRequest :>
                     Post '[JSON] OrdersCreateTestReturnResponse

-- | Sandbox only. Creates a test return.
--
-- /See:/ 'ordersCreatetestreturn' smart constructor.
data OrdersCreatetestreturn =
  OrdersCreatetestreturn'
    { _occMerchantId :: !(Textual Word64)
    , _occPayload    :: !OrdersCreateTestReturnRequest
    , _occOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreatetestreturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occMerchantId'
--
-- * 'occPayload'
--
-- * 'occOrderId'
ordersCreatetestreturn
    :: Word64 -- ^ 'occMerchantId'
    -> OrdersCreateTestReturnRequest -- ^ 'occPayload'
    -> Text -- ^ 'occOrderId'
    -> OrdersCreatetestreturn
ordersCreatetestreturn pOccMerchantId_ pOccPayload_ pOccOrderId_ =
  OrdersCreatetestreturn'
    { _occMerchantId = _Coerce # pOccMerchantId_
    , _occPayload = pOccPayload_
    , _occOrderId = pOccOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
occMerchantId :: Lens' OrdersCreatetestreturn Word64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
occPayload :: Lens' OrdersCreatetestreturn OrdersCreateTestReturnRequest
occPayload
  = lens _occPayload (\ s a -> s{_occPayload = a})

-- | The ID of the order.
occOrderId :: Lens' OrdersCreatetestreturn Text
occOrderId
  = lens _occOrderId (\ s a -> s{_occOrderId = a})

instance GoogleRequest OrdersCreatetestreturn where
        type Rs OrdersCreatetestreturn =
             OrdersCreateTestReturnResponse
        type Scopes OrdersCreatetestreturn =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCreatetestreturn'{..}
          = go _occMerchantId _occOrderId (Just AltJSON)
              _occPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCreatetestreturnResource)
                      mempty
