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
-- Module      : Network.Google.Resource.Content.Orders.AdvancetestOrder
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Moves a test order from state \"\`inProgress\`\" to state
-- \"\`pendingShipment\`\".
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.advancetestorder@.
module Network.Google.Resource.Content.Orders.AdvancetestOrder
    (
    -- * REST Resource
      OrdersAdvancetestOrderResource

    -- * Creating a Request
    , ordersAdvancetestOrder
    , OrdersAdvancetestOrder

    -- * Request Lenses
    , oaoXgafv
    , oaoMerchantId
    , oaoUploadProtocol
    , oaoAccessToken
    , oaoUploadType
    , oaoOrderId
    , oaoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.advancetestorder@ method which the
-- 'OrdersAdvancetestOrder' request conforms to.
type OrdersAdvancetestOrderResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "testorders" :>
             Capture "orderId" Text :>
               "advance" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] OrdersAdvanceTestOrderResponse

-- | Sandbox only. Moves a test order from state \"\`inProgress\`\" to state
-- \"\`pendingShipment\`\".
--
-- /See:/ 'ordersAdvancetestOrder' smart constructor.
data OrdersAdvancetestOrder =
  OrdersAdvancetestOrder'
    { _oaoXgafv :: !(Maybe Xgafv)
    , _oaoMerchantId :: !(Textual Word64)
    , _oaoUploadProtocol :: !(Maybe Text)
    , _oaoAccessToken :: !(Maybe Text)
    , _oaoUploadType :: !(Maybe Text)
    , _oaoOrderId :: !Text
    , _oaoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAdvancetestOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaoXgafv'
--
-- * 'oaoMerchantId'
--
-- * 'oaoUploadProtocol'
--
-- * 'oaoAccessToken'
--
-- * 'oaoUploadType'
--
-- * 'oaoOrderId'
--
-- * 'oaoCallback'
ordersAdvancetestOrder
    :: Word64 -- ^ 'oaoMerchantId'
    -> Text -- ^ 'oaoOrderId'
    -> OrdersAdvancetestOrder
ordersAdvancetestOrder pOaoMerchantId_ pOaoOrderId_ =
  OrdersAdvancetestOrder'
    { _oaoXgafv = Nothing
    , _oaoMerchantId = _Coerce # pOaoMerchantId_
    , _oaoUploadProtocol = Nothing
    , _oaoAccessToken = Nothing
    , _oaoUploadType = Nothing
    , _oaoOrderId = pOaoOrderId_
    , _oaoCallback = Nothing
    }


-- | V1 error format.
oaoXgafv :: Lens' OrdersAdvancetestOrder (Maybe Xgafv)
oaoXgafv = lens _oaoXgafv (\ s a -> s{_oaoXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oaoMerchantId :: Lens' OrdersAdvancetestOrder Word64
oaoMerchantId
  = lens _oaoMerchantId
      (\ s a -> s{_oaoMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oaoUploadProtocol :: Lens' OrdersAdvancetestOrder (Maybe Text)
oaoUploadProtocol
  = lens _oaoUploadProtocol
      (\ s a -> s{_oaoUploadProtocol = a})

-- | OAuth access token.
oaoAccessToken :: Lens' OrdersAdvancetestOrder (Maybe Text)
oaoAccessToken
  = lens _oaoAccessToken
      (\ s a -> s{_oaoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oaoUploadType :: Lens' OrdersAdvancetestOrder (Maybe Text)
oaoUploadType
  = lens _oaoUploadType
      (\ s a -> s{_oaoUploadType = a})

-- | The ID of the test order to modify.
oaoOrderId :: Lens' OrdersAdvancetestOrder Text
oaoOrderId
  = lens _oaoOrderId (\ s a -> s{_oaoOrderId = a})

-- | JSONP
oaoCallback :: Lens' OrdersAdvancetestOrder (Maybe Text)
oaoCallback
  = lens _oaoCallback (\ s a -> s{_oaoCallback = a})

instance GoogleRequest OrdersAdvancetestOrder where
        type Rs OrdersAdvancetestOrder =
             OrdersAdvanceTestOrderResponse
        type Scopes OrdersAdvancetestOrder =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersAdvancetestOrder'{..}
          = go _oaoMerchantId _oaoOrderId _oaoXgafv
              _oaoUploadProtocol
              _oaoAccessToken
              _oaoUploadType
              _oaoCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersAdvancetestOrderResource)
                      mempty
