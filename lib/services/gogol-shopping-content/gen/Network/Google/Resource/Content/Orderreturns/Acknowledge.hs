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
-- Module      : Network.Google.Resource.Content.Orderreturns.Acknowledge
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acks an order return in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.acknowledge@.
module Network.Google.Resource.Content.Orderreturns.Acknowledge
    (
    -- * REST Resource
      OrderreturnsAcknowledgeResource

    -- * Creating a Request
    , orderreturnsAcknowledge
    , OrderreturnsAcknowledge

    -- * Request Lenses
    , oaXgafv
    , oaMerchantId
    , oaUploadProtocol
    , oaAccessToken
    , oaUploadType
    , oaPayload
    , oaReturnId
    , oaCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.acknowledge@ method which the
-- 'OrderreturnsAcknowledge' request conforms to.
type OrderreturnsAcknowledgeResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             Capture "returnId" Text :>
               "acknowledge" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrderreturnsAcknowledgeRequest :>
                               Post '[JSON] OrderreturnsAcknowledgeResponse

-- | Acks an order return in your Merchant Center account.
--
-- /See:/ 'orderreturnsAcknowledge' smart constructor.
data OrderreturnsAcknowledge =
  OrderreturnsAcknowledge'
    { _oaXgafv :: !(Maybe Xgafv)
    , _oaMerchantId :: !(Textual Word64)
    , _oaUploadProtocol :: !(Maybe Text)
    , _oaAccessToken :: !(Maybe Text)
    , _oaUploadType :: !(Maybe Text)
    , _oaPayload :: !OrderreturnsAcknowledgeRequest
    , _oaReturnId :: !Text
    , _oaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsAcknowledge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaXgafv'
--
-- * 'oaMerchantId'
--
-- * 'oaUploadProtocol'
--
-- * 'oaAccessToken'
--
-- * 'oaUploadType'
--
-- * 'oaPayload'
--
-- * 'oaReturnId'
--
-- * 'oaCallback'
orderreturnsAcknowledge
    :: Word64 -- ^ 'oaMerchantId'
    -> OrderreturnsAcknowledgeRequest -- ^ 'oaPayload'
    -> Text -- ^ 'oaReturnId'
    -> OrderreturnsAcknowledge
orderreturnsAcknowledge pOaMerchantId_ pOaPayload_ pOaReturnId_ =
  OrderreturnsAcknowledge'
    { _oaXgafv = Nothing
    , _oaMerchantId = _Coerce # pOaMerchantId_
    , _oaUploadProtocol = Nothing
    , _oaAccessToken = Nothing
    , _oaUploadType = Nothing
    , _oaPayload = pOaPayload_
    , _oaReturnId = pOaReturnId_
    , _oaCallback = Nothing
    }


-- | V1 error format.
oaXgafv :: Lens' OrderreturnsAcknowledge (Maybe Xgafv)
oaXgafv = lens _oaXgafv (\ s a -> s{_oaXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
oaMerchantId :: Lens' OrderreturnsAcknowledge Word64
oaMerchantId
  = lens _oaMerchantId (\ s a -> s{_oaMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oaUploadProtocol :: Lens' OrderreturnsAcknowledge (Maybe Text)
oaUploadProtocol
  = lens _oaUploadProtocol
      (\ s a -> s{_oaUploadProtocol = a})

-- | OAuth access token.
oaAccessToken :: Lens' OrderreturnsAcknowledge (Maybe Text)
oaAccessToken
  = lens _oaAccessToken
      (\ s a -> s{_oaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oaUploadType :: Lens' OrderreturnsAcknowledge (Maybe Text)
oaUploadType
  = lens _oaUploadType (\ s a -> s{_oaUploadType = a})

-- | Multipart request metadata.
oaPayload :: Lens' OrderreturnsAcknowledge OrderreturnsAcknowledgeRequest
oaPayload
  = lens _oaPayload (\ s a -> s{_oaPayload = a})

-- | The ID of the return.
oaReturnId :: Lens' OrderreturnsAcknowledge Text
oaReturnId
  = lens _oaReturnId (\ s a -> s{_oaReturnId = a})

-- | JSONP
oaCallback :: Lens' OrderreturnsAcknowledge (Maybe Text)
oaCallback
  = lens _oaCallback (\ s a -> s{_oaCallback = a})

instance GoogleRequest OrderreturnsAcknowledge where
        type Rs OrderreturnsAcknowledge =
             OrderreturnsAcknowledgeResponse
        type Scopes OrderreturnsAcknowledge =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsAcknowledge'{..}
          = go _oaMerchantId _oaReturnId _oaXgafv
              _oaUploadProtocol
              _oaAccessToken
              _oaUploadType
              _oaCallback
              (Just AltJSON)
              _oaPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsAcknowledgeResource)
                      mempty
