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
-- Module      : Network.Google.Resource.Content.Orders.Setlineitemmetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets (overrides) merchant provided annotations on the line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.setlineitemmetadata@.
module Network.Google.Resource.Content.Orders.Setlineitemmetadata
    (
    -- * REST Resource
      OrdersSetlineitemmetadataResource

    -- * Creating a Request
    , ordersSetlineitemmetadata
    , OrdersSetlineitemmetadata

    -- * Request Lenses
    , ossMerchantId
    , ossPayload
    , ossOrderId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.setlineitemmetadata@ method which the
-- 'OrdersSetlineitemmetadata' request conforms to.
type OrdersSetlineitemmetadataResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "setLineItemMetadata" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] OrdersSetLineItemMetadataRequest :>
                     Post '[JSON] OrdersSetLineItemMetadataResponse

-- | Sets (overrides) merchant provided annotations on the line item.
--
-- /See:/ 'ordersSetlineitemmetadata' smart constructor.
data OrdersSetlineitemmetadata = OrdersSetlineitemmetadata'
    { _ossMerchantId :: !(Textual Word64)
    , _ossPayload    :: !OrdersSetLineItemMetadataRequest
    , _ossOrderId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersSetlineitemmetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ossMerchantId'
--
-- * 'ossPayload'
--
-- * 'ossOrderId'
ordersSetlineitemmetadata
    :: Word64 -- ^ 'ossMerchantId'
    -> OrdersSetLineItemMetadataRequest -- ^ 'ossPayload'
    -> Text -- ^ 'ossOrderId'
    -> OrdersSetlineitemmetadata
ordersSetlineitemmetadata pOssMerchantId_ pOssPayload_ pOssOrderId_ =
    OrdersSetlineitemmetadata'
    { _ossMerchantId = _Coerce # pOssMerchantId_
    , _ossPayload = pOssPayload_
    , _ossOrderId = pOssOrderId_
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ossMerchantId :: Lens' OrdersSetlineitemmetadata Word64
ossMerchantId
  = lens _ossMerchantId
      (\ s a -> s{_ossMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ossPayload :: Lens' OrdersSetlineitemmetadata OrdersSetLineItemMetadataRequest
ossPayload
  = lens _ossPayload (\ s a -> s{_ossPayload = a})

-- | The ID of the order.
ossOrderId :: Lens' OrdersSetlineitemmetadata Text
ossOrderId
  = lens _ossOrderId (\ s a -> s{_ossOrderId = a})

instance GoogleRequest OrdersSetlineitemmetadata
         where
        type Rs OrdersSetlineitemmetadata =
             OrdersSetLineItemMetadataResponse
        type Scopes OrdersSetlineitemmetadata =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersSetlineitemmetadata'{..}
          = go _ossMerchantId _ossOrderId (Just AltJSON)
              _ossPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersSetlineitemmetadataResource)
                      mempty
