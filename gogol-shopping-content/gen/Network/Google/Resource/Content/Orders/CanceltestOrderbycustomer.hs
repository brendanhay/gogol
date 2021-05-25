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
-- Module      : Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.canceltestorderbycustomer@.
module Network.Google.Resource.Content.Orders.CanceltestOrderbycustomer
    (
    -- * REST Resource
      OrdersCanceltestOrderbycustomerResource

    -- * Creating a Request
    , ordersCanceltestOrderbycustomer
    , OrdersCanceltestOrderbycustomer

    -- * Request Lenses
    , ocoXgafv
    , ocoMerchantId
    , ocoUploadProtocol
    , ocoAccessToken
    , ocoUploadType
    , ocoPayload
    , ocoOrderId
    , ocoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.canceltestorderbycustomer@ method which the
-- 'OrdersCanceltestOrderbycustomer' request conforms to.
type OrdersCanceltestOrderbycustomerResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "testorders" :>
             Capture "orderId" Text :>
               "cancelByCustomer" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               OrdersCancelTestOrderByCustomerRequest
                               :>
                               Post '[JSON]
                                 OrdersCancelTestOrderByCustomerResponse

-- | Sandbox only. Cancels a test order for customer-initiated cancellation.
--
-- /See:/ 'ordersCanceltestOrderbycustomer' smart constructor.
data OrdersCanceltestOrderbycustomer =
  OrdersCanceltestOrderbycustomer'
    { _ocoXgafv :: !(Maybe Xgafv)
    , _ocoMerchantId :: !(Textual Word64)
    , _ocoUploadProtocol :: !(Maybe Text)
    , _ocoAccessToken :: !(Maybe Text)
    , _ocoUploadType :: !(Maybe Text)
    , _ocoPayload :: !OrdersCancelTestOrderByCustomerRequest
    , _ocoOrderId :: !Text
    , _ocoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCanceltestOrderbycustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocoXgafv'
--
-- * 'ocoMerchantId'
--
-- * 'ocoUploadProtocol'
--
-- * 'ocoAccessToken'
--
-- * 'ocoUploadType'
--
-- * 'ocoPayload'
--
-- * 'ocoOrderId'
--
-- * 'ocoCallback'
ordersCanceltestOrderbycustomer
    :: Word64 -- ^ 'ocoMerchantId'
    -> OrdersCancelTestOrderByCustomerRequest -- ^ 'ocoPayload'
    -> Text -- ^ 'ocoOrderId'
    -> OrdersCanceltestOrderbycustomer
ordersCanceltestOrderbycustomer pOcoMerchantId_ pOcoPayload_ pOcoOrderId_ =
  OrdersCanceltestOrderbycustomer'
    { _ocoXgafv = Nothing
    , _ocoMerchantId = _Coerce # pOcoMerchantId_
    , _ocoUploadProtocol = Nothing
    , _ocoAccessToken = Nothing
    , _ocoUploadType = Nothing
    , _ocoPayload = pOcoPayload_
    , _ocoOrderId = pOcoOrderId_
    , _ocoCallback = Nothing
    }


-- | V1 error format.
ocoXgafv :: Lens' OrdersCanceltestOrderbycustomer (Maybe Xgafv)
ocoXgafv = lens _ocoXgafv (\ s a -> s{_ocoXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ocoMerchantId :: Lens' OrdersCanceltestOrderbycustomer Word64
ocoMerchantId
  = lens _ocoMerchantId
      (\ s a -> s{_ocoMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ocoUploadProtocol :: Lens' OrdersCanceltestOrderbycustomer (Maybe Text)
ocoUploadProtocol
  = lens _ocoUploadProtocol
      (\ s a -> s{_ocoUploadProtocol = a})

-- | OAuth access token.
ocoAccessToken :: Lens' OrdersCanceltestOrderbycustomer (Maybe Text)
ocoAccessToken
  = lens _ocoAccessToken
      (\ s a -> s{_ocoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ocoUploadType :: Lens' OrdersCanceltestOrderbycustomer (Maybe Text)
ocoUploadType
  = lens _ocoUploadType
      (\ s a -> s{_ocoUploadType = a})

-- | Multipart request metadata.
ocoPayload :: Lens' OrdersCanceltestOrderbycustomer OrdersCancelTestOrderByCustomerRequest
ocoPayload
  = lens _ocoPayload (\ s a -> s{_ocoPayload = a})

-- | The ID of the test order to cancel.
ocoOrderId :: Lens' OrdersCanceltestOrderbycustomer Text
ocoOrderId
  = lens _ocoOrderId (\ s a -> s{_ocoOrderId = a})

-- | JSONP
ocoCallback :: Lens' OrdersCanceltestOrderbycustomer (Maybe Text)
ocoCallback
  = lens _ocoCallback (\ s a -> s{_ocoCallback = a})

instance GoogleRequest
           OrdersCanceltestOrderbycustomer
         where
        type Rs OrdersCanceltestOrderbycustomer =
             OrdersCancelTestOrderByCustomerResponse
        type Scopes OrdersCanceltestOrderbycustomer =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersCanceltestOrderbycustomer'{..}
          = go _ocoMerchantId _ocoOrderId _ocoXgafv
              _ocoUploadProtocol
              _ocoAccessToken
              _ocoUploadType
              _ocoCallback
              (Just AltJSON)
              _ocoPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrdersCanceltestOrderbycustomerResource)
                      mempty
