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
-- Module      : Network.Google.Resource.Content.Returnaddress.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batches multiple return address related calls in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnaddress.custombatch@.
module Network.Google.Resource.Content.Returnaddress.Custombatch
    (
    -- * REST Resource
      ReturnaddressCustombatchResource

    -- * Creating a Request
    , returnaddressCustombatch
    , ReturnaddressCustombatch

    -- * Request Lenses
    , rrXgafv
    , rrUploadProtocol
    , rrAccessToken
    , rrUploadType
    , rrPayload
    , rrCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnaddress.custombatch@ method which the
-- 'ReturnaddressCustombatch' request conforms to.
type ReturnaddressCustombatchResource =
     "content" :>
       "v2.1" :>
         "returnaddress" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReturnaddressCustomBatchRequest :>
                           Post '[JSON] ReturnaddressCustomBatchResponse

-- | Batches multiple return address related calls in a single request.
--
-- /See:/ 'returnaddressCustombatch' smart constructor.
data ReturnaddressCustombatch =
  ReturnaddressCustombatch'
    { _rrXgafv :: !(Maybe Xgafv)
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrAccessToken :: !(Maybe Text)
    , _rrUploadType :: !(Maybe Text)
    , _rrPayload :: !ReturnaddressCustomBatchRequest
    , _rrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrUploadProtocol'
--
-- * 'rrAccessToken'
--
-- * 'rrUploadType'
--
-- * 'rrPayload'
--
-- * 'rrCallback'
returnaddressCustombatch
    :: ReturnaddressCustomBatchRequest -- ^ 'rrPayload'
    -> ReturnaddressCustombatch
returnaddressCustombatch pRrPayload_ =
  ReturnaddressCustombatch'
    { _rrXgafv = Nothing
    , _rrUploadProtocol = Nothing
    , _rrAccessToken = Nothing
    , _rrUploadType = Nothing
    , _rrPayload = pRrPayload_
    , _rrCallback = Nothing
    }


-- | V1 error format.
rrXgafv :: Lens' ReturnaddressCustombatch (Maybe Xgafv)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ReturnaddressCustombatch (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | OAuth access token.
rrAccessToken :: Lens' ReturnaddressCustombatch (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ReturnaddressCustombatch (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | Multipart request metadata.
rrPayload :: Lens' ReturnaddressCustombatch ReturnaddressCustomBatchRequest
rrPayload
  = lens _rrPayload (\ s a -> s{_rrPayload = a})

-- | JSONP
rrCallback :: Lens' ReturnaddressCustombatch (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ReturnaddressCustombatch where
        type Rs ReturnaddressCustombatch =
             ReturnaddressCustomBatchResponse
        type Scopes ReturnaddressCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnaddressCustombatch'{..}
          = go _rrXgafv _rrUploadProtocol _rrAccessToken
              _rrUploadType
              _rrCallback
              (Just AltJSON)
              _rrPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnaddressCustombatchResource)
                      mempty
