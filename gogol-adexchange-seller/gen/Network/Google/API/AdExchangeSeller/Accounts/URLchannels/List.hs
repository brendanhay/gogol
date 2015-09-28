{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeSeller.Accounts.URLchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all URL channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.urlchannels.list@.
module Network.Google.API.AdExchangeSeller.Accounts.URLchannels.List
    (
    -- * REST Resource
      AccountsURLchannelsListAPI

    -- * Creating a Request
    , accountsURLchannelsList'
    , AccountsURLchannelsList'

    -- * Request Lenses
    , aulQuotaUser
    , aulPrettyPrint
    , aulUserIp
    , aulAdClientId
    , aulAccountId
    , aulKey
    , aulPageToken
    , aulOauthToken
    , aulMaxResults
    , aulFields
    , aulAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangeseller.accounts.urlchannels.list which the
-- 'AccountsURLchannelsList'' request conforms to.
type AccountsURLchannelsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "urlchannels" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] UrlChannels

-- | List all URL channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ 'accountsURLchannelsList'' smart constructor.
data AccountsURLchannelsList' = AccountsURLchannelsList'
    { _aulQuotaUser   :: !(Maybe Text)
    , _aulPrettyPrint :: !Bool
    , _aulUserIp      :: !(Maybe Text)
    , _aulAdClientId  :: !Text
    , _aulAccountId   :: !Text
    , _aulKey         :: !(Maybe Text)
    , _aulPageToken   :: !(Maybe Text)
    , _aulOauthToken  :: !(Maybe Text)
    , _aulMaxResults  :: !(Maybe Word32)
    , _aulFields      :: !(Maybe Text)
    , _aulAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsURLchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aulQuotaUser'
--
-- * 'aulPrettyPrint'
--
-- * 'aulUserIp'
--
-- * 'aulAdClientId'
--
-- * 'aulAccountId'
--
-- * 'aulKey'
--
-- * 'aulPageToken'
--
-- * 'aulOauthToken'
--
-- * 'aulMaxResults'
--
-- * 'aulFields'
--
-- * 'aulAlt'
accountsURLchannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsURLchannelsList'
accountsURLchannelsList' pAulAdClientId_ pAulAccountId_ =
    AccountsURLchannelsList'
    { _aulQuotaUser = Nothing
    , _aulPrettyPrint = True
    , _aulUserIp = Nothing
    , _aulAdClientId = pAulAdClientId_
    , _aulAccountId = pAulAccountId_
    , _aulKey = Nothing
    , _aulPageToken = Nothing
    , _aulOauthToken = Nothing
    , _aulMaxResults = Nothing
    , _aulFields = Nothing
    , _aulAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aulQuotaUser :: Lens' AccountsURLchannelsList' (Maybe Text)
aulQuotaUser
  = lens _aulQuotaUser (\ s a -> s{_aulQuotaUser = a})

-- | Returns response with indentations and line breaks.
aulPrettyPrint :: Lens' AccountsURLchannelsList' Bool
aulPrettyPrint
  = lens _aulPrettyPrint
      (\ s a -> s{_aulPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aulUserIp :: Lens' AccountsURLchannelsList' (Maybe Text)
aulUserIp
  = lens _aulUserIp (\ s a -> s{_aulUserIp = a})

-- | Ad client for which to list URL channels.
aulAdClientId :: Lens' AccountsURLchannelsList' Text
aulAdClientId
  = lens _aulAdClientId
      (\ s a -> s{_aulAdClientId = a})

-- | Account to which the ad client belongs.
aulAccountId :: Lens' AccountsURLchannelsList' Text
aulAccountId
  = lens _aulAccountId (\ s a -> s{_aulAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aulKey :: Lens' AccountsURLchannelsList' (Maybe Text)
aulKey = lens _aulKey (\ s a -> s{_aulKey = a})

-- | A continuation token, used to page through URL channels. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aulPageToken :: Lens' AccountsURLchannelsList' (Maybe Text)
aulPageToken
  = lens _aulPageToken (\ s a -> s{_aulPageToken = a})

-- | OAuth 2.0 token for the current user.
aulOauthToken :: Lens' AccountsURLchannelsList' (Maybe Text)
aulOauthToken
  = lens _aulOauthToken
      (\ s a -> s{_aulOauthToken = a})

-- | The maximum number of URL channels to include in the response, used for
-- paging.
aulMaxResults :: Lens' AccountsURLchannelsList' (Maybe Word32)
aulMaxResults
  = lens _aulMaxResults
      (\ s a -> s{_aulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aulFields :: Lens' AccountsURLchannelsList' (Maybe Text)
aulFields
  = lens _aulFields (\ s a -> s{_aulFields = a})

-- | Data format for the response.
aulAlt :: Lens' AccountsURLchannelsList' Alt
aulAlt = lens _aulAlt (\ s a -> s{_aulAlt = a})

instance GoogleRequest AccountsURLchannelsList' where
        type Rs AccountsURLchannelsList' = UrlChannels
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsURLchannelsList'{..}
          = go _aulQuotaUser (Just _aulPrettyPrint) _aulUserIp
              _aulAdClientId
              _aulAccountId
              _aulKey
              _aulPageToken
              _aulOauthToken
              _aulMaxResults
              _aulFields
              (Just _aulAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsURLchannelsListAPI)
                      r
                      u
