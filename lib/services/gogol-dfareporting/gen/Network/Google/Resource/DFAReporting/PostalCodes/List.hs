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
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of postal codes.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.postalCodes.list@.
module Network.Google.Resource.DFAReporting.PostalCodes.List
    (
    -- * REST Resource
      PostalCodesListResource

    -- * Creating a Request
    , postalCodesList
    , PostalCodesList

    -- * Request Lenses
    , pclXgafv
    , pclUploadProtocol
    , pclAccessToken
    , pclUploadType
    , pclProFileId
    , pclCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.postalCodes.list@ method which the
-- 'PostalCodesList' request conforms to.
type PostalCodesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "postalCodes" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PostalCodesListResponse

-- | Retrieves a list of postal codes.
--
-- /See:/ 'postalCodesList' smart constructor.
data PostalCodesList =
  PostalCodesList'
    { _pclXgafv :: !(Maybe Xgafv)
    , _pclUploadProtocol :: !(Maybe Text)
    , _pclAccessToken :: !(Maybe Text)
    , _pclUploadType :: !(Maybe Text)
    , _pclProFileId :: !(Textual Int64)
    , _pclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostalCodesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclXgafv'
--
-- * 'pclUploadProtocol'
--
-- * 'pclAccessToken'
--
-- * 'pclUploadType'
--
-- * 'pclProFileId'
--
-- * 'pclCallback'
postalCodesList
    :: Int64 -- ^ 'pclProFileId'
    -> PostalCodesList
postalCodesList pPclProFileId_ =
  PostalCodesList'
    { _pclXgafv = Nothing
    , _pclUploadProtocol = Nothing
    , _pclAccessToken = Nothing
    , _pclUploadType = Nothing
    , _pclProFileId = _Coerce # pPclProFileId_
    , _pclCallback = Nothing
    }


-- | V1 error format.
pclXgafv :: Lens' PostalCodesList (Maybe Xgafv)
pclXgafv = lens _pclXgafv (\ s a -> s{_pclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pclUploadProtocol :: Lens' PostalCodesList (Maybe Text)
pclUploadProtocol
  = lens _pclUploadProtocol
      (\ s a -> s{_pclUploadProtocol = a})

-- | OAuth access token.
pclAccessToken :: Lens' PostalCodesList (Maybe Text)
pclAccessToken
  = lens _pclAccessToken
      (\ s a -> s{_pclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pclUploadType :: Lens' PostalCodesList (Maybe Text)
pclUploadType
  = lens _pclUploadType
      (\ s a -> s{_pclUploadType = a})

-- | User profile ID associated with this request.
pclProFileId :: Lens' PostalCodesList Int64
pclProFileId
  = lens _pclProFileId (\ s a -> s{_pclProFileId = a})
      . _Coerce

-- | JSONP
pclCallback :: Lens' PostalCodesList (Maybe Text)
pclCallback
  = lens _pclCallback (\ s a -> s{_pclCallback = a})

instance GoogleRequest PostalCodesList where
        type Rs PostalCodesList = PostalCodesListResponse
        type Scopes PostalCodesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PostalCodesList'{..}
          = go _pclProFileId _pclXgafv _pclUploadProtocol
              _pclAccessToken
              _pclUploadType
              _pclCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PostalCodesListResource)
                      mempty
