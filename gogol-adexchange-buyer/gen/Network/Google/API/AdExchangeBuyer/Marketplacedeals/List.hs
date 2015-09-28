{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplacedeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the deals for a given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.list@.
module Network.Google.API.AdExchangeBuyer.Marketplacedeals.List
    (
    -- * REST Resource
      MarketplacedealsListAPI

    -- * Creating a Request
    , marketplacedealsList'
    , MarketplacedealsList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlUserIp
    , mlKey
    , mlOauthToken
    , mlOrderId
    , mlFields
    , mlAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplacedeals.list which the
-- 'MarketplacedealsList'' request conforms to.
type MarketplacedealsListAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given order
--
-- /See:/ 'marketplacedealsList'' smart constructor.
data MarketplacedealsList' = MarketplacedealsList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlUserIp      :: !(Maybe Text)
    , _mlKey         :: !(Maybe Text)
    , _mlOauthToken  :: !(Maybe Text)
    , _mlOrderId     :: !Text
    , _mlFields      :: !(Maybe Text)
    , _mlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlUserIp'
--
-- * 'mlKey'
--
-- * 'mlOauthToken'
--
-- * 'mlOrderId'
--
-- * 'mlFields'
--
-- * 'mlAlt'
marketplacedealsList'
    :: Text -- ^ 'orderId'
    -> MarketplacedealsList'
marketplacedealsList' pMlOrderId_ =
    MarketplacedealsList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlUserIp = Nothing
    , _mlKey = Nothing
    , _mlOauthToken = Nothing
    , _mlOrderId = pMlOrderId_
    , _mlFields = Nothing
    , _mlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MarketplacedealsList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MarketplacedealsList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIp :: Lens' MarketplacedealsList' (Maybe Text)
mlUserIp = lens _mlUserIp (\ s a -> s{_mlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MarketplacedealsList' (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | OAuth 2.0 token for the current user.
mlOauthToken :: Lens' MarketplacedealsList' (Maybe Text)
mlOauthToken
  = lens _mlOauthToken (\ s a -> s{_mlOauthToken = a})

-- | The orderId to get deals for.
mlOrderId :: Lens' MarketplacedealsList' Text
mlOrderId
  = lens _mlOrderId (\ s a -> s{_mlOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MarketplacedealsList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | Data format for the response.
mlAlt :: Lens' MarketplacedealsList' Alt
mlAlt = lens _mlAlt (\ s a -> s{_mlAlt = a})

instance GoogleRequest MarketplacedealsList' where
        type Rs MarketplacedealsList' = GetOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsList'{..}
          = go _mlQuotaUser (Just _mlPrettyPrint) _mlUserIp
              _mlKey
              _mlOauthToken
              _mlOrderId
              _mlFields
              (Just _mlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsListAPI)
                      r
                      u
