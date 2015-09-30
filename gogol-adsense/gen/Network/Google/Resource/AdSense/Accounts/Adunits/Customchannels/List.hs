{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Adunits.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdunitsCustomchannelsList@.
module AdSense.Accounts.Adunits.Customchannels.List
    (
    -- * REST Resource
      AccountsAdunitsCustomchannelsListAPI

    -- * Creating a Request
    , accountsAdunitsCustomchannelsList
    , AccountsAdunitsCustomchannelsList

    -- * Request Lenses
    , aaclQuotaUser
    , aaclPrettyPrint
    , aaclUserIp
    , aaclAdUnitId
    , aaclAdClientId
    , aaclAccountId
    , aaclKey
    , aaclPageToken
    , aaclOauthToken
    , aaclMaxResults
    , aaclFields
    , aaclAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdunitsCustomchannelsList@ which the
-- 'AccountsAdunitsCustomchannelsList' request conforms to.
type AccountsAdunitsCustomchannelsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "customchannels" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Int32 :>
                       Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'accountsAdunitsCustomchannelsList' smart constructor.
data AccountsAdunitsCustomchannelsList = AccountsAdunitsCustomchannelsList
    { _aaclQuotaUser   :: !(Maybe Text)
    , _aaclPrettyPrint :: !Bool
    , _aaclUserIp      :: !(Maybe Text)
    , _aaclAdUnitId    :: !Text
    , _aaclAdClientId  :: !Text
    , _aaclAccountId   :: !Text
    , _aaclKey         :: !(Maybe Text)
    , _aaclPageToken   :: !(Maybe Text)
    , _aaclOauthToken  :: !(Maybe Text)
    , _aaclMaxResults  :: !(Maybe Int32)
    , _aaclFields      :: !(Maybe Text)
    , _aaclAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsCustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaclQuotaUser'
--
-- * 'aaclPrettyPrint'
--
-- * 'aaclUserIp'
--
-- * 'aaclAdUnitId'
--
-- * 'aaclAdClientId'
--
-- * 'aaclAccountId'
--
-- * 'aaclKey'
--
-- * 'aaclPageToken'
--
-- * 'aaclOauthToken'
--
-- * 'aaclMaxResults'
--
-- * 'aaclFields'
--
-- * 'aaclAlt'
accountsAdunitsCustomchannelsList
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsCustomchannelsList
accountsAdunitsCustomchannelsList pAaclAdUnitId_ pAaclAdClientId_ pAaclAccountId_ =
    AccountsAdunitsCustomchannelsList
    { _aaclQuotaUser = Nothing
    , _aaclPrettyPrint = True
    , _aaclUserIp = Nothing
    , _aaclAdUnitId = pAaclAdUnitId_
    , _aaclAdClientId = pAaclAdClientId_
    , _aaclAccountId = pAaclAccountId_
    , _aaclKey = Nothing
    , _aaclPageToken = Nothing
    , _aaclOauthToken = Nothing
    , _aaclMaxResults = Nothing
    , _aaclFields = Nothing
    , _aaclAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaclQuotaUser :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclQuotaUser
  = lens _aaclQuotaUser
      (\ s a -> s{_aaclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaclPrettyPrint :: Lens' AccountsAdunitsCustomchannelsList' Bool
aaclPrettyPrint
  = lens _aaclPrettyPrint
      (\ s a -> s{_aaclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaclUserIp :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclUserIp
  = lens _aaclUserIp (\ s a -> s{_aaclUserIp = a})

-- | Ad unit for which to list custom channels.
aaclAdUnitId :: Lens' AccountsAdunitsCustomchannelsList' Text
aaclAdUnitId
  = lens _aaclAdUnitId (\ s a -> s{_aaclAdUnitId = a})

-- | Ad client which contains the ad unit.
aaclAdClientId :: Lens' AccountsAdunitsCustomchannelsList' Text
aaclAdClientId
  = lens _aaclAdClientId
      (\ s a -> s{_aaclAdClientId = a})

-- | Account to which the ad client belongs.
aaclAccountId :: Lens' AccountsAdunitsCustomchannelsList' Text
aaclAccountId
  = lens _aaclAccountId
      (\ s a -> s{_aaclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaclKey :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclKey = lens _aaclKey (\ s a -> s{_aaclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aaclPageToken :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclPageToken
  = lens _aaclPageToken
      (\ s a -> s{_aaclPageToken = a})

-- | OAuth 2.0 token for the current user.
aaclOauthToken :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclOauthToken
  = lens _aaclOauthToken
      (\ s a -> s{_aaclOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aaclMaxResults :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Int32)
aaclMaxResults
  = lens _aaclMaxResults
      (\ s a -> s{_aaclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aaclFields :: Lens' AccountsAdunitsCustomchannelsList' (Maybe Text)
aaclFields
  = lens _aaclFields (\ s a -> s{_aaclFields = a})

-- | Data format for the response.
aaclAlt :: Lens' AccountsAdunitsCustomchannelsList' Text
aaclAlt = lens _aaclAlt (\ s a -> s{_aaclAlt = a})

instance GoogleRequest
         AccountsAdunitsCustomchannelsList' where
        type Rs AccountsAdunitsCustomchannelsList' =
             CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u
          AccountsAdunitsCustomchannelsList{..}
          = go _aaclQuotaUser _aaclPrettyPrint _aaclUserIp
              _aaclAdUnitId
              _aaclAdClientId
              _aaclAccountId
              _aaclKey
              _aaclPageToken
              _aaclOauthToken
              _aaclMaxResults
              _aaclFields
              _aaclAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsCustomchannelsListAPI)
                      r
                      u
