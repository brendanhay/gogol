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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Adclients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad clients in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsAdclientsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Adclients.List
    (
    -- * REST Resource
      AccountsAdclientsListResource

    -- * Creating a Request
    , accountsAdclientsList'
    , AccountsAdclientsList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aAccountId
    , aKey
    , aPageToken
    , aOauthToken
    , aMaxResults
    , aFields
    , aAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsAdclientsList@ which the
-- 'AccountsAdclientsList'' request conforms to.
type AccountsAdclientsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AdClients

-- | List all ad clients in this Ad Exchange account.
--
-- /See:/ 'accountsAdclientsList'' smart constructor.
data AccountsAdclientsList' = AccountsAdclientsList'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aAccountId   :: !Text
    , _aKey         :: !(Maybe Text)
    , _aPageToken   :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aMaxResults  :: !(Maybe Word32)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aPageToken'
--
-- * 'aOauthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
--
-- * 'aAlt'
accountsAdclientsList'
    :: Text -- ^ 'accountId'
    -> AccountsAdclientsList'
accountsAdclientsList' pAAccountId_ =
    AccountsAdclientsList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aPageToken = Nothing
    , _aOauthToken = Nothing
    , _aMaxResults = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccountsAdclientsList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccountsAdclientsList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AccountsAdclientsList' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | Account to which the ad client belongs.
aAccountId :: Lens' AccountsAdclientsList' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsAdclientsList' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aPageToken :: Lens' AccountsAdclientsList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AccountsAdclientsList' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aMaxResults :: Lens' AccountsAdclientsList' (Maybe Word32)
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsAdclientsList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AccountsAdclientsList' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AccountsAdclientsList' where
        type Rs AccountsAdclientsList' = AdClients
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsAdclientsList'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aAccountId
              _aKey
              _aPageToken
              _aOauthToken
              _aMaxResults
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsListResource)
                      r
                      u
