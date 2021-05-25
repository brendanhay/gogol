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
-- Sets (or overrides if it already exists) merchant provided annotations
-- in the form of key-value pairs. A common use case would be to supply us
-- with additional structured information about a line item that cannot be
-- provided via other methods. Submitted key-value pairs can be retrieved
-- as part of the orders resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.setlineitemmetadata@.
module Network.Google.Resource.Content.Orders.Setlineitemmetadata
    (
    -- * REST Resource
      OrdersSetlineitemmetadataResource

    -- * Creating a Request
    , ordersSetlineitemmetadata
    , OrdersSetlineitemmetadata

    -- * Request Lenses
    , ossXgafv
    , ossMerchantId
    , ossUploadProtocol
    , ossAccessToken
    , ossUploadType
    , ossPayload
    , ossOrderId
    , ossCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.setlineitemmetadata@ method which the
-- 'OrdersSetlineitemmetadata' request conforms to.
type OrdersSetlineitemmetadataResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "setLineItemMetadata" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersSetLineItemMetadataRequest :>
                               Post '[JSON] OrdersSetLineItemMetadataResponse

-- | Sets (or overrides if it already exists) merchant provided annotations
-- in the form of key-value pairs. A common use case would be to supply us
-- with additional structured information about a line item that cannot be
-- provided via other methods. Submitted key-value pairs can be retrieved
-- as part of the orders resource.
--
-- /See:/ 'ordersSetlineitemmetadata' smart constructor.
data OrdersSetlineitemmetadata =
  OrdersSetlineitemmetadata'
    { _ossXgafv :: !(Maybe Xgafv)
    , _ossMerchantId :: !(Textual Word64)
    , _ossUploadProtocol :: !(Maybe Text)
    , _ossAccessToken :: !(Maybe Text)
    , _ossUploadType :: !(Maybe Text)
    , _ossPayload :: !OrdersSetLineItemMetadataRequest
    , _ossOrderId :: !Text
    , _ossCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersSetlineitemmetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ossXgafv'
--
-- * 'ossMerchantId'
--
-- * 'ossUploadProtocol'
--
-- * 'ossAccessToken'
--
-- * 'ossUploadType'
--
-- * 'ossPayload'
--
-- * 'ossOrderId'
--
-- * 'ossCallback'
ordersSetlineitemmetadata
    :: Word64 -- ^ 'ossMerchantId'
    -> OrdersSetLineItemMetadataRequest -- ^ 'ossPayload'
    -> Text -- ^ 'ossOrderId'
    -> OrdersSetlineitemmetadata
ordersSetlineitemmetadata pOssMerchantId_ pOssPayload_ pOssOrderId_ =
  OrdersSetlineitemmetadata'
    { _ossXgafv = Nothing
    , _ossMerchantId = _Coerce # pOssMerchantId_
    , _ossUploadProtocol = Nothing
    , _ossAccessToken = Nothing
    , _ossUploadType = Nothing
    , _ossPayload = pOssPayload_
    , _ossOrderId = pOssOrderId_
    , _ossCallback = Nothing
    }


-- | V1 error format.
ossXgafv :: Lens' OrdersSetlineitemmetadata (Maybe Xgafv)
ossXgafv = lens _ossXgafv (\ s a -> s{_ossXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ossMerchantId :: Lens' OrdersSetlineitemmetadata Word64
ossMerchantId
  = lens _ossMerchantId
      (\ s a -> s{_ossMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ossUploadProtocol :: Lens' OrdersSetlineitemmetadata (Maybe Text)
ossUploadProtocol
  = lens _ossUploadProtocol
      (\ s a -> s{_ossUploadProtocol = a})

-- | OAuth access token.
ossAccessToken :: Lens' OrdersSetlineitemmetadata (Maybe Text)
ossAccessToken
  = lens _ossAccessToken
      (\ s a -> s{_ossAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ossUploadType :: Lens' OrdersSetlineitemmetadata (Maybe Text)
ossUploadType
  = lens _ossUploadType
      (\ s a -> s{_ossUploadType = a})

-- | Multipart request metadata.
ossPayload :: Lens' OrdersSetlineitemmetadata OrdersSetLineItemMetadataRequest
ossPayload
  = lens _ossPayload (\ s a -> s{_ossPayload = a})

-- | The ID of the order.
ossOrderId :: Lens' OrdersSetlineitemmetadata Text
ossOrderId
  = lens _ossOrderId (\ s a -> s{_ossOrderId = a})

-- | JSONP
ossCallback :: Lens' OrdersSetlineitemmetadata (Maybe Text)
ossCallback
  = lens _ossCallback (\ s a -> s{_ossCallback = a})

instance GoogleRequest OrdersSetlineitemmetadata
         where
        type Rs OrdersSetlineitemmetadata =
             OrdersSetLineItemMetadataResponse
        type Scopes OrdersSetlineitemmetadata =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersSetlineitemmetadata'{..}
          = go _ossMerchantId _ossOrderId _ossXgafv
              _ossUploadProtocol
              _ossAccessToken
              _ossUploadType
              _ossCallback
              (Just AltJSON)
              _ossPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersSetlineitemmetadataResource)
                      mempty
