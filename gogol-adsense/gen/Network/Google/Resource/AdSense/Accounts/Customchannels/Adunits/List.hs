{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Customchannels.Adunits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified custom channel.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsCustomchannelsAdunitsList@.
module AdSense.Accounts.Customchannels.Adunits.List
    (
    -- * REST Resource
      AccountsCustomchannelsAdunitsListAPI

    -- * Creating a Request
    , accountsCustomchannelsAdunitsList
    , AccountsCustomchannelsAdunitsList

    -- * Request Lenses
    , acalQuotaUser
    , acalPrettyPrint
    , acalIncludeInactive
    , acalCustomChannelId
    , acalUserIp
    , acalAdClientId
    , acalAccountId
    , acalKey
    , acalPageToken
    , acalOauthToken
    , acalMaxResults
    , acalFields
    , acalAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsCustomchannelsAdunitsList@ which the
-- 'AccountsCustomchannelsAdunitsList' request conforms to.
type AccountsCustomchannelsAdunitsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 "adunits" :>
                   QueryParam "includeInactive" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Int32 :> Get '[JSON] AdUnits

-- | List all ad units in the specified custom channel.
--
-- /See:/ 'accountsCustomchannelsAdunitsList' smart constructor.
data AccountsCustomchannelsAdunitsList = AccountsCustomchannelsAdunitsList
    { _acalQuotaUser       :: !(Maybe Text)
    , _acalPrettyPrint     :: !Bool
    , _acalIncludeInactive :: !(Maybe Bool)
    , _acalCustomChannelId :: !Text
    , _acalUserIp          :: !(Maybe Text)
    , _acalAdClientId      :: !Text
    , _acalAccountId       :: !Text
    , _acalKey             :: !(Maybe Text)
    , _acalPageToken       :: !(Maybe Text)
    , _acalOauthToken      :: !(Maybe Text)
    , _acalMaxResults      :: !(Maybe Int32)
    , _acalFields          :: !(Maybe Text)
    , _acalAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomchannelsAdunitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acalQuotaUser'
--
-- * 'acalPrettyPrint'
--
-- * 'acalIncludeInactive'
--
-- * 'acalCustomChannelId'
--
-- * 'acalUserIp'
--
-- * 'acalAdClientId'
--
-- * 'acalAccountId'
--
-- * 'acalKey'
--
-- * 'acalPageToken'
--
-- * 'acalOauthToken'
--
-- * 'acalMaxResults'
--
-- * 'acalFields'
--
-- * 'acalAlt'
accountsCustomchannelsAdunitsList
    :: Text -- ^ 'customChannelId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomchannelsAdunitsList
accountsCustomchannelsAdunitsList pAcalCustomChannelId_ pAcalAdClientId_ pAcalAccountId_ =
    AccountsCustomchannelsAdunitsList
    { _acalQuotaUser = Nothing
    , _acalPrettyPrint = True
    , _acalIncludeInactive = Nothing
    , _acalCustomChannelId = pAcalCustomChannelId_
    , _acalUserIp = Nothing
    , _acalAdClientId = pAcalAdClientId_
    , _acalAccountId = pAcalAccountId_
    , _acalKey = Nothing
    , _acalPageToken = Nothing
    , _acalOauthToken = Nothing
    , _acalMaxResults = Nothing
    , _acalFields = Nothing
    , _acalAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acalQuotaUser :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalQuotaUser
  = lens _acalQuotaUser
      (\ s a -> s{_acalQuotaUser = a})

-- | Returns response with indentations and line breaks.
acalPrettyPrint :: Lens' AccountsCustomchannelsAdunitsList' Bool
acalPrettyPrint
  = lens _acalPrettyPrint
      (\ s a -> s{_acalPrettyPrint = a})

-- | Whether to include inactive ad units. Default: true.
acalIncludeInactive :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Bool)
acalIncludeInactive
  = lens _acalIncludeInactive
      (\ s a -> s{_acalIncludeInactive = a})

-- | Custom channel for which to list ad units.
acalCustomChannelId :: Lens' AccountsCustomchannelsAdunitsList' Text
acalCustomChannelId
  = lens _acalCustomChannelId
      (\ s a -> s{_acalCustomChannelId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acalUserIp :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalUserIp
  = lens _acalUserIp (\ s a -> s{_acalUserIp = a})

-- | Ad client which contains the custom channel.
acalAdClientId :: Lens' AccountsCustomchannelsAdunitsList' Text
acalAdClientId
  = lens _acalAdClientId
      (\ s a -> s{_acalAdClientId = a})

-- | Account to which the ad client belongs.
acalAccountId :: Lens' AccountsCustomchannelsAdunitsList' Text
acalAccountId
  = lens _acalAccountId
      (\ s a -> s{_acalAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acalKey :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalKey = lens _acalKey (\ s a -> s{_acalKey = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
acalPageToken :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalPageToken
  = lens _acalPageToken
      (\ s a -> s{_acalPageToken = a})

-- | OAuth 2.0 token for the current user.
acalOauthToken :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalOauthToken
  = lens _acalOauthToken
      (\ s a -> s{_acalOauthToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
acalMaxResults :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Int32)
acalMaxResults
  = lens _acalMaxResults
      (\ s a -> s{_acalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
acalFields :: Lens' AccountsCustomchannelsAdunitsList' (Maybe Text)
acalFields
  = lens _acalFields (\ s a -> s{_acalFields = a})

-- | Data format for the response.
acalAlt :: Lens' AccountsCustomchannelsAdunitsList' Text
acalAlt = lens _acalAlt (\ s a -> s{_acalAlt = a})

instance GoogleRequest
         AccountsCustomchannelsAdunitsList' where
        type Rs AccountsCustomchannelsAdunitsList' = AdUnits
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u
          AccountsCustomchannelsAdunitsList{..}
          = go _acalQuotaUser _acalPrettyPrint
              _acalIncludeInactive
              _acalCustomChannelId
              _acalUserIp
              _acalAdClientId
              _acalAccountId
              _acalKey
              _acalPageToken
              _acalOauthToken
              _acalMaxResults
              _acalFields
              _acalAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsCustomchannelsAdunitsListAPI)
                      r
                      u
