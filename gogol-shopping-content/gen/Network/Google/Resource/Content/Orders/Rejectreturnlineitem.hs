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
-- Module      : Network.Google.Resource.Content.Orders.Rejectreturnlineitem
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects return on an line item.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.rejectreturnlineitem@.
module Network.Google.Resource.Content.Orders.Rejectreturnlineitem
    (
    -- * REST Resource
      OrdersRejectreturnlineitemResource

    -- * Creating a Request
    , ordersRejectreturnlineitem
    , OrdersRejectreturnlineitem

    -- * Request Lenses
    , or1Xgafv
    , or1MerchantId
    , or1UploadProtocol
    , or1AccessToken
    , or1UploadType
    , or1Payload
    , or1OrderId
    , or1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.rejectreturnlineitem@ method which the
-- 'OrdersRejectreturnlineitem' request conforms to.
type OrdersRejectreturnlineitemResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "rejectReturnLineItem" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersRejectReturnLineItemRequest
                               :>
                               Post '[JSON] OrdersRejectReturnLineItemResponse

-- | Rejects return on an line item.
--
-- /See:/ 'ordersRejectreturnlineitem' smart constructor.
data OrdersRejectreturnlineitem =
  OrdersRejectreturnlineitem'
    { _or1Xgafv :: !(Maybe Xgafv)
    , _or1MerchantId :: !(Textual Word64)
    , _or1UploadProtocol :: !(Maybe Text)
    , _or1AccessToken :: !(Maybe Text)
    , _or1UploadType :: !(Maybe Text)
    , _or1Payload :: !OrdersRejectReturnLineItemRequest
    , _or1OrderId :: !Text
    , _or1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRejectreturnlineitem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'or1Xgafv'
--
-- * 'or1MerchantId'
--
-- * 'or1UploadProtocol'
--
-- * 'or1AccessToken'
--
-- * 'or1UploadType'
--
-- * 'or1Payload'
--
-- * 'or1OrderId'
--
-- * 'or1Callback'
ordersRejectreturnlineitem
    :: Word64 -- ^ 'or1MerchantId'
    -> OrdersRejectReturnLineItemRequest -- ^ 'or1Payload'
    -> Text -- ^ 'or1OrderId'
    -> OrdersRejectreturnlineitem
ordersRejectreturnlineitem pOr1MerchantId_ pOr1Payload_ pOr1OrderId_ =
  OrdersRejectreturnlineitem'
    { _or1Xgafv = Nothing
    , _or1MerchantId = _Coerce # pOr1MerchantId_
    , _or1UploadProtocol = Nothing
    , _or1AccessToken = Nothing
    , _or1UploadType = Nothing
    , _or1Payload = pOr1Payload_
    , _or1OrderId = pOr1OrderId_
    , _or1Callback = Nothing
    }


-- | V1 error format.
or1Xgafv :: Lens' OrdersRejectreturnlineitem (Maybe Xgafv)
or1Xgafv = lens _or1Xgafv (\ s a -> s{_or1Xgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
or1MerchantId :: Lens' OrdersRejectreturnlineitem Word64
or1MerchantId
  = lens _or1MerchantId
      (\ s a -> s{_or1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
or1UploadProtocol :: Lens' OrdersRejectreturnlineitem (Maybe Text)
or1UploadProtocol
  = lens _or1UploadProtocol
      (\ s a -> s{_or1UploadProtocol = a})

-- | OAuth access token.
or1AccessToken :: Lens' OrdersRejectreturnlineitem (Maybe Text)
or1AccessToken
  = lens _or1AccessToken
      (\ s a -> s{_or1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
or1UploadType :: Lens' OrdersRejectreturnlineitem (Maybe Text)
or1UploadType
  = lens _or1UploadType
      (\ s a -> s{_or1UploadType = a})

-- | Multipart request metadata.
or1Payload :: Lens' OrdersRejectreturnlineitem OrdersRejectReturnLineItemRequest
or1Payload
  = lens _or1Payload (\ s a -> s{_or1Payload = a})

-- | The ID of the order.
or1OrderId :: Lens' OrdersRejectreturnlineitem Text
or1OrderId
  = lens _or1OrderId (\ s a -> s{_or1OrderId = a})

-- | JSONP
or1Callback :: Lens' OrdersRejectreturnlineitem (Maybe Text)
or1Callback
  = lens _or1Callback (\ s a -> s{_or1Callback = a})

instance GoogleRequest OrdersRejectreturnlineitem
         where
        type Rs OrdersRejectreturnlineitem =
             OrdersRejectReturnLineItemResponse
        type Scopes OrdersRejectreturnlineitem =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersRejectreturnlineitem'{..}
          = go _or1MerchantId _or1OrderId _or1Xgafv
              _or1UploadProtocol
              _or1AccessToken
              _or1UploadType
              _or1Callback
              (Just AltJSON)
              _or1Payload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersRejectreturnlineitemResource)
                      mempty
