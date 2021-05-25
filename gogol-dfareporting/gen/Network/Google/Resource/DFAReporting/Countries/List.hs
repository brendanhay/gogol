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
-- Module      : Network.Google.Resource.DFAReporting.Countries.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of countries.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.countries.list@.
module Network.Google.Resource.DFAReporting.Countries.List
    (
    -- * REST Resource
      CountriesListResource

    -- * Creating a Request
    , countriesList
    , CountriesList

    -- * Request Lenses
    , couXgafv
    , couUploadProtocol
    , couAccessToken
    , couUploadType
    , couProFileId
    , couCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.countries.list@ method which the
-- 'CountriesList' request conforms to.
type CountriesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "countries" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CountriesListResponse

-- | Retrieves a list of countries.
--
-- /See:/ 'countriesList' smart constructor.
data CountriesList =
  CountriesList'
    { _couXgafv :: !(Maybe Xgafv)
    , _couUploadProtocol :: !(Maybe Text)
    , _couAccessToken :: !(Maybe Text)
    , _couUploadType :: !(Maybe Text)
    , _couProFileId :: !(Textual Int64)
    , _couCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CountriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couXgafv'
--
-- * 'couUploadProtocol'
--
-- * 'couAccessToken'
--
-- * 'couUploadType'
--
-- * 'couProFileId'
--
-- * 'couCallback'
countriesList
    :: Int64 -- ^ 'couProFileId'
    -> CountriesList
countriesList pCouProFileId_ =
  CountriesList'
    { _couXgafv = Nothing
    , _couUploadProtocol = Nothing
    , _couAccessToken = Nothing
    , _couUploadType = Nothing
    , _couProFileId = _Coerce # pCouProFileId_
    , _couCallback = Nothing
    }


-- | V1 error format.
couXgafv :: Lens' CountriesList (Maybe Xgafv)
couXgafv = lens _couXgafv (\ s a -> s{_couXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
couUploadProtocol :: Lens' CountriesList (Maybe Text)
couUploadProtocol
  = lens _couUploadProtocol
      (\ s a -> s{_couUploadProtocol = a})

-- | OAuth access token.
couAccessToken :: Lens' CountriesList (Maybe Text)
couAccessToken
  = lens _couAccessToken
      (\ s a -> s{_couAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
couUploadType :: Lens' CountriesList (Maybe Text)
couUploadType
  = lens _couUploadType
      (\ s a -> s{_couUploadType = a})

-- | User profile ID associated with this request.
couProFileId :: Lens' CountriesList Int64
couProFileId
  = lens _couProFileId (\ s a -> s{_couProFileId = a})
      . _Coerce

-- | JSONP
couCallback :: Lens' CountriesList (Maybe Text)
couCallback
  = lens _couCallback (\ s a -> s{_couCallback = a})

instance GoogleRequest CountriesList where
        type Rs CountriesList = CountriesListResponse
        type Scopes CountriesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CountriesList'{..}
          = go _couProFileId _couXgafv _couUploadProtocol
              _couAccessToken
              _couUploadType
              _couCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CountriesListResource)
                      mempty
