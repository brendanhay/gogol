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
-- Module      : Network.Google.Resource.Content.Orders.Cancellineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a line item, making a full refund.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.cancellineitem@.
module Network.Google.Resource.Content.Orders.Cancellineitem
    (
    -- * REST Resource
      OrdersCancellineitemResource

    -- * Creating a Request
    , ordersCancellineitem
    , OrdersCancellineitem

    -- * Request Lenses
    , ordrMerchantId
    , ordrPayload
    , ordrOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancellineitem@ method which the
-- 'OrdersCancellineitem' request conforms to.
type OrdersCancellineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "cancelLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCancelLineItemRequest :>
                     Post '[JSON] OrdersCancelLineItemResponse

-- | Cancels a line item, making a full refund.
--
-- /See:/ 'ordersCancellineitem' smart constructor.
data OrdersCancellineitem =
  OrdersCancellineitem'
    { _ordrMerchantId :: !(Textual Word64)
    , _ordrPayload    :: !OrdersCancelLineItemRequest
    , _ordrOrderId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancellineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordrMerchantId'
--
-- * 'ordrPayload'
--
-- * 'ordrOrderId'
ordersCancellineitem
    :: Word64 -- ^ 'ordrMerchantId'
    -> OrdersCancelLineItemRequest -- ^ 'ordrPayload'
    -> Text -- ^ 'ordrOrderId'
    -> OrdersCancellineitem
ordersCancellineitem pOrdrMerchantId_ pOrdrPayload_ pOrdrOrderId_ =
  OrdersCancellineitem'
    { _ordrMerchantId = _Coerce # pOrdrMerchantId_
    , _ordrPayload = pOrdrPayload_
    , _ordrOrderId = pOrdrOrderId_
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ordrMerchantId :: Lens' OrdersCancellineitem Word64
ordrMerchantId
  = lens _ordrMerchantId
      (\ s a -> s{_ordrMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ordrPayload :: Lens' OrdersCancellineitem OrdersCancelLineItemRequest
ordrPayload
  = lens _ordrPayload (\ s a -> s{_ordrPayload = a})

-- | The ID of the order.
ordrOrderId :: Lens' OrdersCancellineitem Text
ordrOrderId
  = lens _ordrOrderId (\ s a -> s{_ordrOrderId = a})

instance GoogleRequest OrdersCancellineitem where
        type Rs OrdersCancellineitem =
             OrdersCancelLineItemResponse
        type Scopes OrdersCancellineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCancellineitem'{..}
          = go _ordrMerchantId _ordrOrderId (Just AltJSON)
              _ordrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCancellineitemResource)
                      mempty
