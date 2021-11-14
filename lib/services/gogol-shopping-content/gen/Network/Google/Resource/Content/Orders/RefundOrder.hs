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
-- Module      : Network.Google.Resource.Content.Orders.RefundOrder
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a partial or total refund for an order.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.refundorder@.
module Network.Google.Resource.Content.Orders.RefundOrder
    (
    -- * REST Resource
      OrdersRefundOrderResource

    -- * Creating a Request
    , ordersRefundOrder
    , OrdersRefundOrder

    -- * Request Lenses
    , oroXgafv
    , oroMerchantId
    , oroUploadProtocol
    , oroAccessToken
    , oroUploadType
    , oroPayload
    , oroOrderId
    , oroCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.refundorder@ method which the
-- 'OrdersRefundOrder' request conforms to.
type OrdersRefundOrderResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "refundorder" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersRefundOrderRequest :>
                               Post '[JSON] OrdersRefundOrderResponse

-- | Issues a partial or total refund for an order.
--
-- /See:/ 'ordersRefundOrder' smart constructor.
data OrdersRefundOrder =
  OrdersRefundOrder'
    { _oroXgafv :: !(Maybe Xgafv)
    , _oroMerchantId :: !(Textual Word64)
    , _oroUploadProtocol :: !(Maybe Text)
    , _oroAccessToken :: !(Maybe Text)
    , _oroUploadType :: !(Maybe Text)
    , _oroPayload :: !OrdersRefundOrderRequest
    , _oroOrderId :: !Text
    , _oroCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefundOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oroXgafv'
--
-- * 'oroMerchantId'
--
-- * 'oroUploadProtocol'
--
-- * 'oroAccessToken'
--
-- * 'oroUploadType'
--
-- * 'oroPayload'
--
-- * 'oroOrderId'
--
-- * 'oroCallback'
ordersRefundOrder
    :: Word64 -- ^ 'oroMerchantId'
    -> OrdersRefundOrderRequest -- ^ 'oroPayload'
    -> Text -- ^ 'oroOrderId'
    -> OrdersRefundOrder
ordersRefundOrder pOroMerchantId_ pOroPayload_ pOroOrderId_ =
  OrdersRefundOrder'
    { _oroXgafv = Nothing
    , _oroMerchantId = _Coerce # pOroMerchantId_
    , _oroUploadProtocol = Nothing
    , _oroAccessToken = Nothing
    , _oroUploadType = Nothing
    , _oroPayload = pOroPayload_
    , _oroOrderId = pOroOrderId_
    , _oroCallback = Nothing
    }


-- | V1 error format.
oroXgafv :: Lens' OrdersRefundOrder (Maybe Xgafv)
oroXgafv = lens _oroXgafv (\ s a -> s{_oroXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oroMerchantId :: Lens' OrdersRefundOrder Word64
oroMerchantId
  = lens _oroMerchantId
      (\ s a -> s{_oroMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oroUploadProtocol :: Lens' OrdersRefundOrder (Maybe Text)
oroUploadProtocol
  = lens _oroUploadProtocol
      (\ s a -> s{_oroUploadProtocol = a})

-- | OAuth access token.
oroAccessToken :: Lens' OrdersRefundOrder (Maybe Text)
oroAccessToken
  = lens _oroAccessToken
      (\ s a -> s{_oroAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oroUploadType :: Lens' OrdersRefundOrder (Maybe Text)
oroUploadType
  = lens _oroUploadType
      (\ s a -> s{_oroUploadType = a})

-- | Multipart request metadata.
oroPayload :: Lens' OrdersRefundOrder OrdersRefundOrderRequest
oroPayload
  = lens _oroPayload (\ s a -> s{_oroPayload = a})

-- | The ID of the order to refund.
oroOrderId :: Lens' OrdersRefundOrder Text
oroOrderId
  = lens _oroOrderId (\ s a -> s{_oroOrderId = a})

-- | JSONP
oroCallback :: Lens' OrdersRefundOrder (Maybe Text)
oroCallback
  = lens _oroCallback (\ s a -> s{_oroCallback = a})

instance GoogleRequest OrdersRefundOrder where
        type Rs OrdersRefundOrder = OrdersRefundOrderResponse
        type Scopes OrdersRefundOrder =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersRefundOrder'{..}
          = go _oroMerchantId _oroOrderId _oroXgafv
              _oroUploadProtocol
              _oroAccessToken
              _oroUploadType
              _oroCallback
              (Just AltJSON)
              _oroPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersRefundOrderResource)
                      mempty
