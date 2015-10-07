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
    , ammlUserIP
    , ammlAccountId
    , ammlKey
    , ammlOAuthToken
    , ammlFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsMetadataMetricsList@ method which the
-- 'AccountsMetadataMetricsList'' request conforms to.
type AccountsMetadataMetricsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "metadata" :>
           "metrics" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdExchange account.
--
-- /See:/ 'accountsMetadataMetricsList'' smart constructor.
data AccountsMetadataMetricsList' = AccountsMetadataMetricsList'
    { _ammlQuotaUser   :: !(Maybe Text)
    , _ammlPrettyPrint :: !Bool
    , _ammlUserIP      :: !(Maybe Text)
    , _ammlAccountId   :: !Text
    , _ammlKey         :: !(Maybe AuthKey)
    , _ammlOAuthToken  :: !(Maybe OAuthToken)
    , _ammlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataMetricsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ammlQuotaUser'
--
-- * 'ammlPrettyPrint'
--
-- * 'ammlUserIP'
--
-- * 'ammlAccountId'
--
-- * 'ammlKey'
--
-- * 'ammlOAuthToken'
--
-- * 'ammlFields'
accountsMetadataMetricsList'
    :: Text -- ^ 'accountId'
    -> AccountsMetadataMetricsList'
accountsMetadataMetricsList' pAmmlAccountId_ =
    AccountsMetadataMetricsList'
    { _ammlQuotaUser = Nothing
    , _ammlPrettyPrint = True
    , _ammlUserIP = Nothing
    , _ammlAccountId = pAmmlAccountId_
    , _ammlKey = Nothing
    , _ammlOAuthToken = Nothing
    , _ammlFields = Nothing
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
ammlUserIP :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlUserIP
  = lens _ammlUserIP (\ s a -> s{_ammlUserIP = a})

-- | Account with visibility to the metrics.
ammlAccountId :: Lens' AccountsMetadataMetricsList' Text
ammlAccountId
  = lens _ammlAccountId
      (\ s a -> s{_ammlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ammlKey :: Lens' AccountsMetadataMetricsList' (Maybe AuthKey)
ammlKey = lens _ammlKey (\ s a -> s{_ammlKey = a})

-- | OAuth 2.0 token for the current user.
ammlOAuthToken :: Lens' AccountsMetadataMetricsList' (Maybe OAuthToken)
ammlOAuthToken
  = lens _ammlOAuthToken
      (\ s a -> s{_ammlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ammlFields :: Lens' AccountsMetadataMetricsList' (Maybe Text)
ammlFields
  = lens _ammlFields (\ s a -> s{_ammlFields = a})

instance GoogleAuth AccountsMetadataMetricsList'
         where
        _AuthKey = ammlKey . _Just
        _AuthToken = ammlOAuthToken . _Just

instance GoogleRequest AccountsMetadataMetricsList'
         where
        type Rs AccountsMetadataMetricsList' = Metadata
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsMetadataMetricsList'{..}
          = go _ammlAccountId _ammlQuotaUser
              (Just _ammlPrettyPrint)
              _ammlUserIP
              _ammlFields
              _ammlKey
              _ammlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsMetadataMetricsListResource)
                      rq
