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
-- | Cancels a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCancellineitem@.
module Network.Google.Resource.Content.Orders.Cancellineitem
    (
    -- * REST Resource
      OrdersCancellineitemResource

    -- * Creating a Request
    , ordersCancellineitem'
    , OrdersCancellineitem'

    -- * Request Lenses
    , oMerchantId
    , oPayload
    , oOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancellineitem@ method which the
-- 'OrdersCancellineitem'' request conforms to.
type OrdersCancellineitemResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancelLineItem" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] OrdersCancelLineItemRequest :>
                 Post '[JSON] OrdersCancelLineItemResponse

-- | Cancels a line item.
--
-- /See:/ 'ordersCancellineitem'' smart constructor.
data OrdersCancellineitem' = OrdersCancellineitem'
    { _oMerchantId :: !Word64
    , _oPayload    :: !OrdersCancelLineItemRequest
    , _oOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancellineitem'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oMerchantId'
--
-- * 'oPayload'
--
-- * 'oOrderId'
ordersCancellineitem'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCancelLineItemRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersCancellineitem'
ordersCancellineitem' pOMerchantId_ pOPayload_ pOOrderId_ =
    OrdersCancellineitem'
    { _oMerchantId = pOMerchantId_
    , _oPayload = pOPayload_
    , _oOrderId = pOOrderId_
    }

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersCancellineitem' Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a})

-- | Multipart request metadata.
oPayload :: Lens' OrdersCancellineitem' OrdersCancelLineItemRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | The ID of the order.
oOrderId :: Lens' OrdersCancellineitem' Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

instance GoogleRequest OrdersCancellineitem' where
        type Rs OrdersCancellineitem' =
             OrdersCancelLineItemResponse
        requestClient OrdersCancellineitem'{..}
          = go _oMerchantId _oOrderId (Just AltJSON) _oPayload
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCancellineitemResource)
                      mempty
