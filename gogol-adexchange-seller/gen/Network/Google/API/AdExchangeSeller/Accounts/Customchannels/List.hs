{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeSeller.Accounts.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.customchannels.list@.
module Network.Google.API.AdExchangeSeller.Accounts.Customchannels.List
    (
    -- * REST Resource
      AccountsCustomchannelsListAPI

    -- * Creating a Request
    , accountsCustomchannelsList'
    , AccountsCustomchannelsList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIp
    , aclAdClientId
    , aclAccountId
    , aclKey
    , aclPageToken
    , aclOauthToken
    , aclMaxResults
    , aclFields
    , aclAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangeseller.accounts.customchannels.list which the
-- 'AccountsCustomchannelsList'' request conforms to.
type AccountsCustomchannelsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ 'accountsCustomchannelsList'' smart constructor.
data AccountsCustomchannelsList' = AccountsCustomchannelsList'
    { _aclQuotaUser   :: !(Maybe Text)
    , _aclPrettyPrint :: !Bool
    , _aclUserIp      :: !(Maybe Text)
    , _aclAdClientId  :: !Text
    , _aclAccountId   :: !Text
    , _aclKey         :: !(Maybe Text)
    , _aclPageToken   :: !(Maybe Text)
    , _aclOauthToken  :: !(Maybe Text)
    , _aclMaxResults  :: !(Maybe Word32)
    , _aclFields      :: !(Maybe Text)
    , _aclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIp'
--
-- * 'aclAdClientId'
--
-- * 'aclAccountId'
--
-- * 'aclKey'
--
-- * 'aclPageToken'
--
-- * 'aclOauthToken'
--
-- * 'aclMaxResults'
--
-- * 'aclFields'
--
-- * 'aclAlt'
accountsCustomchannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomchannelsList'
accountsCustomchannelsList' pAclAdClientId_ pAclAccountId_ =
    AccountsCustomchannelsList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIp = Nothing
    , _aclAdClientId = pAclAdClientId_
    , _aclAccountId = pAclAccountId_
    , _aclKey = Nothing
    , _aclPageToken = Nothing
    , _aclOauthToken = Nothing
    , _aclMaxResults = Nothing
    , _aclFields = Nothing
    , _aclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aclQuotaUser :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclQuotaUser
  = lens _aclQuotaUser (\ s a -> s{_aclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aclPrettyPrint :: Lens' AccountsCustomchannelsList' Bool
aclPrettyPrint
  = lens _aclPrettyPrint
      (\ s a -> s{_aclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aclUserIp :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclUserIp
  = lens _aclUserIp (\ s a -> s{_aclUserIp = a})

-- | Ad client for which to list custom channels.
aclAdClientId :: Lens' AccountsCustomchannelsList' Text
aclAdClientId
  = lens _aclAdClientId
      (\ s a -> s{_aclAdClientId = a})

-- | Account to which the ad client belongs.
aclAccountId :: Lens' AccountsCustomchannelsList' Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aclPageToken :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | OAuth 2.0 token for the current user.
aclOauthToken :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclOauthToken
  = lens _aclOauthToken
      (\ s a -> s{_aclOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aclMaxResults :: Lens' AccountsCustomchannelsList' (Maybe Word32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AccountsCustomchannelsList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

-- | Data format for the response.
aclAlt :: Lens' AccountsCustomchannelsList' Alt
aclAlt = lens _aclAlt (\ s a -> s{_aclAlt = a})

instance GoogleRequest AccountsCustomchannelsList'
         where
        type Rs AccountsCustomchannelsList' = CustomChannels
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsCustomchannelsList'{..}
          = go _aclQuotaUser (Just _aclPrettyPrint) _aclUserIp
              _aclAdClientId
              _aclAccountId
              _aclKey
              _aclPageToken
              _aclOauthToken
              _aclMaxResults
              _aclFields
              (Just _aclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsCustomchannelsListAPI)
                      r
                      u
