{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.DFAReporting.Countries.List
    (
    -- * REST Resource
      CountriesListResource

    -- * Creating a Request
    , countriesList'
    , CountriesList'

    -- * Request Lenses
    , couQuotaUser
    , couPrettyPrint
    , couUserIP
    , couProFileId
    , couKey
    , couOAuthToken
    , couFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCountriesList@ which the
-- 'CountriesList'' request conforms to.
type CountriesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "countries" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CountriesListResponse

-- | Retrieves a list of countries.
--
-- /See:/ 'countriesList'' smart constructor.
data CountriesList' = CountriesList'
    { _couQuotaUser   :: !(Maybe Text)
    , _couPrettyPrint :: !Bool
    , _couUserIP      :: !(Maybe Text)
    , _couProFileId   :: !Int64
    , _couKey         :: !(Maybe Key)
    , _couOAuthToken  :: !(Maybe OAuthToken)
    , _couFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CountriesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couQuotaUser'
--
-- * 'couPrettyPrint'
--
-- * 'couUserIP'
--
-- * 'couProFileId'
--
-- * 'couKey'
--
-- * 'couOAuthToken'
--
-- * 'couFields'
countriesList'
    :: Int64 -- ^ 'profileId'
    -> CountriesList'
countriesList' pCouProFileId_ =
    CountriesList'
    { _couQuotaUser = Nothing
    , _couPrettyPrint = True
    , _couUserIP = Nothing
    , _couProFileId = pCouProFileId_
    , _couKey = Nothing
    , _couOAuthToken = Nothing
    , _couFields = Nothing
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
couUserIP :: Lens' CountriesList' (Maybe Text)
couUserIP
  = lens _couUserIP (\ s a -> s{_couUserIP = a})

-- | User profile ID associated with this request.
couProFileId :: Lens' CountriesList' Int64
couProFileId
  = lens _couProFileId (\ s a -> s{_couProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
couKey :: Lens' CountriesList' (Maybe Key)
couKey = lens _couKey (\ s a -> s{_couKey = a})

-- | OAuth 2.0 token for the current user.
couOAuthToken :: Lens' CountriesList' (Maybe OAuthToken)
couOAuthToken
  = lens _couOAuthToken
      (\ s a -> s{_couOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
couFields :: Lens' CountriesList' (Maybe Text)
couFields
  = lens _couFields (\ s a -> s{_couFields = a})

instance GoogleAuth CountriesList' where
        authKey = couKey . _Just
        authToken = couOAuthToken . _Just

instance GoogleRequest CountriesList' where
        type Rs CountriesList' = CountriesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CountriesList'{..}
          = go _couProFileId _couQuotaUser
              (Just _couPrettyPrint)
              _couUserIP
              _couFields
              _couKey
              _couOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CountriesListResource)
                      r
                      u
