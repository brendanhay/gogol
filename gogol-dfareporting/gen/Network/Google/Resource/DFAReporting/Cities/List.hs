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
-- Module      : Network.Google.Resource.DFAReporting.Cities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of cities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.cities.list@.
module Network.Google.Resource.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListResource

    -- * Creating a Request
    , citiesList
    , CitiesList

    -- * Request Lenses
    , citXgafv
    , citUploadProtocol
    , citRegionDartIds
    , citAccessToken
    , citUploadType
    , citProFileId
    , citNamePrefix
    , citCountryDartIds
    , citDartIds
    , citCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.cities.list@ method which the
-- 'CitiesList' request conforms to.
type CitiesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "cities" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParams "regionDartIds" (Textual Int64) :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "namePrefix" Text :>
                           QueryParams "countryDartIds" (Textual Int64) :>
                             QueryParams "dartIds" (Textual Int64) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList' smart constructor.
data CitiesList =
  CitiesList'
    { _citXgafv :: !(Maybe Xgafv)
    , _citUploadProtocol :: !(Maybe Text)
    , _citRegionDartIds :: !(Maybe [Textual Int64])
    , _citAccessToken :: !(Maybe Text)
    , _citUploadType :: !(Maybe Text)
    , _citProFileId :: !(Textual Int64)
    , _citNamePrefix :: !(Maybe Text)
    , _citCountryDartIds :: !(Maybe [Textual Int64])
    , _citDartIds :: !(Maybe [Textual Int64])
    , _citCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citXgafv'
--
-- * 'citUploadProtocol'
--
-- * 'citRegionDartIds'
--
-- * 'citAccessToken'
--
-- * 'citUploadType'
--
-- * 'citProFileId'
--
-- * 'citNamePrefix'
--
-- * 'citCountryDartIds'
--
-- * 'citDartIds'
--
-- * 'citCallback'
citiesList
    :: Int64 -- ^ 'citProFileId'
    -> CitiesList
citiesList pCitProFileId_ =
  CitiesList'
    { _citXgafv = Nothing
    , _citUploadProtocol = Nothing
    , _citRegionDartIds = Nothing
    , _citAccessToken = Nothing
    , _citUploadType = Nothing
    , _citProFileId = _Coerce # pCitProFileId_
    , _citNamePrefix = Nothing
    , _citCountryDartIds = Nothing
    , _citDartIds = Nothing
    , _citCallback = Nothing
    }


-- | V1 error format.
citXgafv :: Lens' CitiesList (Maybe Xgafv)
citXgafv = lens _citXgafv (\ s a -> s{_citXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
citUploadProtocol :: Lens' CitiesList (Maybe Text)
citUploadProtocol
  = lens _citUploadProtocol
      (\ s a -> s{_citUploadProtocol = a})

-- | Select only cities from these regions.
citRegionDartIds :: Lens' CitiesList [Int64]
citRegionDartIds
  = lens _citRegionDartIds
      (\ s a -> s{_citRegionDartIds = a})
      . _Default
      . _Coerce

-- | OAuth access token.
citAccessToken :: Lens' CitiesList (Maybe Text)
citAccessToken
  = lens _citAccessToken
      (\ s a -> s{_citAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
citUploadType :: Lens' CitiesList (Maybe Text)
citUploadType
  = lens _citUploadType
      (\ s a -> s{_citUploadType = a})

-- | User profile ID associated with this request.
citProFileId :: Lens' CitiesList Int64
citProFileId
  = lens _citProFileId (\ s a -> s{_citProFileId = a})
      . _Coerce

-- | Select only cities with names starting with this prefix.
citNamePrefix :: Lens' CitiesList (Maybe Text)
citNamePrefix
  = lens _citNamePrefix
      (\ s a -> s{_citNamePrefix = a})

-- | Select only cities from these countries.
citCountryDartIds :: Lens' CitiesList [Int64]
citCountryDartIds
  = lens _citCountryDartIds
      (\ s a -> s{_citCountryDartIds = a})
      . _Default
      . _Coerce

-- | Select only cities with these DART IDs.
citDartIds :: Lens' CitiesList [Int64]
citDartIds
  = lens _citDartIds (\ s a -> s{_citDartIds = a}) .
      _Default
      . _Coerce

-- | JSONP
citCallback :: Lens' CitiesList (Maybe Text)
citCallback
  = lens _citCallback (\ s a -> s{_citCallback = a})

instance GoogleRequest CitiesList where
        type Rs CitiesList = CitiesListResponse
        type Scopes CitiesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CitiesList'{..}
          = go _citProFileId _citXgafv _citUploadProtocol
              (_citRegionDartIds ^. _Default)
              _citAccessToken
              _citUploadType
              _citNamePrefix
              (_citCountryDartIds ^. _Default)
              (_citDartIds ^. _Default)
              _citCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CitiesListResource)
                      mempty
