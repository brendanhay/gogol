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
-- Module      : Network.Google.Resource.AdSense.Accounts.Customchannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels in the specified ad client for the specified
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsCustomchannelsList@.
module Network.Google.Resource.AdSense.Accounts.Customchannels.List
    (
    -- * REST Resource
      AccountsCustomchannelsListResource

    -- * Creating a Request
    , accountsCustomchannelsList'
    , AccountsCustomchannelsList'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIp
    , accAdClientId
    , accAccountId
    , accKey
    , accPageToken
    , accOauthToken
    , accMaxResults
    , accFields
    , accAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsCustomchannelsList@ which the
-- 'AccountsCustomchannelsList'' request conforms to.
type AccountsCustomchannelsListResource =
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
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for the specified
-- account.
--
-- /See:/ 'accountsCustomchannelsList'' smart constructor.
data AccountsCustomchannelsList' = AccountsCustomchannelsList'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIp      :: !(Maybe Text)
    , _accAdClientId  :: !Text
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Text)
    , _accPageToken   :: !(Maybe Text)
    , _accOauthToken  :: !(Maybe Text)
    , _accMaxResults  :: !(Maybe Int32)
    , _accFields      :: !(Maybe Text)
    , _accAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomchannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIp'
--
-- * 'accAdClientId'
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
accountsCustomchannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomchannelsList'
accountsCustomchannelsList' pAccAdClientId_ pAccAccountId_ =
    AccountsCustomchannelsList'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIp = Nothing
    , _accAdClientId = pAccAdClientId_
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
accQuotaUser :: Lens' AccountsCustomchannelsList' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsCustomchannelsList' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIp :: Lens' AccountsCustomchannelsList' (Maybe Text)
accUserIp
  = lens _accUserIp (\ s a -> s{_accUserIp = a})

-- | Ad client for which to list custom channels.
accAdClientId :: Lens' AccountsCustomchannelsList' Text
accAdClientId
  = lens _accAdClientId
      (\ s a -> s{_accAdClientId = a})

-- | Account to which the ad client belongs.
accAccountId :: Lens' AccountsCustomchannelsList' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsCustomchannelsList' (Maybe Text)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
accPageToken :: Lens' AccountsCustomchannelsList' (Maybe Text)
accPageToken
  = lens _accPageToken (\ s a -> s{_accPageToken = a})

-- | OAuth 2.0 token for the current user.
accOauthToken :: Lens' AccountsCustomchannelsList' (Maybe Text)
accOauthToken
  = lens _accOauthToken
      (\ s a -> s{_accOauthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
accMaxResults :: Lens' AccountsCustomchannelsList' (Maybe Int32)
accMaxResults
  = lens _accMaxResults
      (\ s a -> s{_accMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsCustomchannelsList' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

-- | Data format for the response.
accAlt :: Lens' AccountsCustomchannelsList' Alt
accAlt = lens _accAlt (\ s a -> s{_accAlt = a})

instance GoogleRequest AccountsCustomchannelsList'
         where
        type Rs AccountsCustomchannelsList' = CustomChannels
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsCustomchannelsList'{..}
          = go _accQuotaUser (Just _accPrettyPrint) _accUserIp
              _accAdClientId
              _accAccountId
              _accKey
              _accPageToken
              _accOauthToken
              _accMaxResults
              _accFields
              (Just _accAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsCustomchannelsListResource)
                      r
                      u
