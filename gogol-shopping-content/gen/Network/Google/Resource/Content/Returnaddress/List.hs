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
-- Module      : Network.Google.Resource.Content.Returnaddress.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the return addresses of the Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnaddress.list@.
module Network.Google.Resource.Content.Returnaddress.List
    (
    -- * REST Resource
      ReturnaddressListResource

    -- * Creating a Request
    , returnaddressList
    , ReturnaddressList

    -- * Request Lenses
    , rllXgafv
    , rllMerchantId
    , rllUploadProtocol
    , rllCountry
    , rllAccessToken
    , rllUploadType
    , rllPageToken
    , rllMaxResults
    , rllCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnaddress.list@ method which the
-- 'ReturnaddressList' request conforms to.
type ReturnaddressListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "returnaddress" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "country" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ReturnaddressListResponse

-- | Lists the return addresses of the Merchant Center account.
--
-- /See:/ 'returnaddressList' smart constructor.
data ReturnaddressList =
  ReturnaddressList'
    { _rllXgafv :: !(Maybe Xgafv)
    , _rllMerchantId :: !(Textual Word64)
    , _rllUploadProtocol :: !(Maybe Text)
    , _rllCountry :: !(Maybe Text)
    , _rllAccessToken :: !(Maybe Text)
    , _rllUploadType :: !(Maybe Text)
    , _rllPageToken :: !(Maybe Text)
    , _rllMaxResults :: !(Maybe (Textual Word32))
    , _rllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllXgafv'
--
-- * 'rllMerchantId'
--
-- * 'rllUploadProtocol'
--
-- * 'rllCountry'
--
-- * 'rllAccessToken'
--
-- * 'rllUploadType'
--
-- * 'rllPageToken'
--
-- * 'rllMaxResults'
--
-- * 'rllCallback'
returnaddressList
    :: Word64 -- ^ 'rllMerchantId'
    -> ReturnaddressList
returnaddressList pRllMerchantId_ =
  ReturnaddressList'
    { _rllXgafv = Nothing
    , _rllMerchantId = _Coerce # pRllMerchantId_
    , _rllUploadProtocol = Nothing
    , _rllCountry = Nothing
    , _rllAccessToken = Nothing
    , _rllUploadType = Nothing
    , _rllPageToken = Nothing
    , _rllMaxResults = Nothing
    , _rllCallback = Nothing
    }


-- | V1 error format.
rllXgafv :: Lens' ReturnaddressList (Maybe Xgafv)
rllXgafv = lens _rllXgafv (\ s a -> s{_rllXgafv = a})

-- | The Merchant Center account to list return addresses for.
rllMerchantId :: Lens' ReturnaddressList Word64
rllMerchantId
  = lens _rllMerchantId
      (\ s a -> s{_rllMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rllUploadProtocol :: Lens' ReturnaddressList (Maybe Text)
rllUploadProtocol
  = lens _rllUploadProtocol
      (\ s a -> s{_rllUploadProtocol = a})

-- | List only return addresses applicable to the given country of sale. When
-- omitted, all return addresses are listed.
rllCountry :: Lens' ReturnaddressList (Maybe Text)
rllCountry
  = lens _rllCountry (\ s a -> s{_rllCountry = a})

-- | OAuth access token.
rllAccessToken :: Lens' ReturnaddressList (Maybe Text)
rllAccessToken
  = lens _rllAccessToken
      (\ s a -> s{_rllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rllUploadType :: Lens' ReturnaddressList (Maybe Text)
rllUploadType
  = lens _rllUploadType
      (\ s a -> s{_rllUploadType = a})

-- | The token returned by the previous request.
rllPageToken :: Lens' ReturnaddressList (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | The maximum number of addresses in the response, used for paging.
rllMaxResults :: Lens' ReturnaddressList (Maybe Word32)
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})
      . mapping _Coerce

-- | JSONP
rllCallback :: Lens' ReturnaddressList (Maybe Text)
rllCallback
  = lens _rllCallback (\ s a -> s{_rllCallback = a})

instance GoogleRequest ReturnaddressList where
        type Rs ReturnaddressList = ReturnaddressListResponse
        type Scopes ReturnaddressList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnaddressList'{..}
          = go _rllMerchantId _rllXgafv _rllUploadProtocol
              _rllCountry
              _rllAccessToken
              _rllUploadType
              _rllPageToken
              _rllMaxResults
              _rllCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnaddressListResource)
                      mempty
