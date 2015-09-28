{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.AccountSummaries.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountSummaries.list@.
module Network.Google.API.Analytics.Management.AccountSummaries.List
    (
    -- * REST Resource
      ManagementAccountSummariesListAPI

    -- * Creating a Request
    , managementAccountSummariesList'
    , ManagementAccountSummariesList'

    -- * Request Lenses
    , maslQuotaUser
    , maslPrettyPrint
    , maslUserIp
    , maslKey
    , maslOauthToken
    , maslStartIndex
    , maslMaxResults
    , maslFields
    , maslAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.accountSummaries.list which the
-- 'ManagementAccountSummariesList'' request conforms to.
type ManagementAccountSummariesListAPI =
     "management" :>
       "accountSummaries" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "start-index" Nat :>
                     QueryParam "max-results" Int32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AccountSummaries

-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ 'managementAccountSummariesList'' smart constructor.
data ManagementAccountSummariesList' = ManagementAccountSummariesList'
    { _maslQuotaUser   :: !(Maybe Text)
    , _maslPrettyPrint :: !Bool
    , _maslUserIp      :: !(Maybe Text)
    , _maslKey         :: !(Maybe Text)
    , _maslOauthToken  :: !(Maybe Text)
    , _maslStartIndex  :: !(Maybe Nat)
    , _maslMaxResults  :: !(Maybe Int32)
    , _maslFields      :: !(Maybe Text)
    , _maslAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountSummariesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maslQuotaUser'
--
-- * 'maslPrettyPrint'
--
-- * 'maslUserIp'
--
-- * 'maslKey'
--
-- * 'maslOauthToken'
--
-- * 'maslStartIndex'
--
-- * 'maslMaxResults'
--
-- * 'maslFields'
--
-- * 'maslAlt'
managementAccountSummariesList'
    :: ManagementAccountSummariesList'
managementAccountSummariesList' =
    ManagementAccountSummariesList'
    { _maslQuotaUser = Nothing
    , _maslPrettyPrint = False
    , _maslUserIp = Nothing
    , _maslKey = Nothing
    , _maslOauthToken = Nothing
    , _maslStartIndex = Nothing
    , _maslMaxResults = Nothing
    , _maslFields = Nothing
    , _maslAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
maslQuotaUser :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslQuotaUser
  = lens _maslQuotaUser
      (\ s a -> s{_maslQuotaUser = a})

-- | Returns response with indentations and line breaks.
maslPrettyPrint :: Lens' ManagementAccountSummariesList' Bool
maslPrettyPrint
  = lens _maslPrettyPrint
      (\ s a -> s{_maslPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
maslUserIp :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslUserIp
  = lens _maslUserIp (\ s a -> s{_maslUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maslKey :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslKey = lens _maslKey (\ s a -> s{_maslKey = a})

-- | OAuth 2.0 token for the current user.
maslOauthToken :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslOauthToken
  = lens _maslOauthToken
      (\ s a -> s{_maslOauthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
maslStartIndex :: Lens' ManagementAccountSummariesList' (Maybe Natural)
maslStartIndex
  = lens _maslStartIndex
      (\ s a -> s{_maslStartIndex = a})
      . mapping _Nat

-- | The maximum number of account summaries to include in this response,
-- where the largest acceptable value is 1000.
maslMaxResults :: Lens' ManagementAccountSummariesList' (Maybe Int32)
maslMaxResults
  = lens _maslMaxResults
      (\ s a -> s{_maslMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
maslFields :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslFields
  = lens _maslFields (\ s a -> s{_maslFields = a})

-- | Data format for the response.
maslAlt :: Lens' ManagementAccountSummariesList' Alt
maslAlt = lens _maslAlt (\ s a -> s{_maslAlt = a})

instance GoogleRequest
         ManagementAccountSummariesList' where
        type Rs ManagementAccountSummariesList' =
             AccountSummaries
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementAccountSummariesList'{..}
          = go _maslQuotaUser (Just _maslPrettyPrint)
              _maslUserIp
              _maslKey
              _maslOauthToken
              _maslStartIndex
              _maslMaxResults
              _maslFields
              (Just _maslAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementAccountSummariesListAPI)
                      r
                      u
