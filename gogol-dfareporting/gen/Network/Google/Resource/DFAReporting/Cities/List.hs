{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.DFAReporting.Cities.List
    (
    -- * REST Resource
      CitiesListResource

    -- * Creating a Request
    , citiesList'
    , CitiesList'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cRegionDartIds
    , cUserIp
    , cProfileId
    , cNamePrefix
    , cKey
    , cCountryDartIds
    , cDartIds
    , cOauthToken
    , cFields
    , cAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCitiesList@ which the
-- 'CitiesList'' request conforms to.
type CitiesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "cities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParams "regionDartIds" Int64 :>
                 QueryParam "userIp" Text :>
                   QueryParam "namePrefix" Text :>
                     QueryParam "key" Text :>
                       QueryParams "countryDartIds" Int64 :>
                         QueryParams "dartIds" Int64 :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'citiesList'' smart constructor.
data CitiesList' = CitiesList'
    { _cQuotaUser      :: !(Maybe Text)
    , _cPrettyPrint    :: !Bool
    , _cRegionDartIds  :: !(Maybe Int64)
    , _cUserIp         :: !(Maybe Text)
    , _cProfileId      :: !Int64
    , _cNamePrefix     :: !(Maybe Text)
    , _cKey            :: !(Maybe Text)
    , _cCountryDartIds :: !(Maybe Int64)
    , _cDartIds        :: !(Maybe Int64)
    , _cOauthToken     :: !(Maybe Text)
    , _cFields         :: !(Maybe Text)
    , _cAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cRegionDartIds'
--
-- * 'cUserIp'
--
-- * 'cProfileId'
--
-- * 'cNamePrefix'
--
-- * 'cKey'
--
-- * 'cCountryDartIds'
--
-- * 'cDartIds'
--
-- * 'cOauthToken'
--
-- * 'cFields'
--
-- * 'cAlt'
citiesList'
    :: Int64 -- ^ 'profileId'
    -> CitiesList'
citiesList' pCProfileId_ =
    CitiesList'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cRegionDartIds = Nothing
    , _cUserIp = Nothing
    , _cProfileId = pCProfileId_
    , _cNamePrefix = Nothing
    , _cKey = Nothing
    , _cCountryDartIds = Nothing
    , _cDartIds = Nothing
    , _cOauthToken = Nothing
    , _cFields = Nothing
    , _cAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CitiesList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CitiesList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | Select only cities from these regions.
cRegionDartIds :: Lens' CitiesList' (Maybe Int64)
cRegionDartIds
  = lens _cRegionDartIds
      (\ s a -> s{_cRegionDartIds = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' CitiesList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | User profile ID associated with this request.
cProfileId :: Lens' CitiesList' Int64
cProfileId
  = lens _cProfileId (\ s a -> s{_cProfileId = a})

-- | Select only cities with names starting with this prefix.
cNamePrefix :: Lens' CitiesList' (Maybe Text)
cNamePrefix
  = lens _cNamePrefix (\ s a -> s{_cNamePrefix = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CitiesList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | Select only cities from these countries.
cCountryDartIds :: Lens' CitiesList' (Maybe Int64)
cCountryDartIds
  = lens _cCountryDartIds
      (\ s a -> s{_cCountryDartIds = a})

-- | Select only cities with these DART IDs.
cDartIds :: Lens' CitiesList' (Maybe Int64)
cDartIds = lens _cDartIds (\ s a -> s{_cDartIds = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' CitiesList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CitiesList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' CitiesList' Alt
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest CitiesList' where
        type Rs CitiesList' = CitiesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CitiesList'{..}
          = go _cQuotaUser (Just _cPrettyPrint) _cRegionDartIds
              _cUserIp
              _cProfileId
              _cNamePrefix
              _cKey
              _cCountryDartIds
              _cDartIds
              _cOauthToken
              _cFields
              (Just _cAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CitiesListResource)
                      r
                      u
