{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdSense.Accounts.Adclients.List
    (
    -- * REST Resource
      AccountsAdclientsListAPI

    -- * Creating a Request
    , accountsAdclientsList
    , AccountsAdclientsList

    -- * Request Lenses
    , aalQuotaUser
    , aalPrettyPrint
    , aalUserIp
    , aalAccountId
    , aalKey
    , aalPageToken
    , aalOauthToken
    , aalMaxResults
    , aalFields
    , aalAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdclientsList@ which the
-- 'AccountsAdclientsList' request conforms to.
type AccountsAdclientsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               Get '[JSON] AdClients

-- | List all ad clients in the specified account.
--
-- /See:/ 'accountsAdclientsList' smart constructor.
data AccountsAdclientsList = AccountsAdclientsList
    { _aalQuotaUser   :: !(Maybe Text)
    , _aalPrettyPrint :: !Bool
    , _aalUserIp      :: !(Maybe Text)
    , _aalAccountId   :: !Text
    , _aalKey         :: !(Maybe Text)
    , _aalPageToken   :: !(Maybe Text)
    , _aalOauthToken  :: !(Maybe Text)
    , _aalMaxResults  :: !(Maybe Int32)
    , _aalFields      :: !(Maybe Text)
    , _aalAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalQuotaUser'
--
-- * 'aalPrettyPrint'
--
-- * 'aalUserIp'
--
-- * 'aalAccountId'
--
-- * 'aalKey'
--
-- * 'aalPageToken'
--
-- * 'aalOauthToken'
--
-- * 'aalMaxResults'
--
-- * 'aalFields'
--
-- * 'aalAlt'
accountsAdclientsList
    :: Text -- ^ 'accountId'
    -> AccountsAdclientsList
accountsAdclientsList pAalAccountId_ =
    AccountsAdclientsList
    { _aalQuotaUser = Nothing
    , _aalPrettyPrint = True
    , _aalUserIp = Nothing
    , _aalAccountId = pAalAccountId_
    , _aalKey = Nothing
    , _aalPageToken = Nothing
    , _aalOauthToken = Nothing
    , _aalMaxResults = Nothing
    , _aalFields = Nothing
    , _aalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalQuotaUser :: Lens' AccountsAdclientsList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AccountsAdclientsList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalUserIp :: Lens' AccountsAdclientsList' (Maybe Text)
aalUserIp
  = lens _aalUserIp (\ s a -> s{_aalUserIp = a})

-- | Account for which to list ad clients.
aalAccountId :: Lens' AccountsAdclientsList' Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AccountsAdclientsList' (Maybe Text)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aalPageToken :: Lens' AccountsAdclientsList' (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | OAuth 2.0 token for the current user.
aalOauthToken :: Lens' AccountsAdclientsList' (Maybe Text)
aalOauthToken
  = lens _aalOauthToken
      (\ s a -> s{_aalOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aalMaxResults :: Lens' AccountsAdclientsList' (Maybe Int32)
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AccountsAdclientsList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

-- | Data format for the response.
aalAlt :: Lens' AccountsAdclientsList' Text
aalAlt = lens _aalAlt (\ s a -> s{_aalAlt = a})

instance GoogleRequest AccountsAdclientsList' where
        type Rs AccountsAdclientsList' = AdClients
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdclientsList{..}
          = go _aalQuotaUser _aalPrettyPrint _aalUserIp
              _aalAccountId
              _aalKey
              _aalPageToken
              _aalOauthToken
              _aalMaxResults
              _aalFields
              _aalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsListAPI)
                      r
                      u
