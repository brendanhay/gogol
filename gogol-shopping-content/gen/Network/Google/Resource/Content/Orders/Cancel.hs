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
-- Module      : Network.Google.Resource.Content.Orders.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels all line items in an order, making a full refund.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.cancel@.
module Network.Google.Resource.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelResource

    -- * Creating a Request
    , ordersCancel
    , OrdersCancel

    -- * Request Lenses
    , ord1Xgafv
    , ord1MerchantId
    , ord1UploadProtocol
    , ord1AccessToken
    , ord1UploadType
    , ord1Payload
    , ord1OrderId
    , ord1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.cancel@ method which the
-- 'OrdersCancel' request conforms to.
type OrdersCancelResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               "cancel" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrdersCancelRequest :>
                               Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order, making a full refund.
--
-- /See:/ 'ordersCancel' smart constructor.
data OrdersCancel =
  OrdersCancel'
    { _ord1Xgafv :: !(Maybe Xgafv)
    , _ord1MerchantId :: !(Textual Word64)
    , _ord1UploadProtocol :: !(Maybe Text)
    , _ord1AccessToken :: !(Maybe Text)
    , _ord1UploadType :: !(Maybe Text)
    , _ord1Payload :: !OrdersCancelRequest
    , _ord1OrderId :: !Text
    , _ord1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ord1Xgafv'
--
-- * 'ord1MerchantId'
--
-- * 'ord1UploadProtocol'
--
-- * 'ord1AccessToken'
--
-- * 'ord1UploadType'
--
-- * 'ord1Payload'
--
-- * 'ord1OrderId'
--
-- * 'ord1Callback'
ordersCancel
    :: Word64 -- ^ 'ord1MerchantId'
    -> OrdersCancelRequest -- ^ 'ord1Payload'
    -> Text -- ^ 'ord1OrderId'
    -> OrdersCancel
ordersCancel pOrd1MerchantId_ pOrd1Payload_ pOrd1OrderId_ =
  OrdersCancel'
    { _ord1Xgafv = Nothing
    , _ord1MerchantId = _Coerce # pOrd1MerchantId_
    , _ord1UploadProtocol = Nothing
    , _ord1AccessToken = Nothing
    , _ord1UploadType = Nothing
    , _ord1Payload = pOrd1Payload_
    , _ord1OrderId = pOrd1OrderId_
    , _ord1Callback = Nothing
    }


-- | V1 error format.
ord1Xgafv :: Lens' OrdersCancel (Maybe Xgafv)
ord1Xgafv
  = lens _ord1Xgafv (\ s a -> s{_ord1Xgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ord1MerchantId :: Lens' OrdersCancel Word64
ord1MerchantId
  = lens _ord1MerchantId
      (\ s a -> s{_ord1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ord1UploadProtocol :: Lens' OrdersCancel (Maybe Text)
ord1UploadProtocol
  = lens _ord1UploadProtocol
      (\ s a -> s{_ord1UploadProtocol = a})

-- | OAuth access token.
ord1AccessToken :: Lens' OrdersCancel (Maybe Text)
ord1AccessToken
  = lens _ord1AccessToken
      (\ s a -> s{_ord1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ord1UploadType :: Lens' OrdersCancel (Maybe Text)
ord1UploadType
  = lens _ord1UploadType
      (\ s a -> s{_ord1UploadType = a})

-- | Multipart request metadata.
ord1Payload :: Lens' OrdersCancel OrdersCancelRequest
ord1Payload
  = lens _ord1Payload (\ s a -> s{_ord1Payload = a})

-- | The ID of the order to cancel.
ord1OrderId :: Lens' OrdersCancel Text
ord1OrderId
  = lens _ord1OrderId (\ s a -> s{_ord1OrderId = a})

-- | JSONP
ord1Callback :: Lens' OrdersCancel (Maybe Text)
ord1Callback
  = lens _ord1Callback (\ s a -> s{_ord1Callback = a})

instance GoogleRequest OrdersCancel where
        type Rs OrdersCancel = OrdersCancelResponse
        type Scopes OrdersCancel =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCancel'{..}
          = go _ord1MerchantId _ord1OrderId _ord1Xgafv
              _ord1UploadProtocol
              _ord1AccessToken
              _ord1UploadType
              _ord1Callback
              (Just AltJSON)
              _ord1Payload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersCancelResource)
                      mempty
