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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search for orders using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersSearch@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
    (
    -- * REST Resource
      MarketplaceOrdersSearchResource

    -- * Creating a Request
    , marketplaceOrdersSearch'
    , MarketplaceOrdersSearch'

    -- * Request Lenses
    , marQuotaUser
    , marPrettyPrint
    , marUserIP
    , marKey
    , marPqlQuery
    , marOAuthToken
    , marFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersSearch@ which the
-- 'MarketplaceOrdersSearch'' request conforms to.
type MarketplaceOrdersSearchResource =
     "marketplaceOrders" :>
       "search" :>
         QueryParam "pqlQuery" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetOrdersResponse

-- | Search for orders using pql query
--
-- /See:/ 'marketplaceOrdersSearch'' smart constructor.
data MarketplaceOrdersSearch' = MarketplaceOrdersSearch'
    { _marQuotaUser   :: !(Maybe Text)
    , _marPrettyPrint :: !Bool
    , _marUserIP      :: !(Maybe Text)
    , _marKey         :: !(Maybe AuthKey)
    , _marPqlQuery    :: !(Maybe Text)
    , _marOAuthToken  :: !(Maybe OAuthToken)
    , _marFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'marQuotaUser'
--
-- * 'marPrettyPrint'
--
-- * 'marUserIP'
--
-- * 'marKey'
--
-- * 'marPqlQuery'
--
-- * 'marOAuthToken'
--
-- * 'marFields'
marketplaceOrdersSearch'
    :: MarketplaceOrdersSearch'
marketplaceOrdersSearch' =
    MarketplaceOrdersSearch'
    { _marQuotaUser = Nothing
    , _marPrettyPrint = True
    , _marUserIP = Nothing
    , _marKey = Nothing
    , _marPqlQuery = Nothing
    , _marOAuthToken = Nothing
    , _marFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
marQuotaUser :: Lens' MarketplaceOrdersSearch' (Maybe Text)
marQuotaUser
  = lens _marQuotaUser (\ s a -> s{_marQuotaUser = a})

-- | Returns response with indentations and line breaks.
marPrettyPrint :: Lens' MarketplaceOrdersSearch' Bool
marPrettyPrint
  = lens _marPrettyPrint
      (\ s a -> s{_marPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
marUserIP :: Lens' MarketplaceOrdersSearch' (Maybe Text)
marUserIP
  = lens _marUserIP (\ s a -> s{_marUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
marKey :: Lens' MarketplaceOrdersSearch' (Maybe AuthKey)
marKey = lens _marKey (\ s a -> s{_marKey = a})

-- | Query string to retrieve specific orders.
marPqlQuery :: Lens' MarketplaceOrdersSearch' (Maybe Text)
marPqlQuery
  = lens _marPqlQuery (\ s a -> s{_marPqlQuery = a})

-- | OAuth 2.0 token for the current user.
marOAuthToken :: Lens' MarketplaceOrdersSearch' (Maybe OAuthToken)
marOAuthToken
  = lens _marOAuthToken
      (\ s a -> s{_marOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
marFields :: Lens' MarketplaceOrdersSearch' (Maybe Text)
marFields
  = lens _marFields (\ s a -> s{_marFields = a})

instance GoogleAuth MarketplaceOrdersSearch' where
        _AuthKey = marKey . _Just
        _AuthToken = marOAuthToken . _Just

instance GoogleRequest MarketplaceOrdersSearch' where
        type Rs MarketplaceOrdersSearch' = GetOrdersResponse
        request = requestWith adExchangeBuyerRequest
        requestWith rq MarketplaceOrdersSearch'{..}
          = go _marPqlQuery _marQuotaUser
              (Just _marPrettyPrint)
              _marUserIP
              _marFields
              _marKey
              _marOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MarketplaceOrdersSearchResource)
                      rq
