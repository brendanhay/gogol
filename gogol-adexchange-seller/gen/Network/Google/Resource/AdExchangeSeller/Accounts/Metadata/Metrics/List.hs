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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsMetadataMetricsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Metrics.List
    (
    -- * REST Resource
      AccountsMetadataMetricsListResource

    -- * Creating a Request
    , accountsMetadataMetricsList'
    , AccountsMetadataMetricsList'

    -- * Request Lenses
    , ammlQuotaUser
    , ammlPrettyPrint
    , ammlUserIp
    , ammlAccountId
    , ammlKey
    , ammlOauthToken
    , ammlFields
    , ammlAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsMetadataMetricsList@ which the
-- 'AccountsMetadataMetricsList'' request conforms to.
type AccountsMetadataMetricsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "metadata" :>
           "metrics" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ 'accountsMetadataMetricsList'' smart constructor.
data AccountsMetadataMetricsList' = AccountsMetadataMetricsList'
    { _ammlQuotaUser   :: !(Maybe Text)
    , _ammlPrettyPrint :: !Bool
    , _ammlUserIp      :: !(Maybe Text)
    , _ammlAccountId   :: !Text
    , _ammlKey         :: !(Maybe Text)
    , _ammlOauthToken  :: !(Maybe Text)
    , _ammlFields      :: !(Maybe Text)
    , _ammlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ammlQuotaUser'
--
-- * 'ammlPrettyPrint'
--
-- * 'ammlUserIp'
--
-- * 'ammlAccountId'
--
-- * 'ammlKey'
--
-- * 'ammlOauthToken'
--
-- * 'ammlFields'
--
-- * 'ammlAlt'
accountsMetadataMetricsList'
    :: Text -- ^ 'accountId'
    -> AccountsMetadataMetricsList'
accountsMetadataMetricsList' pAmmlAccountId_ =
    AccountsMetadataMetricsList'
    { _ammlQuotaUser = Nothing
    , _ammlPrettyPrint = True
    , _ammlUserIp = Nothing
    , _ammlAccountId = pAmmlAccountId_
    , _ammlKey = Nothing
    , _ammlOauthToken = Nothing
    , _ammlFields = Nothing
    , _ammlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ammlQuotaUser :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlQuotaUser
  = lens _ammlQuotaUser
      (\ s a -> s{_ammlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ammlPrettyPrint :: Lens' AccountsMetadataMetricsList' Bool
ammlPrettyPrint
  = lens _ammlPrettyPrint
      (\ s a -> s{_ammlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ammlUserIp :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlUserIp
  = lens _ammlUserIp (\ s a -> s{_ammlUserIp = a})

-- | Account with visibility to the metrics.
ammlAccountId :: Lens' AccountsMetadataMetricsList' Text
ammlAccountId
  = lens _ammlAccountId
      (\ s a -> s{_ammlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ammlKey :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlKey = lens _ammlKey (\ s a -> s{_ammlKey = a})

-- | OAuth 2.0 token for the current user.
ammlOauthToken :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlOauthToken
  = lens _ammlOauthToken
      (\ s a -> s{_ammlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ammlFields :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlFields
  = lens _ammlFields (\ s a -> s{_ammlFields = a})

-- | Data format for the response.
ammlAlt :: Lens' AccountsMetadataMetricsList' Alt
ammlAlt = lens _ammlAlt (\ s a -> s{_ammlAlt = a})

instance GoogleRequest AccountsMetadataMetricsList'
         where
        type Rs AccountsMetadataMetricsList' = Metadata
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsMetadataMetricsList'{..}
          = go _ammlQuotaUser (Just _ammlPrettyPrint)
              _ammlUserIp
              _ammlAccountId
              _ammlKey
              _ammlOauthToken
              _ammlFields
              (Just _ammlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsMetadataMetricsListResource)
                      r
                      u
