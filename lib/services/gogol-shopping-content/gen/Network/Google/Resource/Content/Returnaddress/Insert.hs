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
-- Module      : Network.Google.Resource.Content.Returnaddress.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a return address for the Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnaddress.insert@.
module Network.Google.Resource.Content.Returnaddress.Insert
    (
    -- * REST Resource
      ReturnaddressInsertResource

    -- * Creating a Request
    , returnaddressInsert
    , ReturnaddressInsert

    -- * Request Lenses
    , ri1Xgafv
    , ri1MerchantId
    , ri1UploadProtocol
    , ri1AccessToken
    , ri1UploadType
    , ri1Payload
    , ri1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnaddress.insert@ method which the
-- 'ReturnaddressInsert' request conforms to.
type ReturnaddressInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "returnaddress" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReturnAddress :>
                           Post '[JSON] ReturnAddress

-- | Inserts a return address for the Merchant Center account.
--
-- /See:/ 'returnaddressInsert' smart constructor.
data ReturnaddressInsert =
  ReturnaddressInsert'
    { _ri1Xgafv :: !(Maybe Xgafv)
    , _ri1MerchantId :: !(Textual Word64)
    , _ri1UploadProtocol :: !(Maybe Text)
    , _ri1AccessToken :: !(Maybe Text)
    , _ri1UploadType :: !(Maybe Text)
    , _ri1Payload :: !ReturnAddress
    , _ri1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ri1Xgafv'
--
-- * 'ri1MerchantId'
--
-- * 'ri1UploadProtocol'
--
-- * 'ri1AccessToken'
--
-- * 'ri1UploadType'
--
-- * 'ri1Payload'
--
-- * 'ri1Callback'
returnaddressInsert
    :: Word64 -- ^ 'ri1MerchantId'
    -> ReturnAddress -- ^ 'ri1Payload'
    -> ReturnaddressInsert
returnaddressInsert pRi1MerchantId_ pRi1Payload_ =
  ReturnaddressInsert'
    { _ri1Xgafv = Nothing
    , _ri1MerchantId = _Coerce # pRi1MerchantId_
    , _ri1UploadProtocol = Nothing
    , _ri1AccessToken = Nothing
    , _ri1UploadType = Nothing
    , _ri1Payload = pRi1Payload_
    , _ri1Callback = Nothing
    }


-- | V1 error format.
ri1Xgafv :: Lens' ReturnaddressInsert (Maybe Xgafv)
ri1Xgafv = lens _ri1Xgafv (\ s a -> s{_ri1Xgafv = a})

-- | The Merchant Center account to insert a return address for.
ri1MerchantId :: Lens' ReturnaddressInsert Word64
ri1MerchantId
  = lens _ri1MerchantId
      (\ s a -> s{_ri1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ri1UploadProtocol :: Lens' ReturnaddressInsert (Maybe Text)
ri1UploadProtocol
  = lens _ri1UploadProtocol
      (\ s a -> s{_ri1UploadProtocol = a})

-- | OAuth access token.
ri1AccessToken :: Lens' ReturnaddressInsert (Maybe Text)
ri1AccessToken
  = lens _ri1AccessToken
      (\ s a -> s{_ri1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ri1UploadType :: Lens' ReturnaddressInsert (Maybe Text)
ri1UploadType
  = lens _ri1UploadType
      (\ s a -> s{_ri1UploadType = a})

-- | Multipart request metadata.
ri1Payload :: Lens' ReturnaddressInsert ReturnAddress
ri1Payload
  = lens _ri1Payload (\ s a -> s{_ri1Payload = a})

-- | JSONP
ri1Callback :: Lens' ReturnaddressInsert (Maybe Text)
ri1Callback
  = lens _ri1Callback (\ s a -> s{_ri1Callback = a})

instance GoogleRequest ReturnaddressInsert where
        type Rs ReturnaddressInsert = ReturnAddress
        type Scopes ReturnaddressInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnaddressInsert'{..}
          = go _ri1MerchantId _ri1Xgafv _ri1UploadProtocol
              _ri1AccessToken
              _ri1UploadType
              _ri1Callback
              (Just AltJSON)
              _ri1Payload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnaddressInsertResource)
                      mempty
