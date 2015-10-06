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
    , malUserIP
    , malKey
    , malOAuthToken
    , malStartIndex
    , malMaxResults
    , malFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementAccountsList@ which the
-- 'ManagementAccountsList'' request conforms to.
type ManagementAccountsListResource =
     "management" :>
       "accounts" :>
         QueryParam "start-index" Int32 :>
           QueryParam "max-results" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Accounts

-- | Lists all accounts to which the user has access.
--
-- /See:/ 'managementAccountsList'' smart constructor.
data ManagementAccountsList' = ManagementAccountsList'
    { _malQuotaUser   :: !(Maybe Text)
    , _malPrettyPrint :: !Bool
    , _malUserIP      :: !(Maybe Text)
    , _malKey         :: !(Maybe AuthKey)
    , _malOAuthToken  :: !(Maybe OAuthToken)
    , _malStartIndex  :: !(Maybe Int32)
    , _malMaxResults  :: !(Maybe Int32)
    , _malFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementAccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malQuotaUser'
--
-- * 'malPrettyPrint'
--
-- * 'malUserIP'
--
-- * 'malKey'
--
-- * 'malOAuthToken'
--
-- * 'malStartIndex'
--
-- * 'malMaxResults'
--
-- * 'malFields'
managementAccountsList'
    :: ManagementAccountsList'
managementAccountsList' =
    ManagementAccountsList'
    { _malQuotaUser = Nothing
    , _malPrettyPrint = False
    , _malUserIP = Nothing
    , _malKey = Nothing
    , _malOAuthToken = Nothing
    , _malStartIndex = Nothing
    , _malMaxResults = Nothing
    , _malFields = Nothing
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
malUserIP :: Lens' ManagementAccountsList' (Maybe Text)
malUserIP
  = lens _malUserIP (\ s a -> s{_malUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
malKey :: Lens' ManagementAccountsList' (Maybe AuthKey)
malKey = lens _malKey (\ s a -> s{_malKey = a})

-- | OAuth 2.0 token for the current user.
malOAuthToken :: Lens' ManagementAccountsList' (Maybe OAuthToken)
malOAuthToken
  = lens _malOAuthToken
      (\ s a -> s{_malOAuthToken = a})

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

instance GoogleAuth ManagementAccountsList' where
        _AuthKey = malKey . _Just
        _AuthToken = malOAuthToken . _Just

instance GoogleRequest ManagementAccountsList' where
        type Rs ManagementAccountsList' = Accounts
        request = requestWith analyticsRequest
        requestWith rq ManagementAccountsList'{..}
          = go _malStartIndex _malMaxResults _malQuotaUser
              (Just _malPrettyPrint)
              _malUserIP
              _malFields
              _malKey
              _malOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementAccountsListResource)
                      rq
