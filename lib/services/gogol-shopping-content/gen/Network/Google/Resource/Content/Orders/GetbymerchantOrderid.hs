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
-- Module      : Network.Google.Resource.Content.Orders.GetbymerchantOrderid
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an order using merchant order ID.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.getbymerchantorderid@.
module Network.Google.Resource.Content.Orders.GetbymerchantOrderid
    (
    -- * REST Resource
      OrdersGetbymerchantOrderidResource

    -- * Creating a Request
    , ordersGetbymerchantOrderid
    , OrdersGetbymerchantOrderid

    -- * Request Lenses
    , ogogXgafv
    , ogogMerchantId
    , ogogUploadProtocol
    , ogogAccessToken
    , ogogUploadType
    , ogogMerchantOrderId
    , ogogCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.getbymerchantorderid@ method which the
-- 'OrdersGetbymerchantOrderid' request conforms to.
type OrdersGetbymerchantOrderidResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "ordersbymerchantid" :>
             Capture "merchantOrderId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order ID.
--
-- /See:/ 'ordersGetbymerchantOrderid' smart constructor.
data OrdersGetbymerchantOrderid =
  OrdersGetbymerchantOrderid'
    { _ogogXgafv :: !(Maybe Xgafv)
    , _ogogMerchantId :: !(Textual Word64)
    , _ogogUploadProtocol :: !(Maybe Text)
    , _ogogAccessToken :: !(Maybe Text)
    , _ogogUploadType :: !(Maybe Text)
    , _ogogMerchantOrderId :: !Text
    , _ogogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGetbymerchantOrderid' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogogXgafv'
--
-- * 'ogogMerchantId'
--
-- * 'ogogUploadProtocol'
--
-- * 'ogogAccessToken'
--
-- * 'ogogUploadType'
--
-- * 'ogogMerchantOrderId'
--
-- * 'ogogCallback'
ordersGetbymerchantOrderid
    :: Word64 -- ^ 'ogogMerchantId'
    -> Text -- ^ 'ogogMerchantOrderId'
    -> OrdersGetbymerchantOrderid
ordersGetbymerchantOrderid pOgogMerchantId_ pOgogMerchantOrderId_ =
  OrdersGetbymerchantOrderid'
    { _ogogXgafv = Nothing
    , _ogogMerchantId = _Coerce # pOgogMerchantId_
    , _ogogUploadProtocol = Nothing
    , _ogogAccessToken = Nothing
    , _ogogUploadType = Nothing
    , _ogogMerchantOrderId = pOgogMerchantOrderId_
    , _ogogCallback = Nothing
    }


-- | V1 error format.
ogogXgafv :: Lens' OrdersGetbymerchantOrderid (Maybe Xgafv)
ogogXgafv
  = lens _ogogXgafv (\ s a -> s{_ogogXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ogogMerchantId :: Lens' OrdersGetbymerchantOrderid Word64
ogogMerchantId
  = lens _ogogMerchantId
      (\ s a -> s{_ogogMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogogUploadProtocol :: Lens' OrdersGetbymerchantOrderid (Maybe Text)
ogogUploadProtocol
  = lens _ogogUploadProtocol
      (\ s a -> s{_ogogUploadProtocol = a})

-- | OAuth access token.
ogogAccessToken :: Lens' OrdersGetbymerchantOrderid (Maybe Text)
ogogAccessToken
  = lens _ogogAccessToken
      (\ s a -> s{_ogogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogogUploadType :: Lens' OrdersGetbymerchantOrderid (Maybe Text)
ogogUploadType
  = lens _ogogUploadType
      (\ s a -> s{_ogogUploadType = a})

-- | The merchant order ID to be looked for.
ogogMerchantOrderId :: Lens' OrdersGetbymerchantOrderid Text
ogogMerchantOrderId
  = lens _ogogMerchantOrderId
      (\ s a -> s{_ogogMerchantOrderId = a})

-- | JSONP
ogogCallback :: Lens' OrdersGetbymerchantOrderid (Maybe Text)
ogogCallback
  = lens _ogogCallback (\ s a -> s{_ogogCallback = a})

instance GoogleRequest OrdersGetbymerchantOrderid
         where
        type Rs OrdersGetbymerchantOrderid =
             OrdersGetByMerchantOrderIdResponse
        type Scopes OrdersGetbymerchantOrderid =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersGetbymerchantOrderid'{..}
          = go _ogogMerchantId _ogogMerchantOrderId _ogogXgafv
              _ogogUploadProtocol
              _ogogAccessToken
              _ogogUploadType
              _ogogCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersGetbymerchantOrderidResource)
                      mempty
