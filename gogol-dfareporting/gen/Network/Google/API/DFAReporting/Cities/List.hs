{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Cities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.cities.list@.
module Network.Google.API.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListAPI

    -- * Creating a Request
    , citiesList'
    , CitiesList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clRegionDartIds
    , clUserIp
    , clProfileId
    , clNamePrefix
    , clKey
    , clCountryDartIds
    , clDartIds
    , clOauthToken
    , clFields
    , clAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.cities.list which the
-- 'CitiesList'' request conforms to.
type CitiesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "cities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "regionDartIds" Int64 :>
                 QueryParam "userIp" Text :>
                   QueryParam "namePrefix" Text :>
                     QueryParam "key" Text :>
                       QueryParam "countryDartIds" Int64 :>
                         QueryParam "dartIds" Int64 :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList'' smart constructor.
data CitiesList' = CitiesList'
    { _clQuotaUser      :: !(Maybe Text)
    , _clPrettyPrint    :: !Bool
    , _clRegionDartIds  :: !(Maybe Int64)
    , _clUserIp         :: !(Maybe Text)
    , _clProfileId      :: !Int64
    , _clNamePrefix     :: !(Maybe Text)
    , _clKey            :: !(Maybe Text)
    , _clCountryDartIds :: !(Maybe Int64)
    , _clDartIds        :: !(Maybe Int64)
    , _clOauthToken     :: !(Maybe Text)
    , _clFields         :: !(Maybe Text)
    , _clAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clRegionDartIds'
--
-- * 'clUserIp'
--
-- * 'clProfileId'
--
-- * 'clNamePrefix'
--
-- * 'clKey'
--
-- * 'clCountryDartIds'
--
-- * 'clDartIds'
--
-- * 'clOauthToken'
--
-- * 'clFields'
--
-- * 'clAlt'
citiesList'
    :: Int64 -- ^ 'profileId'
    -> CitiesList'
citiesList' pClProfileId_ =
    CitiesList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clRegionDartIds = Nothing
    , _clUserIp = Nothing
    , _clProfileId = pClProfileId_
    , _clNamePrefix = Nothing
    , _clKey = Nothing
    , _clCountryDartIds = Nothing
    , _clDartIds = Nothing
    , _clOauthToken = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CitiesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CitiesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Select only cities from these regions.
clRegionDartIds :: Lens' CitiesList' (Maybe Int64)
clRegionDartIds
  = lens _clRegionDartIds
      (\ s a -> s{_clRegionDartIds = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CitiesList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | User profile ID associated with this request.
clProfileId :: Lens' CitiesList' Int64
clProfileId
  = lens _clProfileId (\ s a -> s{_clProfileId = a})

-- | Select only cities with names starting with this prefix.
clNamePrefix :: Lens' CitiesList' (Maybe Text)
clNamePrefix
  = lens _clNamePrefix (\ s a -> s{_clNamePrefix = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CitiesList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Select only cities from these countries.
clCountryDartIds :: Lens' CitiesList' (Maybe Int64)
clCountryDartIds
  = lens _clCountryDartIds
      (\ s a -> s{_clCountryDartIds = a})

-- | Select only cities with these DART IDs.
clDartIds :: Lens' CitiesList' (Maybe Int64)
clDartIds
  = lens _clDartIds (\ s a -> s{_clDartIds = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CitiesList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CitiesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CitiesList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CitiesList' where
        type Rs CitiesList' = CitiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CitiesList'{..}
          = go _clQuotaUser (Just _clPrettyPrint)
              _clRegionDartIds
              _clUserIp
              _clProfileId
              _clNamePrefix
              _clKey
              _clCountryDartIds
              _clDartIds
              _clOauthToken
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CitiesListAPI) r u
