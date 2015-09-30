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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create the given list of orders
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceordersInsert@.
module Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Insert
    (
    -- * REST Resource
      MarketplaceordersInsertResource

    -- * Creating a Request
    , marketplaceordersInsert'
    , MarketplaceordersInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miKey
    , miOauthToken
    , miFields
    , miAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersInsert@ which the
-- 'MarketplaceordersInsert'' request conforms to.
type MarketplaceordersInsertResource =
     "marketplaceOrders" :>
       "insert" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] CreateOrdersResponse

-- | Create the given list of orders
--
-- /See:/ 'marketplaceordersInsert'' smart constructor.
data MarketplaceordersInsert' = MarketplaceordersInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIp'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miFields'
--
-- * 'miAlt'
marketplaceordersInsert'
    :: MarketplaceordersInsert'
marketplaceordersInsert' =
    MarketplaceordersInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miFields = Nothing
    , _miAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MarketplaceordersInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MarketplaceordersInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIp :: Lens' MarketplaceordersInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MarketplaceordersInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MarketplaceordersInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MarketplaceordersInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MarketplaceordersInsert' Alt
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MarketplaceordersInsert' where
        type Rs MarketplaceordersInsert' =
             CreateOrdersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersInsert'{..}
          = go _miQuotaUser (Just _miPrettyPrint) _miUserIp
              _miKey
              _miOauthToken
              _miFields
              (Just _miAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersInsertResource)
                      r
                      u
