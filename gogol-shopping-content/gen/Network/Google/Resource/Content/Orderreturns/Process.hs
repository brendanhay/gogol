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
-- Module      : Network.Google.Resource.Content.Orderreturns.Process
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Processes return in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.process@.
module Network.Google.Resource.Content.Orderreturns.Process
    (
    -- * REST Resource
      OrderreturnsProcessResource

    -- * Creating a Request
    , orderreturnsProcess
    , OrderreturnsProcess

    -- * Request Lenses
    , opXgafv
    , opMerchantId
    , opUploadProtocol
    , opAccessToken
    , opUploadType
    , opPayload
    , opReturnId
    , opCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.process@ method which the
-- 'OrderreturnsProcess' request conforms to.
type OrderreturnsProcessResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             Capture "returnId" Text :>
               "process" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrderreturnsProcessRequest :>
                               Post '[JSON] OrderreturnsProcessResponse

-- | Processes return in your Merchant Center account.
--
-- /See:/ 'orderreturnsProcess' smart constructor.
data OrderreturnsProcess =
  OrderreturnsProcess'
    { _opXgafv :: !(Maybe Xgafv)
    , _opMerchantId :: !(Textual Word64)
    , _opUploadProtocol :: !(Maybe Text)
    , _opAccessToken :: !(Maybe Text)
    , _opUploadType :: !(Maybe Text)
    , _opPayload :: !OrderreturnsProcessRequest
    , _opReturnId :: !Text
    , _opCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opXgafv'
--
-- * 'opMerchantId'
--
-- * 'opUploadProtocol'
--
-- * 'opAccessToken'
--
-- * 'opUploadType'
--
-- * 'opPayload'
--
-- * 'opReturnId'
--
-- * 'opCallback'
orderreturnsProcess
    :: Word64 -- ^ 'opMerchantId'
    -> OrderreturnsProcessRequest -- ^ 'opPayload'
    -> Text -- ^ 'opReturnId'
    -> OrderreturnsProcess
orderreturnsProcess pOpMerchantId_ pOpPayload_ pOpReturnId_ =
  OrderreturnsProcess'
    { _opXgafv = Nothing
    , _opMerchantId = _Coerce # pOpMerchantId_
    , _opUploadProtocol = Nothing
    , _opAccessToken = Nothing
    , _opUploadType = Nothing
    , _opPayload = pOpPayload_
    , _opReturnId = pOpReturnId_
    , _opCallback = Nothing
    }


-- | V1 error format.
opXgafv :: Lens' OrderreturnsProcess (Maybe Xgafv)
opXgafv = lens _opXgafv (\ s a -> s{_opXgafv = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
opMerchantId :: Lens' OrderreturnsProcess Word64
opMerchantId
  = lens _opMerchantId (\ s a -> s{_opMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
opUploadProtocol :: Lens' OrderreturnsProcess (Maybe Text)
opUploadProtocol
  = lens _opUploadProtocol
      (\ s a -> s{_opUploadProtocol = a})

-- | OAuth access token.
opAccessToken :: Lens' OrderreturnsProcess (Maybe Text)
opAccessToken
  = lens _opAccessToken
      (\ s a -> s{_opAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
opUploadType :: Lens' OrderreturnsProcess (Maybe Text)
opUploadType
  = lens _opUploadType (\ s a -> s{_opUploadType = a})

-- | Multipart request metadata.
opPayload :: Lens' OrderreturnsProcess OrderreturnsProcessRequest
opPayload
  = lens _opPayload (\ s a -> s{_opPayload = a})

-- | The ID of the return.
opReturnId :: Lens' OrderreturnsProcess Text
opReturnId
  = lens _opReturnId (\ s a -> s{_opReturnId = a})

-- | JSONP
opCallback :: Lens' OrderreturnsProcess (Maybe Text)
opCallback
  = lens _opCallback (\ s a -> s{_opCallback = a})

instance GoogleRequest OrderreturnsProcess where
        type Rs OrderreturnsProcess =
             OrderreturnsProcessResponse
        type Scopes OrderreturnsProcess =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsProcess'{..}
          = go _opMerchantId _opReturnId _opXgafv
              _opUploadProtocol
              _opAccessToken
              _opUploadType
              _opCallback
              (Just AltJSON)
              _opPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsProcessResource)
                      mempty
