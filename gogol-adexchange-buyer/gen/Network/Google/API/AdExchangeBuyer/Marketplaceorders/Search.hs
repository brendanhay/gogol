{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplaceorders.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search for orders using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.search@.
module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Search
    (
    -- * REST Resource
      MarketplaceordersSearchAPI

    -- * Creating a Request
    , marketplaceordersSearch'
    , MarketplaceordersSearch'

    -- * Request Lenses
    , marQuotaUser
    , marPrettyPrint
    , marUserIp
    , marKey
    , marPqlQuery
    , marOauthToken
    , marFields
    , marAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplaceorders.search which the
-- 'MarketplaceordersSearch'' request conforms to.
type MarketplaceordersSearchAPI =
     "marketplaceOrders" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pqlQuery" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] GetOrdersResponse

-- | Search for orders using pql query
--
-- /See:/ 'marketplaceordersSearch'' smart constructor.
data MarketplaceordersSearch' = MarketplaceordersSearch'
    { _marQuotaUser   :: !(Maybe Text)
    , _marPrettyPrint :: !Bool
    , _marUserIp      :: !(Maybe Text)
    , _marKey         :: !(Maybe Text)
    , _marPqlQuery    :: !(Maybe Text)
    , _marOauthToken  :: !(Maybe Text)
    , _marFields      :: !(Maybe Text)
    , _marAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'marQuotaUser'
--
-- * 'marPrettyPrint'
--
-- * 'marUserIp'
--
-- * 'marKey'
--
-- * 'marPqlQuery'
--
-- * 'marOauthToken'
--
-- * 'marFields'
--
-- * 'marAlt'
marketplaceordersSearch'
    :: MarketplaceordersSearch'
marketplaceordersSearch' =
    MarketplaceordersSearch'
    { _marQuotaUser = Nothing
    , _marPrettyPrint = True
    , _marUserIp = Nothing
    , _marKey = Nothing
    , _marPqlQuery = Nothing
    , _marOauthToken = Nothing
    , _marFields = Nothing
    , _marAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
marQuotaUser :: Lens' MarketplaceordersSearch' (Maybe Text)
marQuotaUser
  = lens _marQuotaUser (\ s a -> s{_marQuotaUser = a})

-- | Returns response with indentations and line breaks.
marPrettyPrint :: Lens' MarketplaceordersSearch' Bool
marPrettyPrint
  = lens _marPrettyPrint
      (\ s a -> s{_marPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
marUserIp :: Lens' MarketplaceordersSearch' (Maybe Text)
marUserIp
  = lens _marUserIp (\ s a -> s{_marUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
marKey :: Lens' MarketplaceordersSearch' (Maybe Text)
marKey = lens _marKey (\ s a -> s{_marKey = a})

-- | Query string to retrieve specific orders.
marPqlQuery :: Lens' MarketplaceordersSearch' (Maybe Text)
marPqlQuery
  = lens _marPqlQuery (\ s a -> s{_marPqlQuery = a})

-- | OAuth 2.0 token for the current user.
marOauthToken :: Lens' MarketplaceordersSearch' (Maybe Text)
marOauthToken
  = lens _marOauthToken
      (\ s a -> s{_marOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
marFields :: Lens' MarketplaceordersSearch' (Maybe Text)
marFields
  = lens _marFields (\ s a -> s{_marFields = a})

-- | Data format for the response.
marAlt :: Lens' MarketplaceordersSearch' Alt
marAlt = lens _marAlt (\ s a -> s{_marAlt = a})

instance GoogleRequest MarketplaceordersSearch' where
        type Rs MarketplaceordersSearch' = GetOrdersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersSearch'{..}
          = go _marQuotaUser (Just _marPrettyPrint) _marUserIp
              _marKey
              _marPqlQuery
              _marOauthToken
              _marFields
              (Just _marAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersSearchAPI)
                      r
                      u
