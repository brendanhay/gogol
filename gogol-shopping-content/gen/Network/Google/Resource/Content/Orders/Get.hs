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
-- Module      : Network.Google.Resource.Content.Orders.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an order from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.get@.
module Network.Google.Resource.Content.Orders.Get
    (
    -- * REST Resource
      OrdersGetResource

    -- * Creating a Request
    , ordersGet
    , OrdersGet

    -- * Request Lenses
    , ogXgafv
    , ogMerchantId
    , ogUploadProtocol
    , ogAccessToken
    , ogUploadType
    , ogOrderId
    , ogCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.get@ method which the
-- 'OrdersGet' request conforms to.
type OrdersGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             Capture "orderId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ 'ordersGet' smart constructor.
data OrdersGet =
  OrdersGet'
    { _ogXgafv :: !(Maybe Xgafv)
    , _ogMerchantId :: !(Textual Word64)
    , _ogUploadProtocol :: !(Maybe Text)
    , _ogAccessToken :: !(Maybe Text)
    , _ogUploadType :: !(Maybe Text)
    , _ogOrderId :: !Text
    , _ogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogXgafv'
--
-- * 'ogMerchantId'
--
-- * 'ogUploadProtocol'
--
-- * 'ogAccessToken'
--
-- * 'ogUploadType'
--
-- * 'ogOrderId'
--
-- * 'ogCallback'
ordersGet
    :: Word64 -- ^ 'ogMerchantId'
    -> Text -- ^ 'ogOrderId'
    -> OrdersGet
ordersGet pOgMerchantId_ pOgOrderId_ =
  OrdersGet'
    { _ogXgafv = Nothing
    , _ogMerchantId = _Coerce # pOgMerchantId_
    , _ogUploadProtocol = Nothing
    , _ogAccessToken = Nothing
    , _ogUploadType = Nothing
    , _ogOrderId = pOgOrderId_
    , _ogCallback = Nothing
    }


-- | V1 error format.
ogXgafv :: Lens' OrdersGet (Maybe Xgafv)
ogXgafv = lens _ogXgafv (\ s a -> s{_ogXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ogMerchantId :: Lens' OrdersGet Word64
ogMerchantId
  = lens _ogMerchantId (\ s a -> s{_ogMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogUploadProtocol :: Lens' OrdersGet (Maybe Text)
ogUploadProtocol
  = lens _ogUploadProtocol
      (\ s a -> s{_ogUploadProtocol = a})

-- | OAuth access token.
ogAccessToken :: Lens' OrdersGet (Maybe Text)
ogAccessToken
  = lens _ogAccessToken
      (\ s a -> s{_ogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogUploadType :: Lens' OrdersGet (Maybe Text)
ogUploadType
  = lens _ogUploadType (\ s a -> s{_ogUploadType = a})

-- | The ID of the order.
ogOrderId :: Lens' OrdersGet Text
ogOrderId
  = lens _ogOrderId (\ s a -> s{_ogOrderId = a})

-- | JSONP
ogCallback :: Lens' OrdersGet (Maybe Text)
ogCallback
  = lens _ogCallback (\ s a -> s{_ogCallback = a})

instance GoogleRequest OrdersGet where
        type Rs OrdersGet = Order
        type Scopes OrdersGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersGet'{..}
          = go _ogMerchantId _ogOrderId _ogXgafv
              _ogUploadProtocol
              _ogAccessToken
              _ogUploadType
              _ogCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersGetResource)
                      mempty
