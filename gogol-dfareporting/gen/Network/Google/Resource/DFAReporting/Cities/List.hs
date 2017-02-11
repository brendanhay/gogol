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
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.cities.list@.
module Network.Google.Resource.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListResource

    -- * Creating a Request
    , citiesList
    , CitiesList

    -- * Request Lenses
    , citRegionDartIds
    , citProFileId
    , citNamePrefix
    , citCountryDartIds
    , citDartIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.cities.list@ method which the
-- 'CitiesList' request conforms to.
type CitiesListResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "cities" :>
               QueryParams "regionDartIds" (Textual Int64) :>
                 QueryParam "namePrefix" Text :>
                   QueryParams "countryDartIds" (Textual Int64) :>
                     QueryParams "dartIds" (Textual Int64) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList' smart constructor.
data CitiesList = CitiesList'
    { _citRegionDartIds  :: !(Maybe [Textual Int64])
    , _citProFileId      :: !(Textual Int64)
    , _citNamePrefix     :: !(Maybe Text)
    , _citCountryDartIds :: !(Maybe [Textual Int64])
    , _citDartIds        :: !(Maybe [Textual Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citRegionDartIds'
--
-- * 'citProFileId'
--
-- * 'citNamePrefix'
--
-- * 'citCountryDartIds'
--
-- * 'citDartIds'
citiesList
    :: Int64 -- ^ 'citProFileId'
    -> CitiesList
citiesList pCitProFileId_ =
    CitiesList'
    { _citRegionDartIds = Nothing
    , _citProFileId = _Coerce # pCitProFileId_
    , _citNamePrefix = Nothing
    , _citCountryDartIds = Nothing
    , _citDartIds = Nothing
    }

-- | Select only cities from these regions.
citRegionDartIds :: Lens' CitiesList [Int64]
citRegionDartIds
  = lens _citRegionDartIds
      (\ s a -> s{_citRegionDartIds = a})
      . _Default
      . _Coerce

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

instance GoogleRequest CitiesList where
        type Rs CitiesList = CitiesListResponse
        type Scopes CitiesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CitiesList'{..}
          = go _citProFileId (_citRegionDartIds ^. _Default)
              _citNamePrefix
              (_citCountryDartIds ^. _Default)
              (_citDartIds ^. _Default)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy CitiesListResource)
                      mempty
