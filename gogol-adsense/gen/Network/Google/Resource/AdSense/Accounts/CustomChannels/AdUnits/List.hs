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
-- Module      : Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsCustomChannelsAdUnitsList@.
module Network.Google.Resource.AdSense.Accounts.CustomChannels.AdUnits.List
    (
    -- * REST Resource
      AccountsCustomChannelsAdUnitsListResource

    -- * Creating a Request
    , accountsCustomChannelsAdUnitsList'
    , AccountsCustomChannelsAdUnitsList'

    -- * Request Lenses
    , accaulQuotaUser
    , accaulPrettyPrint
    , accaulIncludeInactive
    , accaulCustomChannelId
    , accaulUserIP
    , accaulAdClientId
    , accaulAccountId
    , accaulKey
    , accaulPageToken
    , accaulOAuthToken
    , accaulMaxResults
    , accaulFields
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsCustomChannelsAdUnitsList@ which the
-- 'AccountsCustomChannelsAdUnitsList'' request conforms to.
type AccountsCustomChannelsAdUnitsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 "adunits" :>
                   QueryParam "includeInactive" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] AdUnits

-- | List all ad units in the specified custom channel.
--
-- /See:/ 'accountsCustomChannelsAdUnitsList'' smart constructor.
data AccountsCustomChannelsAdUnitsList' = AccountsCustomChannelsAdUnitsList'
    { _accaulQuotaUser :: !(Maybe Text)
    , _accaulPrettyPrint :: !Bool
    , _accaulIncludeInactive :: !(Maybe Bool)
    , _accaulCustomChannelId :: !Text
    , _accaulUserIP :: !(Maybe Text)
    , _accaulAdClientId :: !Text
    , _accaulAccountId :: !Text
    , _accaulKey :: !(Maybe Key)
    , _accaulPageToken :: !(Maybe Text)
    , _accaulOAuthToken :: !(Maybe OAuthToken)
    , _accaulMaxResults :: !(Maybe Int32)
    , _accaulFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomChannelsAdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accaulQuotaUser'
--
-- * 'accaulPrettyPrint'
--
-- * 'accaulIncludeInactive'
--
-- * 'accaulCustomChannelId'
--
-- * 'accaulUserIP'
--
-- * 'accaulAdClientId'
--
-- * 'accaulAccountId'
--
-- * 'accaulKey'
--
-- * 'accaulPageToken'
--
-- * 'accaulOAuthToken'
--
-- * 'accaulMaxResults'
--
-- * 'accaulFields'
accountsCustomChannelsAdUnitsList'
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomChannelsAdUnitsList'
accountsCustomChannelsAdUnitsList' pAccaulCustomChannelId_ pAccaulAdClientId_ pAccaulAccountId_ = 
    AccountsCustomChannelsAdUnitsList'
    { _accaulQuotaUser = Nothing
    , _accaulPrettyPrint = True
    , _accaulIncludeInactive = Nothing
    , _accaulCustomChannelId = pAccaulCustomChannelId_
    , _accaulUserIP = Nothing
    , _accaulAdClientId = pAccaulAdClientId_
    , _accaulAccountId = pAccaulAccountId_
    , _accaulKey = Nothing
    , _accaulPageToken = Nothing
    , _accaulOAuthToken = Nothing
    , _accaulMaxResults = Nothing
    , _accaulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accaulQuotaUser :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Text)
accaulQuotaUser
  = lens _accaulQuotaUser
      (\ s a -> s{_accaulQuotaUser = a})

-- | Returns response with indentations and line breaks.
accaulPrettyPrint :: Lens' AccountsCustomChannelsAdUnitsList' Bool
accaulPrettyPrint
  = lens _accaulPrettyPrint
      (\ s a -> s{_accaulPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
accaulIncludeInactive :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Bool)
accaulIncludeInactive
  = lens _accaulIncludeInactive
      (\ s a -> s{_accaulIncludeInactive = a})

-- | Custom channel for which to list ad units.
accaulCustomChannelId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulCustomChannelId
  = lens _accaulCustomChannelId
      (\ s a -> s{_accaulCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accaulUserIP :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Text)
accaulUserIP
  = lens _accaulUserIP (\ s a -> s{_accaulUserIP = a})

-- | Ad client which contains the custom channel.
accaulAdClientId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulAdClientId
  = lens _accaulAdClientId
      (\ s a -> s{_accaulAdClientId = a})

-- | Account to which the ad client belongs.
accaulAccountId :: Lens' AccountsCustomChannelsAdUnitsList' Text
accaulAccountId
  = lens _accaulAccountId
      (\ s a -> s{_accaulAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accaulKey :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Key)
accaulKey
  = lens _accaulKey (\ s a -> s{_accaulKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
accaulPageToken :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Text)
accaulPageToken
  = lens _accaulPageToken
      (\ s a -> s{_accaulPageToken = a})

-- | OAuth 2.0 token for the current user.
accaulOAuthToken :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe OAuthToken)
accaulOAuthToken
  = lens _accaulOAuthToken
      (\ s a -> s{_accaulOAuthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
accaulMaxResults :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Int32)
accaulMaxResults
  = lens _accaulMaxResults
      (\ s a -> s{_accaulMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
accaulFields :: Lens' AccountsCustomChannelsAdUnitsList' (Maybe Text)
accaulFields
  = lens _accaulFields (\ s a -> s{_accaulFields = a})

instance GoogleAuth
         AccountsCustomChannelsAdUnitsList' where
        authKey = accaulKey . _Just
        authToken = accaulOAuthToken . _Just

instance GoogleRequest
         AccountsCustomChannelsAdUnitsList' where
        type Rs AccountsCustomChannelsAdUnitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u
          AccountsCustomChannelsAdUnitsList'{..}
          = go _accaulAccountId _accaulAdClientId
              _accaulCustomChannelId
              _accaulIncludeInactive
              _accaulPageToken
              _accaulMaxResults
              _accaulQuotaUser
              (Just _accaulPrettyPrint)
              _accaulUserIP
              _accaulFields
              _accaulKey
              _accaulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsCustomChannelsAdUnitsListResource)
                      r
                      u
