{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the deals for a given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacedealsList@.
module AdExchangeBuyer.Marketplacedeals.List
    (
    -- * REST Resource
      MarketplacedealsListAPI

    -- * Creating a Request
    , marketplacedealsList
    , MarketplacedealsList

    -- * Request Lenses
    , mllQuotaUser
    , mllPrettyPrint
    , mllUserIp
    , mllKey
    , mllOauthToken
    , mllOrderId
    , mllFields
    , mllAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacedealsList@ which the
-- 'MarketplacedealsList' request conforms to.
type MarketplacedealsListAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :> Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given order
--
-- /See:/ 'marketplacedealsList' smart constructor.
data MarketplacedealsList = MarketplacedealsList
    { _mllQuotaUser   :: !(Maybe Text)
    , _mllPrettyPrint :: !Bool
    , _mllUserIp      :: !(Maybe Text)
    , _mllKey         :: !(Maybe Text)
    , _mllOauthToken  :: !(Maybe Text)
    , _mllOrderId     :: !Text
    , _mllFields      :: !(Maybe Text)
    , _mllAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mllQuotaUser'
--
-- * 'mllPrettyPrint'
--
-- * 'mllUserIp'
--
-- * 'mllKey'
--
-- * 'mllOauthToken'
--
-- * 'mllOrderId'
--
-- * 'mllFields'
--
-- * 'mllAlt'
marketplacedealsList
    :: Text -- ^ 'orderId'
    -> MarketplacedealsList
marketplacedealsList pMllOrderId_ =
    MarketplacedealsList
    { _mllQuotaUser = Nothing
    , _mllPrettyPrint = True
    , _mllUserIp = Nothing
    , _mllKey = Nothing
    , _mllOauthToken = Nothing
    , _mllOrderId = pMllOrderId_
    , _mllFields = Nothing
    , _mllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mllQuotaUser :: Lens' MarketplacedealsList' (Maybe Text)
mllQuotaUser
  = lens _mllQuotaUser (\ s a -> s{_mllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mllPrettyPrint :: Lens' MarketplacedealsList' Bool
mllPrettyPrint
  = lens _mllPrettyPrint
      (\ s a -> s{_mllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mllUserIp :: Lens' MarketplacedealsList' (Maybe Text)
mllUserIp
  = lens _mllUserIp (\ s a -> s{_mllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mllKey :: Lens' MarketplacedealsList' (Maybe Text)
mllKey = lens _mllKey (\ s a -> s{_mllKey = a})

-- | OAuth 2.0 token for the current user.
mllOauthToken :: Lens' MarketplacedealsList' (Maybe Text)
mllOauthToken
  = lens _mllOauthToken
      (\ s a -> s{_mllOauthToken = a})

-- | The orderId to get deals for.
mllOrderId :: Lens' MarketplacedealsList' Text
mllOrderId
  = lens _mllOrderId (\ s a -> s{_mllOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mllFields :: Lens' MarketplacedealsList' (Maybe Text)
mllFields
  = lens _mllFields (\ s a -> s{_mllFields = a})

-- | Data format for the response.
mllAlt :: Lens' MarketplacedealsList' Text
mllAlt = lens _mllAlt (\ s a -> s{_mllAlt = a})

instance GoogleRequest MarketplacedealsList' where
        type Rs MarketplacedealsList' = GetOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsList{..}
          = go _mllQuotaUser _mllPrettyPrint _mllUserIp _mllKey
              _mllOauthToken
              _mllOrderId
              _mllFields
              _mllAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsListAPI)
                      r
                      u
