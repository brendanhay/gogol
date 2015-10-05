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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.URLChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all URL channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsURLChannelsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.URLChannels.List
    (
    -- * REST Resource
      AccountsURLChannelsListResource

    -- * Creating a Request
    , accountsURLChannelsList'
    , AccountsURLChannelsList'

    -- * Request Lenses
    , auclQuotaUser
    , auclPrettyPrint
    , auclUserIP
    , auclAdClientId
    , auclAccountId
    , auclKey
    , auclPageToken
    , auclOAuthToken
    , auclMaxResults
    , auclFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsURLChannelsList@ which the
-- 'AccountsURLChannelsList'' request conforms to.
type AccountsURLChannelsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "urlchannels" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] URLChannels

-- | List all URL channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ 'accountsURLChannelsList'' smart constructor.
data AccountsURLChannelsList' = AccountsURLChannelsList'
    { _auclQuotaUser   :: !(Maybe Text)
    , _auclPrettyPrint :: !Bool
    , _auclUserIP      :: !(Maybe Text)
    , _auclAdClientId  :: !Text
    , _auclAccountId   :: !Text
    , _auclKey         :: !(Maybe AuthKey)
    , _auclPageToken   :: !(Maybe Text)
    , _auclOAuthToken  :: !(Maybe OAuthToken)
    , _auclMaxResults  :: !(Maybe Word32)
    , _auclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsURLChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auclQuotaUser'
--
-- * 'auclPrettyPrint'
--
-- * 'auclUserIP'
--
-- * 'auclAdClientId'
--
-- * 'auclAccountId'
--
-- * 'auclKey'
--
-- * 'auclPageToken'
--
-- * 'auclOAuthToken'
--
-- * 'auclMaxResults'
--
-- * 'auclFields'
accountsURLChannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsURLChannelsList'
accountsURLChannelsList' pAuclAdClientId_ pAuclAccountId_ =
    AccountsURLChannelsList'
    { _auclQuotaUser = Nothing
    , _auclPrettyPrint = True
    , _auclUserIP = Nothing
    , _auclAdClientId = pAuclAdClientId_
    , _auclAccountId = pAuclAccountId_
    , _auclKey = Nothing
    , _auclPageToken = Nothing
    , _auclOAuthToken = Nothing
    , _auclMaxResults = Nothing
    , _auclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auclQuotaUser :: Lens' AccountsURLChannelsList' (Maybe Text)
auclQuotaUser
  = lens _auclQuotaUser
      (\ s a -> s{_auclQuotaUser = a})

-- | Returns response with indentations and line breaks.
auclPrettyPrint :: Lens' AccountsURLChannelsList' Bool
auclPrettyPrint
  = lens _auclPrettyPrint
      (\ s a -> s{_auclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auclUserIP :: Lens' AccountsURLChannelsList' (Maybe Text)
auclUserIP
  = lens _auclUserIP (\ s a -> s{_auclUserIP = a})

-- | Ad client for which to list URL channels.
auclAdClientId :: Lens' AccountsURLChannelsList' Text
auclAdClientId
  = lens _auclAdClientId
      (\ s a -> s{_auclAdClientId = a})

-- | Account to which the ad client belongs.
auclAccountId :: Lens' AccountsURLChannelsList' Text
auclAccountId
  = lens _auclAccountId
      (\ s a -> s{_auclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auclKey :: Lens' AccountsURLChannelsList' (Maybe AuthKey)
auclKey = lens _auclKey (\ s a -> s{_auclKey = a})

-- | A continuation token, used to page through URL channels. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
auclPageToken :: Lens' AccountsURLChannelsList' (Maybe Text)
auclPageToken
  = lens _auclPageToken
      (\ s a -> s{_auclPageToken = a})

-- | OAuth 2.0 token for the current user.
auclOAuthToken :: Lens' AccountsURLChannelsList' (Maybe OAuthToken)
auclOAuthToken
  = lens _auclOAuthToken
      (\ s a -> s{_auclOAuthToken = a})

-- | The maximum number of URL channels to include in the response, used for
-- paging.
auclMaxResults :: Lens' AccountsURLChannelsList' (Maybe Word32)
auclMaxResults
  = lens _auclMaxResults
      (\ s a -> s{_auclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
auclFields :: Lens' AccountsURLChannelsList' (Maybe Text)
auclFields
  = lens _auclFields (\ s a -> s{_auclFields = a})

instance GoogleAuth AccountsURLChannelsList' where
        authKey = auclKey . _Just
        authToken = auclOAuthToken . _Just

instance GoogleRequest AccountsURLChannelsList' where
        type Rs AccountsURLChannelsList' = URLChannels
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsURLChannelsList'{..}
          = go _auclAccountId _auclAdClientId _auclPageToken
              _auclMaxResults
              _auclQuotaUser
              (Just _auclPrettyPrint)
              _auclUserIP
              _auclFields
              _auclKey
              _auclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsURLChannelsListResource)
                      r
                      u
