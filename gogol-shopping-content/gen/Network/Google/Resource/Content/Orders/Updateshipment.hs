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
-- Module      : Network.Google.Resource.Content.Orders.Updateshipment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.updateshipment@.
module Network.Google.Resource.Content.Orders.Updateshipment
    (
    -- * REST Resource
      OrdersUpdateshipmentResource

    -- * Creating a Request
    , ordersUpdateshipment
    , OrdersUpdateshipment

    -- * Request Lenses
    , ouXgafv
    , ouMerchantId
    , ouUploadProtocol
    , ouAccessToken
    , ouUploadType
    , ouPayload
    , ouOrderId
    , ouCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updateshipment@ method which the
-- 'OrdersUpdateshipment' request conforms to.
type OrdersUpdateshipmentResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateShipment" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersUpdateShipmentRequest :>
                               Post '[JSON] OrdersUpdateShipmentResponse

-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ 'ordersUpdateshipment' smart constructor.
data OrdersUpdateshipment =
  OrdersUpdateshipment'
    { _ouXgafv :: !(Maybe Xgafv)
    , _ouMerchantId :: !(Textual Word64)
    , _ouUploadProtocol :: !(Maybe Text)
    , _ouAccessToken :: !(Maybe Text)
    , _ouUploadType :: !(Maybe Text)
    , _ouPayload :: !OrdersUpdateShipmentRequest
    , _ouOrderId :: !Text
    , _ouCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateshipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouXgafv'
--
-- * 'ouMerchantId'
--
-- * 'ouUploadProtocol'
--
-- * 'ouAccessToken'
--
-- * 'ouUploadType'
--
-- * 'ouPayload'
--
-- * 'ouOrderId'
--
-- * 'ouCallback'
ordersUpdateshipment
    :: Word64 -- ^ 'ouMerchantId'
    -> OrdersUpdateShipmentRequest -- ^ 'ouPayload'
    -> Text -- ^ 'ouOrderId'
    -> OrdersUpdateshipment
ordersUpdateshipment pOuMerchantId_ pOuPayload_ pOuOrderId_ =
  OrdersUpdateshipment'
    { _ouXgafv = Nothing
    , _ouMerchantId = _Coerce # pOuMerchantId_
    , _ouUploadProtocol = Nothing
    , _ouAccessToken = Nothing
    , _ouUploadType = Nothing
    , _ouPayload = pOuPayload_
    , _ouOrderId = pOuOrderId_
    , _ouCallback = Nothing
    }


-- | V1 error format.
ouXgafv :: Lens' OrdersUpdateshipment (Maybe Xgafv)
ouXgafv = lens _ouXgafv (\ s a -> s{_ouXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ouMerchantId :: Lens' OrdersUpdateshipment Word64
ouMerchantId
  = lens _ouMerchantId (\ s a -> s{_ouMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouUploadProtocol :: Lens' OrdersUpdateshipment (Maybe Text)
ouUploadProtocol
  = lens _ouUploadProtocol
      (\ s a -> s{_ouUploadProtocol = a})

-- | OAuth access token.
ouAccessToken :: Lens' OrdersUpdateshipment (Maybe Text)
ouAccessToken
  = lens _ouAccessToken
      (\ s a -> s{_ouAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouUploadType :: Lens' OrdersUpdateshipment (Maybe Text)
ouUploadType
  = lens _ouUploadType (\ s a -> s{_ouUploadType = a})

-- | Multipart request metadata.
ouPayload :: Lens' OrdersUpdateshipment OrdersUpdateShipmentRequest
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | The ID of the order.
ouOrderId :: Lens' OrdersUpdateshipment Text
ouOrderId
  = lens _ouOrderId (\ s a -> s{_ouOrderId = a})

-- | JSONP
ouCallback :: Lens' OrdersUpdateshipment (Maybe Text)
ouCallback
  = lens _ouCallback (\ s a -> s{_ouCallback = a})

instance GoogleRequest OrdersUpdateshipment where
        type Rs OrdersUpdateshipment =
             OrdersUpdateShipmentResponse
        type Scopes OrdersUpdateshipment =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersUpdateshipment'{..}
          = go _ouMerchantId _ouOrderId _ouXgafv
              _ouUploadProtocol
              _ouAccessToken
              _ouUploadType
              _ouCallback
              (Just AltJSON)
              _ouPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersUpdateshipmentResource)
                      mempty
