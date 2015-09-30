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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.Adclients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all hosted ad clients in the specified hosted account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdclientsList@.
module Network.Google.Resource.AdSenseHost.Accounts.Adclients.List
    (
    -- * REST Resource
      AccountsAdclientsListResource

    -- * Creating a Request
    , accountsAdclientsList'
    , AccountsAdclientsList'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIp
    , accAccountId
    , accKey
    , accPageToken
    , accOauthToken
    , accMaxResults
    , accFields
    , accAlt
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdclientsList@ which the
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
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AdClients

-- | List all hosted ad clients in the specified hosted account.
--
-- /See:/ 'accountsAdclientsList'' smart constructor.
data AccountsAdclientsList' = AccountsAdclientsList'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIp      :: !(Maybe Text)
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Text)
    , _accPageToken   :: !(Maybe Text)
    , _accOauthToken  :: !(Maybe Text)
    , _accMaxResults  :: !(Maybe Word32)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIp'
--
-- * 'accAccountId'
--
-- * 'accKey'
--
-- * 'accPageToken'
--
-- * 'accOauthToken'
--
-- * 'accMaxResults'
--
-- * 'accFields'
--
-- * 'accAlt'
accountsAdclientsList'
    :: Text -- ^ 'accountId'
    -> AccountsAdclientsList'
accountsAdclientsList' pAccAccountId_ =
    AccountsAdclientsList'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIp = Nothing
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accPageToken = Nothing
    , _accOauthToken = Nothing
    , _accMaxResults = Nothing
    , _accFields = Nothing
    , _accAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsAdclientsList' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsAdclientsList' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsAdclientsList' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | Account for which to list ad clients.
accAccountId :: Lens' AccountsAdclientsList' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsAdclientsList' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
accPageToken :: Lens' AccountsAdclientsList' (Maybe Text)
accPageToken
  = lens _accPageToken (\ s a -> s{_accPageToken = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsAdclientsList' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
accMaxResults :: Lens' AccountsAdclientsList' (Maybe Word32)
accMaxResults
  = lens _accMaxResults
      (\ s a -> s{_accMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsAdclientsList' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsAdclientsList' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsAdclientsList' where
        type Rs AccountsAdclientsList' = AdClients
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdclientsList'{..}
          = go _accQuotaUser (Just _accPrettyPrint) _accUserIp
              _accAccountId
              _accKey
              _accPageToken
              _accOauthToken
              _accMaxResults
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsListResource)
                      r
                      u
