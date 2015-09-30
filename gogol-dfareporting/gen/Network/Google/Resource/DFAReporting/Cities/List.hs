{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListAPI

    -- * Creating a Request
    , citiesList
    , CitiesList

    -- * Request Lenses
    , citQuotaUser
    , citPrettyPrint
    , citRegionDartIds
    , citUserIp
    , citProfileId
    , citNamePrefix
    , citKey
    , citCountryDartIds
    , citDartIds
    , citOauthToken
    , citFields
    , citAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCitiesList@ which the
-- 'CitiesList' request conforms to.
type CitiesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "cities" :>
           QueryParams "regionDartIds" Int64 :>
             QueryParam "namePrefix" Text :>
               QueryParams "countryDartIds" Int64 :>
                 QueryParams "dartIds" Int64 :>
                   Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList' smart constructor.
data CitiesList = CitiesList
    { _citQuotaUser      :: !(Maybe Text)
    , _citPrettyPrint    :: !Bool
    , _citRegionDartIds  :: !(Maybe Int64)
    , _citUserIp         :: !(Maybe Text)
    , _citProfileId      :: !Int64
    , _citNamePrefix     :: !(Maybe Text)
    , _citKey            :: !(Maybe Text)
    , _citCountryDartIds :: !(Maybe Int64)
    , _citDartIds        :: !(Maybe Int64)
    , _citOauthToken     :: !(Maybe Text)
    , _citFields         :: !(Maybe Text)
    , _citAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citQuotaUser'
--
-- * 'citPrettyPrint'
--
-- * 'citRegionDartIds'
--
-- * 'citUserIp'
--
-- * 'citProfileId'
--
-- * 'citNamePrefix'
--
-- * 'citKey'
--
-- * 'citCountryDartIds'
--
-- * 'citDartIds'
--
-- * 'citOauthToken'
--
-- * 'citFields'
--
-- * 'citAlt'
citiesList
    :: Int64 -- ^ 'profileId'
    -> CitiesList
citiesList pCitProfileId_ =
    CitiesList
    { _citQuotaUser = Nothing
    , _citPrettyPrint = True
    , _citRegionDartIds = Nothing
    , _citUserIp = Nothing
    , _citProfileId = pCitProfileId_
    , _citNamePrefix = Nothing
    , _citKey = Nothing
    , _citCountryDartIds = Nothing
    , _citDartIds = Nothing
    , _citOauthToken = Nothing
    , _citFields = Nothing
    , _citAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
citQuotaUser :: Lens' CitiesList' (Maybe Text)
citQuotaUser
  = lens _citQuotaUser (\ s a -> s{_citQuotaUser = a})

-- | Returns response with indentations and line breaks.
citPrettyPrint :: Lens' CitiesList' Bool
citPrettyPrint
  = lens _citPrettyPrint
      (\ s a -> s{_citPrettyPrint = a})

-- | Select only cities from these regions.
citRegionDartIds :: Lens' CitiesList' (Maybe Int64)
citRegionDartIds
  = lens _citRegionDartIds
      (\ s a -> s{_citRegionDartIds = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
citUserIp :: Lens' CitiesList' (Maybe Text)
citUserIp
  = lens _citUserIp (\ s a -> s{_citUserIp = a})

-- | User profile ID associated with this request.
citProfileId :: Lens' CitiesList' Int64
citProfileId
  = lens _citProfileId (\ s a -> s{_citProfileId = a})

-- | Select only cities with names starting with this prefix.
citNamePrefix :: Lens' CitiesList' (Maybe Text)
citNamePrefix
  = lens _citNamePrefix
      (\ s a -> s{_citNamePrefix = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
citKey :: Lens' CitiesList' (Maybe Text)
citKey = lens _citKey (\ s a -> s{_citKey = a})

-- | Select only cities from these countries.
citCountryDartIds :: Lens' CitiesList' (Maybe Int64)
citCountryDartIds
  = lens _citCountryDartIds
      (\ s a -> s{_citCountryDartIds = a})

-- | Select only cities with these DART IDs.
citDartIds :: Lens' CitiesList' (Maybe Int64)
citDartIds
  = lens _citDartIds (\ s a -> s{_citDartIds = a})

-- | OAuth 2.0 token for the current user.
citOauthToken :: Lens' CitiesList' (Maybe Text)
citOauthToken
  = lens _citOauthToken
      (\ s a -> s{_citOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
citFields :: Lens' CitiesList' (Maybe Text)
citFields
  = lens _citFields (\ s a -> s{_citFields = a})

-- | Data format for the response.
citAlt :: Lens' CitiesList' Text
citAlt = lens _citAlt (\ s a -> s{_citAlt = a})

instance GoogleRequest CitiesList' where
        type Rs CitiesList' = CitiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CitiesList{..}
          = go _citQuotaUser _citPrettyPrint _citRegionDartIds
              _citUserIp
              _citProfileId
              _citNamePrefix
              _citKey
              _citCountryDartIds
              _citDartIds
              _citOauthToken
              _citFields
              _citAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CitiesListAPI) r u
