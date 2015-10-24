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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a line item.
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
    , ordMerchantId
    , ordPayload
    , ordOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancellineitem@ method which the
-- 'OrdersCancellineitem' request conforms to.
type OrdersCancellineitemResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "cancelLineItem" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersCancelLineItemRequest :>
                     Post '[JSON] OrdersCancelLineItemResponse

-- | Cancels a line item.
--
-- /See:/ 'ordersCancellineitem' smart constructor.
data OrdersCancellineitem = OrdersCancellineitem
    { _ordMerchantId :: !(Textual Word64)
    , _ordPayload    :: !OrdersCancelLineItemRequest
    , _ordOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancellineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordMerchantId'
--
-- * 'ordPayload'
--
-- * 'ordOrderId'
ordersCancellineitem
    :: Word64 -- ^ 'ordMerchantId'
    -> OrdersCancelLineItemRequest -- ^ 'ordPayload'
    -> Text -- ^ 'ordOrderId'
    -> OrdersCancellineitem
ordersCancellineitem pOrdMerchantId_ pOrdPayload_ pOrdOrderId_ =
    OrdersCancellineitem
    { _ordMerchantId = _Coerce # pOrdMerchantId_
    , _ordPayload = pOrdPayload_
    , _ordOrderId = pOrdOrderId_
    }

-- | The ID of the managing account.
ordMerchantId :: Lens' OrdersCancellineitem Word64
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ordPayload :: Lens' OrdersCancellineitem OrdersCancelLineItemRequest
ordPayload
  = lens _ordPayload (\ s a -> s{_ordPayload = a})

-- | The ID of the order.
ordOrderId :: Lens' OrdersCancellineitem Text
ordOrderId
  = lens _ordOrderId (\ s a -> s{_ordOrderId = a})

instance GoogleRequest OrdersCancellineitem where
        type Rs OrdersCancellineitem =
             OrdersCancelLineItemResponse
        requestClient OrdersCancellineitem{..}
          = go _ordMerchantId _ordOrderId (Just AltJSON)
              _ordPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCancellineitemResource)
                      mempty
