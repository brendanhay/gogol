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
-- Module      : Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.canceltestorderbycustomer@.
module Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
    (
    -- * REST Resource
      OrdersCanceltestOrderbycustomerResource

    -- * Creating a Request
    , ordersCanceltestOrderbycustomer
    , OrdersCanceltestOrderbycustomer

    -- * Request Lenses
    , ocoMerchantId
    , ocoPayload
    , ocoOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.canceltestorderbycustomer@ method which the
-- 'OrdersCanceltestOrderbycustomer' request conforms to.
type OrdersCanceltestOrderbycustomerResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "testorders" :>
             Capture "orderId" Text :>
               "cancelByCustomer" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     OrdersCancelTestOrderByCustomerRequest
                     :>
                     Post '[JSON] OrdersCancelTestOrderByCustomerResponse

-- | Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ 'ordersCanceltestOrderbycustomer' smart constructor.
data OrdersCanceltestOrderbycustomer =
  OrdersCanceltestOrderbycustomer'
    { _ocoMerchantId :: !(Textual Word64)
    , _ocoPayload    :: !OrdersCancelTestOrderByCustomerRequest
    , _ocoOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCanceltestOrderbycustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocoMerchantId'
--
-- * 'ocoPayload'
--
-- * 'ocoOrderId'
ordersCanceltestOrderbycustomer
    :: Word64 -- ^ 'ocoMerchantId'
    -> OrdersCancelTestOrderByCustomerRequest -- ^ 'ocoPayload'
    -> Text -- ^ 'ocoOrderId'
    -> OrdersCanceltestOrderbycustomer
ordersCanceltestOrderbycustomer pOcoMerchantId_ pOcoPayload_ pOcoOrderId_ =
  OrdersCanceltestOrderbycustomer'
    { _ocoMerchantId = _Coerce # pOcoMerchantId_
    , _ocoPayload = pOcoPayload_
    , _ocoOrderId = pOcoOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ocoMerchantId :: Lens' OrdersCanceltestOrderbycustomer Word64
ocoMerchantId
  = lens _ocoMerchantId
      (\ s a -> s{_ocoMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ocoPayload :: Lens' OrdersCanceltestOrderbycustomer OrdersCancelTestOrderByCustomerRequest
ocoPayload
  = lens _ocoPayload (\ s a -> s{_ocoPayload = a})

-- | The ID of the test order to cancel.
ocoOrderId :: Lens' OrdersCanceltestOrderbycustomer Text
ocoOrderId
  = lens _ocoOrderId (\ s a -> s{_ocoOrderId = a})

instance GoogleRequest
           OrdersCanceltestOrderbycustomer
         where
        type Rs OrdersCanceltestOrderbycustomer =
             OrdersCancelTestOrderByCustomerResponse
        type Scopes OrdersCanceltestOrderbycustomer =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCanceltestOrderbycustomer'{..}
          = go _ocoMerchantId _ocoOrderId (Just AltJSON)
              _ocoPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrdersCanceltestOrderbycustomerResource)
                      mempty
