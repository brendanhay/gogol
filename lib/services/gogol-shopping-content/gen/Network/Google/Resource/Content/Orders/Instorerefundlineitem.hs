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
-- Module      : Network.Google.Resource.Content.Orders.Instorerefundlineitem
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated. Notifies that item return and refund was handled directly by
-- merchant outside of Google payments processing (e.g. cash refund done in
-- store). Note: We recommend calling the returnrefundlineitem method to
-- refund in-store returns. We will issue the refund directly to the
-- customer. This helps to prevent possible differences arising between
-- merchant and Google transaction records. We also recommend having the
-- point of sale system communicate with Google to ensure that customers do
-- not receive a double refund by first refunding via Google then via an
-- in-store return.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.instorerefundlineitem@.
module Network.Google.Resource.Content.Orders.Instorerefundlineitem
    (
    -- * REST Resource
      OrdersInstorerefundlineitemResource

    -- * Creating a Request
    , ordersInstorerefundlineitem
    , OrdersInstorerefundlineitem

    -- * Request Lenses
    , oiXgafv
    , oiMerchantId
    , oiUploadProtocol
    , oiAccessToken
    , oiUploadType
    , oiPayload
    , oiOrderId
    , oiCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.instorerefundlineitem@ method which the
-- 'OrdersInstorerefundlineitem' request conforms to.
type OrdersInstorerefundlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "inStoreRefundLineItem" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersInStoreRefundLineItemRequest
                               :>
                               Post '[JSON] OrdersInStoreRefundLineItemResponse

-- | Deprecated. Notifies that item return and refund was handled directly by
-- merchant outside of Google payments processing (e.g. cash refund done in
-- store). Note: We recommend calling the returnrefundlineitem method to
-- refund in-store returns. We will issue the refund directly to the
-- customer. This helps to prevent possible differences arising between
-- merchant and Google transaction records. We also recommend having the
-- point of sale system communicate with Google to ensure that customers do
-- not receive a double refund by first refunding via Google then via an
-- in-store return.
--
-- /See:/ 'ordersInstorerefundlineitem' smart constructor.
data OrdersInstorerefundlineitem =
  OrdersInstorerefundlineitem'
    { _oiXgafv :: !(Maybe Xgafv)
    , _oiMerchantId :: !(Textual Word64)
    , _oiUploadProtocol :: !(Maybe Text)
    , _oiAccessToken :: !(Maybe Text)
    , _oiUploadType :: !(Maybe Text)
    , _oiPayload :: !OrdersInStoreRefundLineItemRequest
    , _oiOrderId :: !Text
    , _oiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersInstorerefundlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiXgafv'
--
-- * 'oiMerchantId'
--
-- * 'oiUploadProtocol'
--
-- * 'oiAccessToken'
--
-- * 'oiUploadType'
--
-- * 'oiPayload'
--
-- * 'oiOrderId'
--
-- * 'oiCallback'
ordersInstorerefundlineitem
    :: Word64 -- ^ 'oiMerchantId'
    -> OrdersInStoreRefundLineItemRequest -- ^ 'oiPayload'
    -> Text -- ^ 'oiOrderId'
    -> OrdersInstorerefundlineitem
ordersInstorerefundlineitem pOiMerchantId_ pOiPayload_ pOiOrderId_ =
  OrdersInstorerefundlineitem'
    { _oiXgafv = Nothing
    , _oiMerchantId = _Coerce # pOiMerchantId_
    , _oiUploadProtocol = Nothing
    , _oiAccessToken = Nothing
    , _oiUploadType = Nothing
    , _oiPayload = pOiPayload_
    , _oiOrderId = pOiOrderId_
    , _oiCallback = Nothing
    }


-- | V1 error format.
oiXgafv :: Lens' OrdersInstorerefundlineitem (Maybe Xgafv)
oiXgafv = lens _oiXgafv (\ s a -> s{_oiXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oiMerchantId :: Lens' OrdersInstorerefundlineitem Word64
oiMerchantId
  = lens _oiMerchantId (\ s a -> s{_oiMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oiUploadProtocol :: Lens' OrdersInstorerefundlineitem (Maybe Text)
oiUploadProtocol
  = lens _oiUploadProtocol
      (\ s a -> s{_oiUploadProtocol = a})

-- | OAuth access token.
oiAccessToken :: Lens' OrdersInstorerefundlineitem (Maybe Text)
oiAccessToken
  = lens _oiAccessToken
      (\ s a -> s{_oiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oiUploadType :: Lens' OrdersInstorerefundlineitem (Maybe Text)
oiUploadType
  = lens _oiUploadType (\ s a -> s{_oiUploadType = a})

-- | Multipart request metadata.
oiPayload :: Lens' OrdersInstorerefundlineitem OrdersInStoreRefundLineItemRequest
oiPayload
  = lens _oiPayload (\ s a -> s{_oiPayload = a})

-- | The ID of the order.
oiOrderId :: Lens' OrdersInstorerefundlineitem Text
oiOrderId
  = lens _oiOrderId (\ s a -> s{_oiOrderId = a})

-- | JSONP
oiCallback :: Lens' OrdersInstorerefundlineitem (Maybe Text)
oiCallback
  = lens _oiCallback (\ s a -> s{_oiCallback = a})

instance GoogleRequest OrdersInstorerefundlineitem
         where
        type Rs OrdersInstorerefundlineitem =
             OrdersInStoreRefundLineItemResponse
        type Scopes OrdersInstorerefundlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersInstorerefundlineitem'{..}
          = go _oiMerchantId _oiOrderId _oiXgafv
              _oiUploadProtocol
              _oiAccessToken
              _oiUploadType
              _oiCallback
              (Just AltJSON)
              _oiPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersInstorerefundlineitemResource)
                      mempty
