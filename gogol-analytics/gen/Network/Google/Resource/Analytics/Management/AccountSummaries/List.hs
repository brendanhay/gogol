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
-- Module      : Network.Google.Resource.Analytics.Management.AccountSummaries.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementAccountSummariesList@.
module Network.Google.Resource.Analytics.Management.AccountSummaries.List
    (
    -- * REST Resource
      ManagementAccountSummariesListResource

    -- * Creating a Request
    , managementAccountSummariesList'
    , ManagementAccountSummariesList'

    -- * Request Lenses
    , maslQuotaUser
    , maslPrettyPrint
    , maslUserIP
    , maslKey
    , maslOAuthToken
    , maslStartIndex
    , maslMaxResults
    , maslFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountSummariesList@ method which the
-- 'ManagementAccountSummariesList'' request conforms to.
type ManagementAccountSummariesListResource =
     "management" :>
       "accountSummaries" :>
         QueryParam "start-index" Int32 :>
           QueryParam "max-results" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountSummaries

-- | Lists account summaries (lightweight tree comprised of
-- accounts\/properties\/profiles) to which the user has access.
--
-- /See:/ 'managementAccountSummariesList'' smart constructor.
data ManagementAccountSummariesList' = ManagementAccountSummariesList'
    { _maslQuotaUser   :: !(Maybe Text)
    , _maslPrettyPrint :: !Bool
    , _maslUserIP      :: !(Maybe Text)
    , _maslKey         :: !(Maybe AuthKey)
    , _maslOAuthToken  :: !(Maybe OAuthToken)
    , _maslStartIndex  :: !(Maybe Int32)
    , _maslMaxResults  :: !(Maybe Int32)
    , _maslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountSummariesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maslQuotaUser'
--
-- * 'maslPrettyPrint'
--
-- * 'maslUserIP'
--
-- * 'maslKey'
--
-- * 'maslOAuthToken'
--
-- * 'maslStartIndex'
--
-- * 'maslMaxResults'
--
-- * 'maslFields'
managementAccountSummariesList'
    :: ManagementAccountSummariesList'
managementAccountSummariesList' =
    ManagementAccountSummariesList'
    { _maslQuotaUser = Nothing
    , _maslPrettyPrint = False
    , _maslUserIP = Nothing
    , _maslKey = Nothing
    , _maslOAuthToken = Nothing
    , _maslStartIndex = Nothing
    , _maslMaxResults = Nothing
    , _maslFields = Nothing
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
maslUserIP :: Lens' ManagementAccountSummariesList' (Maybe Text)
maslUserIP
  = lens _maslUserIP (\ s a -> s{_maslUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maslKey :: Lens' ManagementAccountSummariesList' (Maybe AuthKey)
maslKey = lens _maslKey (\ s a -> s{_maslKey = a})

-- | OAuth 2.0 token for the current user.
maslOAuthToken :: Lens' ManagementAccountSummariesList' (Maybe OAuthToken)
maslOAuthToken
  = lens _maslOAuthToken
      (\ s a -> s{_maslOAuthToken = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
maslStartIndex :: Lens' ManagementAccountSummariesList' (Maybe Int32)
maslStartIndex
  = lens _maslStartIndex
      (\ s a -> s{_maslStartIndex = a})

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

instance GoogleAuth ManagementAccountSummariesList'
         where
        _AuthKey = maslKey . _Just
        _AuthToken = maslOAuthToken . _Just

instance GoogleRequest
         ManagementAccountSummariesList' where
        type Rs ManagementAccountSummariesList' =
             AccountSummaries
        request = requestWith analyticsRequest
        requestWith rq ManagementAccountSummariesList'{..}
          = go _maslStartIndex _maslMaxResults _maslQuotaUser
              (Just _maslPrettyPrint)
              _maslUserIP
              _maslFields
              _maslKey
              _maslOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementAccountSummariesListResource)
                      rq
