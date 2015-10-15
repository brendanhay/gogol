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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCitiesList@.
module Network.Google.Resource.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListResource

    -- * Creating a Request
    , citiesList'
    , CitiesList'

    -- * Request Lenses
    , cRegionDartIds
    , cProFileId
    , cNamePrefix
    , cCountryDartIds
    , cDartIds
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCitiesList@ method which the
-- 'CitiesList'' request conforms to.
type CitiesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "cities" :>
           QueryParams "regionDartIds" Int64 :>
             QueryParam "namePrefix" Text :>
               QueryParams "countryDartIds" Int64 :>
                 QueryParams "dartIds" Int64 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList'' smart constructor.
data CitiesList' = CitiesList'
    { _cRegionDartIds  :: !(Maybe [Int64])
    , _cProFileId      :: !Int64
    , _cNamePrefix     :: !(Maybe Text)
    , _cCountryDartIds :: !(Maybe [Int64])
    , _cDartIds        :: !(Maybe [Int64])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRegionDartIds'
--
-- * 'cProFileId'
--
-- * 'cNamePrefix'
--
-- * 'cCountryDartIds'
--
-- * 'cDartIds'
citiesList'
    :: Int64 -- ^ 'profileId'
    -> CitiesList'
citiesList' pCProFileId_ =
    CitiesList'
    { _cRegionDartIds = Nothing
    , _cProFileId = pCProFileId_
    , _cNamePrefix = Nothing
    , _cCountryDartIds = Nothing
    , _cDartIds = Nothing
    }

-- | Select only cities from these regions.
cRegionDartIds :: Lens' CitiesList' [Int64]
cRegionDartIds
  = lens _cRegionDartIds
      (\ s a -> s{_cRegionDartIds = a})
      . _Default
      . _Coerce

-- | User profile ID associated with this request.
cProFileId :: Lens' CitiesList' Int64
cProFileId
  = lens _cProFileId (\ s a -> s{_cProFileId = a})

-- | Select only cities with names starting with this prefix.
cNamePrefix :: Lens' CitiesList' (Maybe Text)
cNamePrefix
  = lens _cNamePrefix (\ s a -> s{_cNamePrefix = a})

-- | Select only cities from these countries.
cCountryDartIds :: Lens' CitiesList' [Int64]
cCountryDartIds
  = lens _cCountryDartIds
      (\ s a -> s{_cCountryDartIds = a})
      . _Default
      . _Coerce

-- | Select only cities with these DART IDs.
cDartIds :: Lens' CitiesList' [Int64]
cDartIds
  = lens _cDartIds (\ s a -> s{_cDartIds = a}) .
      _Default
      . _Coerce

instance GoogleRequest CitiesList' where
        type Rs CitiesList' = CitiesListResponse
        requestClient CitiesList'{..}
          = go _cProFileId (_cRegionDartIds ^. _Default)
              _cNamePrefix
              (_cCountryDartIds ^. _Default)
              (_cDartIds ^. _Default)
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy CitiesListResource)
                      mempty
