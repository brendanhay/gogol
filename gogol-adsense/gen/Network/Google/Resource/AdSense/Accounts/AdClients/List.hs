{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad clients in the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdClientsList@.
module Network.Google.Resource.AdSense.Accounts.AdClients.List
    (
    -- * REST Resource
      AccountsAdClientsListResource

    -- * Creating a Request
    , accountsAdClientsList'
    , AccountsAdClientsList'

    -- * Request Lenses
    , aaclQuotaUser
    , aaclPrettyPrint
    , aaclUserIP
    , aaclAccountId
    , aaclKey
    , aaclPageToken
    , aaclOAuthToken
    , aaclMaxResults
    , aaclFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdClientsList@ which the
-- 'AccountsAdClientsList'' request conforms to.
type AccountsAdClientsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] AdClients

-- | List all ad clients in the specified account.
--
-- /See:/ 'accountsAdClientsList'' smart constructor.
data AccountsAdClientsList' = AccountsAdClientsList'
    { _aaclQuotaUser   :: !(Maybe Text)
    , _aaclPrettyPrint :: !Bool
    , _aaclUserIP      :: !(Maybe Text)
    , _aaclAccountId   :: !Text
    , _aaclKey         :: !(Maybe Key)
    , _aaclPageToken   :: !(Maybe Text)
    , _aaclOAuthToken  :: !(Maybe OAuthToken)
    , _aaclMaxResults  :: !(Maybe Int32)
    , _aaclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdClientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaclQuotaUser'
--
-- * 'aaclPrettyPrint'
--
-- * 'aaclUserIP'
--
-- * 'aaclAccountId'
--
-- * 'aaclKey'
--
-- * 'aaclPageToken'
--
-- * 'aaclOAuthToken'
--
-- * 'aaclMaxResults'
--
-- * 'aaclFields'
accountsAdClientsList'
    :: Text -- ^ 'accountId'
    -> AccountsAdClientsList'
accountsAdClientsList' pAaclAccountId_ =
    AccountsAdClientsList'
    { _aaclQuotaUser = Nothing
    , _aaclPrettyPrint = True
    , _aaclUserIP = Nothing
    , _aaclAccountId = pAaclAccountId_
    , _aaclKey = Nothing
    , _aaclPageToken = Nothing
    , _aaclOAuthToken = Nothing
    , _aaclMaxResults = Nothing
    , _aaclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaclQuotaUser :: Lens' AccountsAdClientsList' (Maybe Text)
aaclQuotaUser
  = lens _aaclQuotaUser
      (\ s a -> s{_aaclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaclPrettyPrint :: Lens' AccountsAdClientsList' Bool
aaclPrettyPrint
  = lens _aaclPrettyPrint
      (\ s a -> s{_aaclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaclUserIP :: Lens' AccountsAdClientsList' (Maybe Text)
aaclUserIP
  = lens _aaclUserIP (\ s a -> s{_aaclUserIP = a})

-- | Account for which to list ad clients.
aaclAccountId :: Lens' AccountsAdClientsList' Text
aaclAccountId
  = lens _aaclAccountId
      (\ s a -> s{_aaclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaclKey :: Lens' AccountsAdClientsList' (Maybe Key)
aaclKey = lens _aaclKey (\ s a -> s{_aaclKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaclPageToken :: Lens' AccountsAdClientsList' (Maybe Text)
aaclPageToken
  = lens _aaclPageToken
      (\ s a -> s{_aaclPageToken = a})

-- | OAuth 2.0 token for the current user.
aaclOAuthToken :: Lens' AccountsAdClientsList' (Maybe OAuthToken)
aaclOAuthToken
  = lens _aaclOAuthToken
      (\ s a -> s{_aaclOAuthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aaclMaxResults :: Lens' AccountsAdClientsList' (Maybe Int32)
aaclMaxResults
  = lens _aaclMaxResults
      (\ s a -> s{_aaclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaclFields :: Lens' AccountsAdClientsList' (Maybe Text)
aaclFields
  = lens _aaclFields (\ s a -> s{_aaclFields = a})

instance GoogleAuth AccountsAdClientsList' where
        authKey = aaclKey . _Just
        authToken = aaclOAuthToken . _Just

instance GoogleRequest AccountsAdClientsList' where
        type Rs AccountsAdClientsList' = AdClients
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdClientsList'{..}
          = go _aaclAccountId _aaclPageToken _aaclMaxResults
              _aaclQuotaUser
              (Just _aaclPrettyPrint)
              _aaclUserIP
              _aaclFields
              _aaclKey
              _aaclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdClientsListResource)
                      r
                      u
