{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Countries.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one country by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.countries.get@.
module Network.Google.API.DFAReporting.Countries.Get
    (
    -- * REST Resource
      CountriesGetAPI

    -- * Creating a Request
    , countriesGet'
    , CountriesGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgProfileId
    , cgKey
    , cgOauthToken
    , cgDartId
    , cgFields
    , cgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.countries.get which the
-- 'CountriesGet'' request conforms to.
type CountriesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "countries" :>
           Capture "dartId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Country

-- | Gets one country by ID.
--
-- /See:/ 'countriesGet'' smart constructor.
data CountriesGet' = CountriesGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIp      :: !(Maybe Text)
    , _cgProfileId   :: !Int64
    , _cgKey         :: !(Maybe Text)
    , _cgOauthToken  :: !(Maybe Text)
    , _cgDartId      :: !Int64
    , _cgFields      :: !(Maybe Text)
    , _cgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgProfileId'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgDartId'
--
-- * 'cgFields'
--
-- * 'cgAlt'
countriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'dartId'
    -> CountriesGet'
countriesGet' pCgProfileId_ pCgDartId_ =
    CountriesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgProfileId = pCgProfileId_
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgDartId = pCgDartId_
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CountriesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CountriesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CountriesGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | User profile ID associated with this request.
cgProfileId :: Lens' CountriesGet' Int64
cgProfileId
  = lens _cgProfileId (\ s a -> s{_cgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CountriesGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CountriesGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Country DART ID.
cgDartId :: Lens' CountriesGet' Int64
cgDartId = lens _cgDartId (\ s a -> s{_cgDartId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CountriesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CountriesGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CountriesGet' where
        type Rs CountriesGet' = Country
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CountriesGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgProfileId
              _cgKey
              _cgOauthToken
              _cgDartId
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CountriesGetAPI) r
                      u
