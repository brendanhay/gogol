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
-- Module      : Network.Google.Resource.Analytics.Management.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all accounts to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountsList@.
module Network.Google.Resource.Analytics.Management.Accounts.List
    (
    -- * REST Resource
      ManagementAccountsListResource

    -- * Creating a Request
    , managementAccountsList'
    , ManagementAccountsList'

    -- * Request Lenses
    , malQuotaUser
    , malPrettyPrint
    , malUserIp
    , malKey
    , malOauthToken
    , malStartIndex
    , malMaxResults
    , malFields
    , malAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountsList@ which the
-- 'ManagementAccountsList'' request conforms to.
type ManagementAccountsListResource =
     "management" :>
       "accounts" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "start-index" Int32 :>
                     QueryParam "max-results" Int32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Accounts

-- | Lists all accounts to which the user has access.
--
-- /See:/ 'managementAccountsList'' smart constructor.
data ManagementAccountsList' = ManagementAccountsList'
    { _malQuotaUser   :: !(Maybe Text)
    , _malPrettyPrint :: !Bool
    , _malUserIp      :: !(Maybe Text)
    , _malKey         :: !(Maybe Text)
    , _malOauthToken  :: !(Maybe Text)
    , _malStartIndex  :: !(Maybe Int32)
    , _malMaxResults  :: !(Maybe Int32)
    , _malFields      :: !(Maybe Text)
    , _malAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malQuotaUser'
--
-- * 'malPrettyPrint'
--
-- * 'malUserIp'
--
-- * 'malKey'
--
-- * 'malOauthToken'
--
-- * 'malStartIndex'
--
-- * 'malMaxResults'
--
-- * 'malFields'
--
-- * 'malAlt'
managementAccountsList'
    :: ManagementAccountsList'
managementAccountsList' =
    ManagementAccountsList'
    { _malQuotaUser = Nothing
    , _malPrettyPrint = False
    , _malUserIp = Nothing
    , _malKey = Nothing
    , _malOauthToken = Nothing
    , _malStartIndex = Nothing
    , _malMaxResults = Nothing
    , _malFields = Nothing
    , _malAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
malQuotaUser :: Lens' ManagementAccountsList' (Maybe Text)
malQuotaUser
  = lens _malQuotaUser (\ s a -> s{_malQuotaUser = a})

-- | Returns response with indentations and line breaks.
malPrettyPrint :: Lens' ManagementAccountsList' Bool
malPrettyPrint
  = lens _malPrettyPrint
      (\ s a -> s{_malPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
malUserIp :: Lens' ManagementAccountsList' (Maybe Text)
malUserIp
  = lens _malUserIp (\ s a -> s{_malUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
malKey :: Lens' ManagementAccountsList' (Maybe Text)
malKey = lens _malKey (\ s a -> s{_malKey = a})

-- | OAuth 2.0 token for the current user.
malOauthToken :: Lens' ManagementAccountsList' (Maybe Text)
malOauthToken
  = lens _malOauthToken
      (\ s a -> s{_malOauthToken = a})

-- | An index of the first account to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
malStartIndex :: Lens' ManagementAccountsList' (Maybe Int32)
malStartIndex
  = lens _malStartIndex
      (\ s a -> s{_malStartIndex = a})

-- | The maximum number of accounts to include in this response.
malMaxResults :: Lens' ManagementAccountsList' (Maybe Int32)
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
malFields :: Lens' ManagementAccountsList' (Maybe Text)
malFields
  = lens _malFields (\ s a -> s{_malFields = a})

-- | Data format for the response.
malAlt :: Lens' ManagementAccountsList' Alt
malAlt = lens _malAlt (\ s a -> s{_malAlt = a})

instance GoogleRequest ManagementAccountsList' where
        type Rs ManagementAccountsList' = Accounts
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementAccountsList'{..}
          = go _malQuotaUser (Just _malPrettyPrint) _malUserIp
              _malKey
              _malOauthToken
              _malStartIndex
              _malMaxResults
              _malFields
              (Just _malAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementAccountsListResource)
                      r
                      u
