{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Countries.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of countries.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCountriesList@.
module DFAReporting.Countries.List
    (
    -- * REST Resource
      CountriesListAPI

    -- * Creating a Request
    , countriesList
    , CountriesList

    -- * Request Lenses
    , couQuotaUser
    , couPrettyPrint
    , couUserIp
    , couProfileId
    , couKey
    , couOauthToken
    , couFields
    , couAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCountriesList@ which the
-- 'CountriesList' request conforms to.
type CountriesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "countries" :> Get '[JSON] CountriesListResponse

-- | Retrieves a list of countries.
--
-- /See:/ 'countriesList' smart constructor.
data CountriesList = CountriesList
    { _couQuotaUser   :: !(Maybe Text)
    , _couPrettyPrint :: !Bool
    , _couUserIp      :: !(Maybe Text)
    , _couProfileId   :: !Int64
    , _couKey         :: !(Maybe Text)
    , _couOauthToken  :: !(Maybe Text)
    , _couFields      :: !(Maybe Text)
    , _couAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couQuotaUser'
--
-- * 'couPrettyPrint'
--
-- * 'couUserIp'
--
-- * 'couProfileId'
--
-- * 'couKey'
--
-- * 'couOauthToken'
--
-- * 'couFields'
--
-- * 'couAlt'
countriesList
    :: Int64 -- ^ 'profileId'
    -> CountriesList
countriesList pCouProfileId_ =
    CountriesList
    { _couQuotaUser = Nothing
    , _couPrettyPrint = True
    , _couUserIp = Nothing
    , _couProfileId = pCouProfileId_
    , _couKey = Nothing
    , _couOauthToken = Nothing
    , _couFields = Nothing
    , _couAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
couQuotaUser :: Lens' CountriesList' (Maybe Text)
couQuotaUser
  = lens _couQuotaUser (\ s a -> s{_couQuotaUser = a})

-- | Returns response with indentations and line breaks.
couPrettyPrint :: Lens' CountriesList' Bool
couPrettyPrint
  = lens _couPrettyPrint
      (\ s a -> s{_couPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
couUserIp :: Lens' CountriesList' (Maybe Text)
couUserIp
  = lens _couUserIp (\ s a -> s{_couUserIp = a})

-- | User profile ID associated with this request.
couProfileId :: Lens' CountriesList' Int64
couProfileId
  = lens _couProfileId (\ s a -> s{_couProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
couKey :: Lens' CountriesList' (Maybe Text)
couKey = lens _couKey (\ s a -> s{_couKey = a})

-- | OAuth 2.0 token for the current user.
couOauthToken :: Lens' CountriesList' (Maybe Text)
couOauthToken
  = lens _couOauthToken
      (\ s a -> s{_couOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
couFields :: Lens' CountriesList' (Maybe Text)
couFields
  = lens _couFields (\ s a -> s{_couFields = a})

-- | Data format for the response.
couAlt :: Lens' CountriesList' Text
couAlt = lens _couAlt (\ s a -> s{_couAlt = a})

instance GoogleRequest CountriesList' where
        type Rs CountriesList' = CountriesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CountriesList{..}
          = go _couQuotaUser _couPrettyPrint _couUserIp
              _couProfileId
              _couKey
              _couOauthToken
              _couFields
              _couAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CountriesListAPI) r
                      u
