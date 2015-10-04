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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdUnitsCustomChannelsList@.
module Network.Google.Resource.AdSense.Accounts.AdUnits.CustomChannels.List
    (
    -- * REST Resource
      AccountsAdUnitsCustomChannelsListResource

    -- * Creating a Request
    , accountsAdUnitsCustomChannelsList'
    , AccountsAdUnitsCustomChannelsList'

    -- * Request Lenses
    , aaucclQuotaUser
    , aaucclPrettyPrint
    , aaucclUserIP
    , aaucclAdUnitId
    , aaucclAdClientId
    , aaucclAccountId
    , aaucclKey
    , aaucclPageToken
    , aaucclOAuthToken
    , aaucclMaxResults
    , aaucclFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdUnitsCustomChannelsList@ which the
-- 'AccountsAdUnitsCustomChannelsList'' request conforms to.
type AccountsAdUnitsCustomChannelsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "customchannels" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'accountsAdUnitsCustomChannelsList'' smart constructor.
data AccountsAdUnitsCustomChannelsList' = AccountsAdUnitsCustomChannelsList'
    { _aaucclQuotaUser   :: !(Maybe Text)
    , _aaucclPrettyPrint :: !Bool
    , _aaucclUserIP      :: !(Maybe Text)
    , _aaucclAdUnitId    :: !Text
    , _aaucclAdClientId  :: !Text
    , _aaucclAccountId   :: !Text
    , _aaucclKey         :: !(Maybe Key)
    , _aaucclPageToken   :: !(Maybe Text)
    , _aaucclOAuthToken  :: !(Maybe OAuthToken)
    , _aaucclMaxResults  :: !(Maybe Int32)
    , _aaucclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsCustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaucclQuotaUser'
--
-- * 'aaucclPrettyPrint'
--
-- * 'aaucclUserIP'
--
-- * 'aaucclAdUnitId'
--
-- * 'aaucclAdClientId'
--
-- * 'aaucclAccountId'
--
-- * 'aaucclKey'
--
-- * 'aaucclPageToken'
--
-- * 'aaucclOAuthToken'
--
-- * 'aaucclMaxResults'
--
-- * 'aaucclFields'
accountsAdUnitsCustomChannelsList'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsCustomChannelsList'
accountsAdUnitsCustomChannelsList' pAaucclAdUnitId_ pAaucclAdClientId_ pAaucclAccountId_ =
    AccountsAdUnitsCustomChannelsList'
    { _aaucclQuotaUser = Nothing
    , _aaucclPrettyPrint = True
    , _aaucclUserIP = Nothing
    , _aaucclAdUnitId = pAaucclAdUnitId_
    , _aaucclAdClientId = pAaucclAdClientId_
    , _aaucclAccountId = pAaucclAccountId_
    , _aaucclKey = Nothing
    , _aaucclPageToken = Nothing
    , _aaucclOAuthToken = Nothing
    , _aaucclMaxResults = Nothing
    , _aaucclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaucclQuotaUser :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Text)
aaucclQuotaUser
  = lens _aaucclQuotaUser
      (\ s a -> s{_aaucclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaucclPrettyPrint :: Lens' AccountsAdUnitsCustomChannelsList' Bool
aaucclPrettyPrint
  = lens _aaucclPrettyPrint
      (\ s a -> s{_aaucclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaucclUserIP :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Text)
aaucclUserIP
  = lens _aaucclUserIP (\ s a -> s{_aaucclUserIP = a})

-- | Ad unit for which to list custom channels.
aaucclAdUnitId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAdUnitId
  = lens _aaucclAdUnitId
      (\ s a -> s{_aaucclAdUnitId = a})

-- | Ad client which contains the ad unit.
aaucclAdClientId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAdClientId
  = lens _aaucclAdClientId
      (\ s a -> s{_aaucclAdClientId = a})

-- | Account to which the ad client belongs.
aaucclAccountId :: Lens' AccountsAdUnitsCustomChannelsList' Text
aaucclAccountId
  = lens _aaucclAccountId
      (\ s a -> s{_aaucclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaucclKey :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Key)
aaucclKey
  = lens _aaucclKey (\ s a -> s{_aaucclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aaucclPageToken :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Text)
aaucclPageToken
  = lens _aaucclPageToken
      (\ s a -> s{_aaucclPageToken = a})

-- | OAuth 2.0 token for the current user.
aaucclOAuthToken :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe OAuthToken)
aaucclOAuthToken
  = lens _aaucclOAuthToken
      (\ s a -> s{_aaucclOAuthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aaucclMaxResults :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Int32)
aaucclMaxResults
  = lens _aaucclMaxResults
      (\ s a -> s{_aaucclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaucclFields :: Lens' AccountsAdUnitsCustomChannelsList' (Maybe Text)
aaucclFields
  = lens _aaucclFields (\ s a -> s{_aaucclFields = a})

instance GoogleAuth
         AccountsAdUnitsCustomChannelsList' where
        authKey = aaucclKey . _Just
        authToken = aaucclOAuthToken . _Just

instance GoogleRequest
         AccountsAdUnitsCustomChannelsList' where
        type Rs AccountsAdUnitsCustomChannelsList' =
             CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u
          AccountsAdUnitsCustomChannelsList'{..}
          = go _aaucclAccountId _aaucclAdClientId
              _aaucclAdUnitId
              _aaucclPageToken
              _aaucclMaxResults
              _aaucclQuotaUser
              (Just _aaucclPrettyPrint)
              _aaucclUserIP
              _aaucclFields
              _aaucclKey
              _aaucclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsAdUnitsCustomChannelsListResource)
                      r
                      u
