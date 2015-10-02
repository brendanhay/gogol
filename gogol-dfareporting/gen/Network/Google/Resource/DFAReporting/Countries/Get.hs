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
-- Module      : Network.Google.Resource.DFAReporting.Countries.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one country by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCountriesGet@.
module Network.Google.Resource.DFAReporting.Countries.Get
    (
    -- * REST Resource
      CountriesGetResource

    -- * Creating a Request
    , countriesGet'
    , CountriesGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgProfileId
    , cgKey
    , cgOAuthToken
    , cgDartId
    , cgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCountriesGet@ which the
-- 'CountriesGet'' request conforms to.
type CountriesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "countries" :>
           Capture "dartId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Country

-- | Gets one country by ID.
--
-- /See:/ 'countriesGet'' smart constructor.
data CountriesGet' = CountriesGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgProfileId   :: !Int64
    , _cgKey         :: !(Maybe Key)
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgDartId      :: !Int64
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgProfileId'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgDartId'
--
-- * 'cgFields'
countriesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'dartId'
    -> CountriesGet'
countriesGet' pCgProfileId_ pCgDartId_ =
    CountriesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgProfileId = pCgProfileId_
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgDartId = pCgDartId_
    , _cgFields = Nothing
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
cgUserIP :: Lens' CountriesGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | User profile ID associated with this request.
cgProfileId :: Lens' CountriesGet' Int64
cgProfileId
  = lens _cgProfileId (\ s a -> s{_cgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CountriesGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CountriesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Country DART ID.
cgDartId :: Lens' CountriesGet' Int64
cgDartId = lens _cgDartId (\ s a -> s{_cgDartId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CountriesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CountriesGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CountriesGet' where
        type Rs CountriesGet' = Country
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CountriesGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIP
              _cgProfileId
              _cgKey
              _cgOAuthToken
              _cgDartId
              _cgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CountriesGetResource)
                      r
                      u
