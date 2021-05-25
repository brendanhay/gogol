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
-- Module      : Network.Google.Resource.Content.Orders.Acknowledge
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks an order as acknowledged.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.acknowledge@.
module Network.Google.Resource.Content.Orders.Acknowledge
    (
    -- * REST Resource
      OrdersAcknowledgeResource

    -- * Creating a Request
    , ordersAcknowledge
    , OrdersAcknowledge

    -- * Request Lenses
    , oXgafv
    , oMerchantId
    , oUploadProtocol
    , oAccessToken
    , oUploadType
    , oPayload
    , oOrderId
    , oCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.acknowledge@ method which the
-- 'OrdersAcknowledge' request conforms to.
type OrdersAcknowledgeResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "acknowledge" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersAcknowledgeRequest :>
                               Post '[JSON] OrdersAcknowledgeResponse

-- | Marks an order as acknowledged.
--
-- /See:/ 'ordersAcknowledge' smart constructor.
data OrdersAcknowledge =
  OrdersAcknowledge'
    { _oXgafv :: !(Maybe Xgafv)
    , _oMerchantId :: !(Textual Word64)
    , _oUploadProtocol :: !(Maybe Text)
    , _oAccessToken :: !(Maybe Text)
    , _oUploadType :: !(Maybe Text)
    , _oPayload :: !OrdersAcknowledgeRequest
    , _oOrderId :: !Text
    , _oCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oXgafv'
--
-- * 'oMerchantId'
--
-- * 'oUploadProtocol'
--
-- * 'oAccessToken'
--
-- * 'oUploadType'
--
-- * 'oPayload'
--
-- * 'oOrderId'
--
-- * 'oCallback'
ordersAcknowledge
    :: Word64 -- ^ 'oMerchantId'
    -> OrdersAcknowledgeRequest -- ^ 'oPayload'
    -> Text -- ^ 'oOrderId'
    -> OrdersAcknowledge
ordersAcknowledge pOMerchantId_ pOPayload_ pOOrderId_ =
  OrdersAcknowledge'
    { _oXgafv = Nothing
    , _oMerchantId = _Coerce # pOMerchantId_
    , _oUploadProtocol = Nothing
    , _oAccessToken = Nothing
    , _oUploadType = Nothing
    , _oPayload = pOPayload_
    , _oOrderId = pOOrderId_
    , _oCallback = Nothing
    }


-- | V1 error format.
oXgafv :: Lens' OrdersAcknowledge (Maybe Xgafv)
oXgafv = lens _oXgafv (\ s a -> s{_oXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oMerchantId :: Lens' OrdersAcknowledge Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oUploadProtocol :: Lens' OrdersAcknowledge (Maybe Text)
oUploadProtocol
  = lens _oUploadProtocol
      (\ s a -> s{_oUploadProtocol = a})

-- | OAuth access token.
oAccessToken :: Lens' OrdersAcknowledge (Maybe Text)
oAccessToken
  = lens _oAccessToken (\ s a -> s{_oAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oUploadType :: Lens' OrdersAcknowledge (Maybe Text)
oUploadType
  = lens _oUploadType (\ s a -> s{_oUploadType = a})

-- | Multipart request metadata.
oPayload :: Lens' OrdersAcknowledge OrdersAcknowledgeRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | The ID of the order.
oOrderId :: Lens' OrdersAcknowledge Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

-- | JSONP
oCallback :: Lens' OrdersAcknowledge (Maybe Text)
oCallback
  = lens _oCallback (\ s a -> s{_oCallback = a})

instance GoogleRequest OrdersAcknowledge where
        type Rs OrdersAcknowledge = OrdersAcknowledgeResponse
        type Scopes OrdersAcknowledge =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersAcknowledge'{..}
          = go _oMerchantId _oOrderId _oXgafv _oUploadProtocol
              _oAccessToken
              _oUploadType
              _oCallback
              (Just AltJSON)
              _oPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersAcknowledgeResource)
                      mempty
