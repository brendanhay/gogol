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
-- Module      : Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the merchant order ID for a given order.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.updatemerchantorderid@.
module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
    (
    -- * REST Resource
      OrdersUpdatemerchantOrderidResource

    -- * Creating a Request
    , ordersUpdatemerchantOrderid
    , OrdersUpdatemerchantOrderid

    -- * Request Lenses
    , ouoXgafv
    , ouoMerchantId
    , ouoUploadProtocol
    , ouoAccessToken
    , ouoUploadType
    , ouoPayload
    , ouoOrderId
    , ouoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.updatemerchantorderid@ method which the
-- 'OrdersUpdatemerchantOrderid' request conforms to.
type OrdersUpdatemerchantOrderidResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "updateMerchantOrderId" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersUpdateMerchantOrderIdRequest
                               :>
                               Post '[JSON] OrdersUpdateMerchantOrderIdResponse

-- | Updates the merchant order ID for a given order.
--
-- /See:/ 'ordersUpdatemerchantOrderid' smart constructor.
data OrdersUpdatemerchantOrderid =
  OrdersUpdatemerchantOrderid'
    { _ouoXgafv :: !(Maybe Xgafv)
    , _ouoMerchantId :: !(Textual Word64)
    , _ouoUploadProtocol :: !(Maybe Text)
    , _ouoAccessToken :: !(Maybe Text)
    , _ouoUploadType :: !(Maybe Text)
    , _ouoPayload :: !OrdersUpdateMerchantOrderIdRequest
    , _ouoOrderId :: !Text
    , _ouoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdatemerchantOrderid' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouoXgafv'
--
-- * 'ouoMerchantId'
--
-- * 'ouoUploadProtocol'
--
-- * 'ouoAccessToken'
--
-- * 'ouoUploadType'
--
-- * 'ouoPayload'
--
-- * 'ouoOrderId'
--
-- * 'ouoCallback'
ordersUpdatemerchantOrderid
    :: Word64 -- ^ 'ouoMerchantId'
    -> OrdersUpdateMerchantOrderIdRequest -- ^ 'ouoPayload'
    -> Text -- ^ 'ouoOrderId'
    -> OrdersUpdatemerchantOrderid
ordersUpdatemerchantOrderid pOuoMerchantId_ pOuoPayload_ pOuoOrderId_ =
  OrdersUpdatemerchantOrderid'
    { _ouoXgafv = Nothing
    , _ouoMerchantId = _Coerce # pOuoMerchantId_
    , _ouoUploadProtocol = Nothing
    , _ouoAccessToken = Nothing
    , _ouoUploadType = Nothing
    , _ouoPayload = pOuoPayload_
    , _ouoOrderId = pOuoOrderId_
    , _ouoCallback = Nothing
    }


-- | V1 error format.
ouoXgafv :: Lens' OrdersUpdatemerchantOrderid (Maybe Xgafv)
ouoXgafv = lens _ouoXgafv (\ s a -> s{_ouoXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ouoMerchantId :: Lens' OrdersUpdatemerchantOrderid Word64
ouoMerchantId
  = lens _ouoMerchantId
      (\ s a -> s{_ouoMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouoUploadProtocol :: Lens' OrdersUpdatemerchantOrderid (Maybe Text)
ouoUploadProtocol
  = lens _ouoUploadProtocol
      (\ s a -> s{_ouoUploadProtocol = a})

-- | OAuth access token.
ouoAccessToken :: Lens' OrdersUpdatemerchantOrderid (Maybe Text)
ouoAccessToken
  = lens _ouoAccessToken
      (\ s a -> s{_ouoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouoUploadType :: Lens' OrdersUpdatemerchantOrderid (Maybe Text)
ouoUploadType
  = lens _ouoUploadType
      (\ s a -> s{_ouoUploadType = a})

-- | Multipart request metadata.
ouoPayload :: Lens' OrdersUpdatemerchantOrderid OrdersUpdateMerchantOrderIdRequest
ouoPayload
  = lens _ouoPayload (\ s a -> s{_ouoPayload = a})

-- | The ID of the order.
ouoOrderId :: Lens' OrdersUpdatemerchantOrderid Text
ouoOrderId
  = lens _ouoOrderId (\ s a -> s{_ouoOrderId = a})

-- | JSONP
ouoCallback :: Lens' OrdersUpdatemerchantOrderid (Maybe Text)
ouoCallback
  = lens _ouoCallback (\ s a -> s{_ouoCallback = a})

instance GoogleRequest OrdersUpdatemerchantOrderid
         where
        type Rs OrdersUpdatemerchantOrderid =
             OrdersUpdateMerchantOrderIdResponse
        type Scopes OrdersUpdatemerchantOrderid =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersUpdatemerchantOrderid'{..}
          = go _ouoMerchantId _ouoOrderId _ouoXgafv
              _ouoUploadProtocol
              _ouoAccessToken
              _ouoUploadType
              _ouoCallback
              (Just AltJSON)
              _ouoPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersUpdatemerchantOrderidResource)
                      mempty
