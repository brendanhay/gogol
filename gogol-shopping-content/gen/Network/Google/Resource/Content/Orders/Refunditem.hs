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
-- Module      : Network.Google.Resource.Content.Orders.Refunditem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Issues a partial or total refund for items and shipment.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.refunditem@.
module Network.Google.Resource.Content.Orders.Refunditem
    (
    -- * REST Resource
      OrdersRefunditemResource

    -- * Creating a Request
    , ordersRefunditem
    , OrdersRefunditem

    -- * Request Lenses
    , orrXgafv
    , orrMerchantId
    , orrUploadProtocol
    , orrAccessToken
    , orrUploadType
    , orrPayload
    , orrOrderId
    , orrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.refunditem@ method which the
-- 'OrdersRefunditem' request conforms to.
type OrdersRefunditemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "refunditem" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersRefundItemRequest :>
                               Post '[JSON] OrdersRefundItemResponse

-- | Issues a partial or total refund for items and shipment.
--
-- /See:/ 'ordersRefunditem' smart constructor.
data OrdersRefunditem =
  OrdersRefunditem'
    { _orrXgafv :: !(Maybe Xgafv)
    , _orrMerchantId :: !(Textual Word64)
    , _orrUploadProtocol :: !(Maybe Text)
    , _orrAccessToken :: !(Maybe Text)
    , _orrUploadType :: !(Maybe Text)
    , _orrPayload :: !OrdersRefundItemRequest
    , _orrOrderId :: !Text
    , _orrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefunditem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrXgafv'
--
-- * 'orrMerchantId'
--
-- * 'orrUploadProtocol'
--
-- * 'orrAccessToken'
--
-- * 'orrUploadType'
--
-- * 'orrPayload'
--
-- * 'orrOrderId'
--
-- * 'orrCallback'
ordersRefunditem
    :: Word64 -- ^ 'orrMerchantId'
    -> OrdersRefundItemRequest -- ^ 'orrPayload'
    -> Text -- ^ 'orrOrderId'
    -> OrdersRefunditem
ordersRefunditem pOrrMerchantId_ pOrrPayload_ pOrrOrderId_ =
  OrdersRefunditem'
    { _orrXgafv = Nothing
    , _orrMerchantId = _Coerce # pOrrMerchantId_
    , _orrUploadProtocol = Nothing
    , _orrAccessToken = Nothing
    , _orrUploadType = Nothing
    , _orrPayload = pOrrPayload_
    , _orrOrderId = pOrrOrderId_
    , _orrCallback = Nothing
    }


-- | V1 error format.
orrXgafv :: Lens' OrdersRefunditem (Maybe Xgafv)
orrXgafv = lens _orrXgafv (\ s a -> s{_orrXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
orrMerchantId :: Lens' OrdersRefunditem Word64
orrMerchantId
  = lens _orrMerchantId
      (\ s a -> s{_orrMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
orrUploadProtocol :: Lens' OrdersRefunditem (Maybe Text)
orrUploadProtocol
  = lens _orrUploadProtocol
      (\ s a -> s{_orrUploadProtocol = a})

-- | OAuth access token.
orrAccessToken :: Lens' OrdersRefunditem (Maybe Text)
orrAccessToken
  = lens _orrAccessToken
      (\ s a -> s{_orrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
orrUploadType :: Lens' OrdersRefunditem (Maybe Text)
orrUploadType
  = lens _orrUploadType
      (\ s a -> s{_orrUploadType = a})

-- | Multipart request metadata.
orrPayload :: Lens' OrdersRefunditem OrdersRefundItemRequest
orrPayload
  = lens _orrPayload (\ s a -> s{_orrPayload = a})

-- | The ID of the order to refund.
orrOrderId :: Lens' OrdersRefunditem Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

-- | JSONP
orrCallback :: Lens' OrdersRefunditem (Maybe Text)
orrCallback
  = lens _orrCallback (\ s a -> s{_orrCallback = a})

instance GoogleRequest OrdersRefunditem where
        type Rs OrdersRefunditem = OrdersRefundItemResponse
        type Scopes OrdersRefunditem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersRefunditem'{..}
          = go _orrMerchantId _orrOrderId _orrXgafv
              _orrUploadProtocol
              _orrAccessToken
              _orrUploadType
              _orrCallback
              (Just AltJSON)
              _orrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersRefunditemResource)
                      mempty
