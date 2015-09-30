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
-- Module      : Network.Google.Resource.AdSense.Accounts.Adclients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad clients in the specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdclientsList@.
module Network.Google.Resource.AdSense.Accounts.Adclients.List
    (
    -- * REST Resource
      AccountsAdclientsListResource

    -- * Creating a Request
    , accountsAdclientsList'
    , AccountsAdclientsList'

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaUserIp
    , aaAccountId
    , aaKey
    , aaPageToken
    , aaOauthToken
    , aaMaxResults
    , aaFields
    , aaAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdclientsList@ which the
-- 'AccountsAdclientsList'' request conforms to.
type AccountsAdclientsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AdClients

-- | List all ad clients in the specified account.
--
-- /See:/ 'accountsAdclientsList'' smart constructor.
data AccountsAdclientsList' = AccountsAdclientsList'
    { _aaQuotaUser   :: !(Maybe Text)
    , _aaPrettyPrint :: !Bool
    , _aaUserIp      :: !(Maybe Text)
    , _aaAccountId   :: !Text
    , _aaKey         :: !(Maybe Text)
    , _aaPageToken   :: !(Maybe Text)
    , _aaOauthToken  :: !(Maybe Text)
    , _aaMaxResults  :: !(Maybe Int32)
    , _aaFields      :: !(Maybe Text)
    , _aaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaUserIp'
--
-- * 'aaAccountId'
--
-- * 'aaKey'
--
-- * 'aaPageToken'
--
-- * 'aaOauthToken'
--
-- * 'aaMaxResults'
--
-- * 'aaFields'
--
-- * 'aaAlt'
accountsAdclientsList'
    :: Text -- ^ 'accountId'
    -> AccountsAdclientsList'
accountsAdclientsList' pAaAccountId_ =
    AccountsAdclientsList'
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaUserIp = Nothing
    , _aaAccountId = pAaAccountId_
    , _aaKey = Nothing
    , _aaPageToken = Nothing
    , _aaOauthToken = Nothing
    , _aaMaxResults = Nothing
    , _aaFields = Nothing
    , _aaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AccountsAdclientsList' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AccountsAdclientsList' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AccountsAdclientsList' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | Account for which to list ad clients.
aaAccountId :: Lens' AccountsAdclientsList' Text
aaAccountId
  = lens _aaAccountId (\ s a -> s{_aaAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AccountsAdclientsList' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aaPageToken :: Lens' AccountsAdclientsList' (Maybe Text)
aaPageToken
  = lens _aaPageToken (\ s a -> s{_aaPageToken = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AccountsAdclientsList' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aaMaxResults :: Lens' AccountsAdclientsList' (Maybe Int32)
aaMaxResults
  = lens _aaMaxResults (\ s a -> s{_aaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AccountsAdclientsList' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AccountsAdclientsList' Alt
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest AccountsAdclientsList' where
        type Rs AccountsAdclientsList' = AdClients
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdclientsList'{..}
          = go _aaQuotaUser (Just _aaPrettyPrint) _aaUserIp
              _aaAccountId
              _aaKey
              _aaPageToken
              _aaOauthToken
              _aaMaxResults
              _aaFields
              (Just _aaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsListResource)
                      r
                      u
