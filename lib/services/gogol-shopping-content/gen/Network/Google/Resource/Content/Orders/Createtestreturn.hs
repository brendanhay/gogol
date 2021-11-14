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
-- Module      : Network.Google.Resource.Content.Orders.Createtestreturn
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Creates a test return.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.createtestreturn@.
module Network.Google.Resource.Content.Orders.Createtestreturn
    (
    -- * REST Resource
      OrdersCreatetestreturnResource

    -- * Creating a Request
    , ordersCreatetestreturn
    , OrdersCreatetestreturn

    -- * Request Lenses
    , oc1Xgafv
    , oc1MerchantId
    , oc1UploadProtocol
    , oc1AccessToken
    , oc1UploadType
    , oc1Payload
    , oc1OrderId
    , oc1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.createtestreturn@ method which the
-- 'OrdersCreatetestreturn' request conforms to.
type OrdersCreatetestreturnResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "testreturn" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersCreateTestReturnRequest :>
                               Post '[JSON] OrdersCreateTestReturnResponse

-- | Sandbox only. Creates a test return.
--
-- /See:/ 'ordersCreatetestreturn' smart constructor.
data OrdersCreatetestreturn =
  OrdersCreatetestreturn'
    { _oc1Xgafv :: !(Maybe Xgafv)
    , _oc1MerchantId :: !(Textual Word64)
    , _oc1UploadProtocol :: !(Maybe Text)
    , _oc1AccessToken :: !(Maybe Text)
    , _oc1UploadType :: !(Maybe Text)
    , _oc1Payload :: !OrdersCreateTestReturnRequest
    , _oc1OrderId :: !Text
    , _oc1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreatetestreturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oc1Xgafv'
--
-- * 'oc1MerchantId'
--
-- * 'oc1UploadProtocol'
--
-- * 'oc1AccessToken'
--
-- * 'oc1UploadType'
--
-- * 'oc1Payload'
--
-- * 'oc1OrderId'
--
-- * 'oc1Callback'
ordersCreatetestreturn
    :: Word64 -- ^ 'oc1MerchantId'
    -> OrdersCreateTestReturnRequest -- ^ 'oc1Payload'
    -> Text -- ^ 'oc1OrderId'
    -> OrdersCreatetestreturn
ordersCreatetestreturn pOc1MerchantId_ pOc1Payload_ pOc1OrderId_ =
  OrdersCreatetestreturn'
    { _oc1Xgafv = Nothing
    , _oc1MerchantId = _Coerce # pOc1MerchantId_
    , _oc1UploadProtocol = Nothing
    , _oc1AccessToken = Nothing
    , _oc1UploadType = Nothing
    , _oc1Payload = pOc1Payload_
    , _oc1OrderId = pOc1OrderId_
    , _oc1Callback = Nothing
    }


-- | V1 error format.
oc1Xgafv :: Lens' OrdersCreatetestreturn (Maybe Xgafv)
oc1Xgafv = lens _oc1Xgafv (\ s a -> s{_oc1Xgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oc1MerchantId :: Lens' OrdersCreatetestreturn Word64
oc1MerchantId
  = lens _oc1MerchantId
      (\ s a -> s{_oc1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oc1UploadProtocol :: Lens' OrdersCreatetestreturn (Maybe Text)
oc1UploadProtocol
  = lens _oc1UploadProtocol
      (\ s a -> s{_oc1UploadProtocol = a})

-- | OAuth access token.
oc1AccessToken :: Lens' OrdersCreatetestreturn (Maybe Text)
oc1AccessToken
  = lens _oc1AccessToken
      (\ s a -> s{_oc1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oc1UploadType :: Lens' OrdersCreatetestreturn (Maybe Text)
oc1UploadType
  = lens _oc1UploadType
      (\ s a -> s{_oc1UploadType = a})

-- | Multipart request metadata.
oc1Payload :: Lens' OrdersCreatetestreturn OrdersCreateTestReturnRequest
oc1Payload
  = lens _oc1Payload (\ s a -> s{_oc1Payload = a})

-- | The ID of the order.
oc1OrderId :: Lens' OrdersCreatetestreturn Text
oc1OrderId
  = lens _oc1OrderId (\ s a -> s{_oc1OrderId = a})

-- | JSONP
oc1Callback :: Lens' OrdersCreatetestreturn (Maybe Text)
oc1Callback
  = lens _oc1Callback (\ s a -> s{_oc1Callback = a})

instance GoogleRequest OrdersCreatetestreturn where
        type Rs OrdersCreatetestreturn =
             OrdersCreateTestReturnResponse
        type Scopes OrdersCreatetestreturn =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCreatetestreturn'{..}
          = go _oc1MerchantId _oc1OrderId _oc1Xgafv
              _oc1UploadProtocol
              _oc1AccessToken
              _oc1UploadType
              _oc1Callback
              (Just AltJSON)
              _oc1Payload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersCreatetestreturnResource)
                      mempty
