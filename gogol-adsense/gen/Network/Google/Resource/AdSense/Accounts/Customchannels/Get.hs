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
-- Module      : Network.Google.Resource.AdSense.Accounts.Customchannels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified custom channel from the specified ad client for the
-- specified account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsCustomchannelsGet@.
module Network.Google.Resource.AdSense.Accounts.Customchannels.Get
    (
    -- * REST Resource
      AccountsCustomchannelsGetResource

    -- * Creating a Request
    , accountsCustomchannelsGet'
    , AccountsCustomchannelsGet'

    -- * Request Lenses
    , acgQuotaUser
    , acgPrettyPrint
    , acgCustomChannelId
    , acgUserIp
    , acgAdClientId
    , acgAccountId
    , acgKey
    , acgOauthToken
    , acgFields
    , acgAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsCustomchannelsGet@ which the
-- 'AccountsCustomchannelsGet'' request conforms to.
type AccountsCustomchannelsGetResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] CustomChannel

-- | Get the specified custom channel from the specified ad client for the
-- specified account.
--
-- /See:/ 'accountsCustomchannelsGet'' smart constructor.
data AccountsCustomchannelsGet' = AccountsCustomchannelsGet'
    { _acgQuotaUser       :: !(Maybe Text)
    , _acgPrettyPrint     :: !Bool
    , _acgCustomChannelId :: !Text
    , _acgUserIp          :: !(Maybe Text)
    , _acgAdClientId      :: !Text
    , _acgAccountId       :: !Text
    , _acgKey             :: !(Maybe Text)
    , _acgOauthToken      :: !(Maybe Text)
    , _acgFields          :: !(Maybe Text)
    , _acgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomchannelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgQuotaUser'
--
-- * 'acgPrettyPrint'
--
-- * 'acgCustomChannelId'
--
-- * 'acgUserIp'
--
-- * 'acgAdClientId'
--
-- * 'acgAccountId'
--
-- * 'acgKey'
--
-- * 'acgOauthToken'
--
-- * 'acgFields'
--
-- * 'acgAlt'
accountsCustomchannelsGet'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomchannelsGet'
accountsCustomchannelsGet' pAcgCustomChannelId_ pAcgAdClientId_ pAcgAccountId_ =
    AccountsCustomchannelsGet'
    { _acgQuotaUser = Nothing
    , _acgPrettyPrint = True
    , _acgCustomChannelId = pAcgCustomChannelId_
    , _acgUserIp = Nothing
    , _acgAdClientId = pAcgAdClientId_
    , _acgAccountId = pAcgAccountId_
    , _acgKey = Nothing
    , _acgOauthToken = Nothing
    , _acgFields = Nothing
    , _acgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acgQuotaUser :: Lens' AccountsCustomchannelsGet' (Maybe Text)
acgQuotaUser
  = lens _acgQuotaUser (\ s a -> s{_acgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acgPrettyPrint :: Lens' AccountsCustomchannelsGet' Bool
acgPrettyPrint
  = lens _acgPrettyPrint
      (\ s a -> s{_acgPrettyPrint = a})

-- | Custom channel to retrieve.
acgCustomChannelId :: Lens' AccountsCustomchannelsGet' Text
acgCustomChannelId
  = lens _acgCustomChannelId
      (\ s a -> s{_acgCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acgUserIp :: Lens' AccountsCustomchannelsGet' (Maybe Text)
acgUserIp
  = lens _acgUserIp (\ s a -> s{_acgUserIp = a})

-- | Ad client which contains the custom channel.
acgAdClientId :: Lens' AccountsCustomchannelsGet' Text
acgAdClientId
  = lens _acgAdClientId
      (\ s a -> s{_acgAdClientId = a})

-- | Account to which the ad client belongs.
acgAccountId :: Lens' AccountsCustomchannelsGet' Text
acgAccountId
  = lens _acgAccountId (\ s a -> s{_acgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acgKey :: Lens' AccountsCustomchannelsGet' (Maybe Text)
acgKey = lens _acgKey (\ s a -> s{_acgKey = a})

-- | OAuth 2.0 token for the current user.
acgOauthToken :: Lens' AccountsCustomchannelsGet' (Maybe Text)
acgOauthToken
  = lens _acgOauthToken
      (\ s a -> s{_acgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acgFields :: Lens' AccountsCustomchannelsGet' (Maybe Text)
acgFields
  = lens _acgFields (\ s a -> s{_acgFields = a})

-- | Data format for the response.
acgAlt :: Lens' AccountsCustomchannelsGet' Alt
acgAlt = lens _acgAlt (\ s a -> s{_acgAlt = a})

instance GoogleRequest AccountsCustomchannelsGet'
         where
        type Rs AccountsCustomchannelsGet' = CustomChannel
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsCustomchannelsGet'{..}
          = go _acgQuotaUser (Just _acgPrettyPrint)
              _acgCustomChannelId
              _acgUserIp
              _acgAdClientId
              _acgAccountId
              _acgKey
              _acgOauthToken
              _acgFields
              (Just _acgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsCustomchannelsGetResource)
                      r
                      u
