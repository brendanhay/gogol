{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplacedeals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add new deals for the specified order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.insert@.
module Network.Google.API.AdExchangeBuyer.Marketplacedeals.Insert
    (
    -- * REST Resource
      MarketplacedealsInsertAPI

    -- * Creating a Request
    , marketplacedealsInsert'
    , MarketplacedealsInsert'

    -- * Request Lenses
    , miiQuotaUser
    , miiPrettyPrint
    , miiUserIp
    , miiKey
    , miiOauthToken
    , miiOrderId
    , miiFields
    , miiAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplacedeals.insert which the
-- 'MarketplacedealsInsert'' request conforms to.
type MarketplacedealsInsertAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "insert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] AddOrderDealsResponse

-- | Add new deals for the specified order
--
-- /See:/ 'marketplacedealsInsert'' smart constructor.
data MarketplacedealsInsert' = MarketplacedealsInsert'
    { _miiQuotaUser   :: !(Maybe Text)
    , _miiPrettyPrint :: !Bool
    , _miiUserIp      :: !(Maybe Text)
    , _miiKey         :: !(Maybe Text)
    , _miiOauthToken  :: !(Maybe Text)
    , _miiOrderId     :: !Text
    , _miiFields      :: !(Maybe Text)
    , _miiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miiQuotaUser'
--
-- * 'miiPrettyPrint'
--
-- * 'miiUserIp'
--
-- * 'miiKey'
--
-- * 'miiOauthToken'
--
-- * 'miiOrderId'
--
-- * 'miiFields'
--
-- * 'miiAlt'
marketplacedealsInsert'
    :: Text -- ^ 'orderId'
    -> MarketplacedealsInsert'
marketplacedealsInsert' pMiiOrderId_ =
    MarketplacedealsInsert'
    { _miiQuotaUser = Nothing
    , _miiPrettyPrint = True
    , _miiUserIp = Nothing
    , _miiKey = Nothing
    , _miiOauthToken = Nothing
    , _miiOrderId = pMiiOrderId_
    , _miiFields = Nothing
    , _miiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miiQuotaUser :: Lens' MarketplacedealsInsert' (Maybe Text)
miiQuotaUser
  = lens _miiQuotaUser (\ s a -> s{_miiQuotaUser = a})

-- | Returns response with indentations and line breaks.
miiPrettyPrint :: Lens' MarketplacedealsInsert' Bool
miiPrettyPrint
  = lens _miiPrettyPrint
      (\ s a -> s{_miiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miiUserIp :: Lens' MarketplacedealsInsert' (Maybe Text)
miiUserIp
  = lens _miiUserIp (\ s a -> s{_miiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miiKey :: Lens' MarketplacedealsInsert' (Maybe Text)
miiKey = lens _miiKey (\ s a -> s{_miiKey = a})

-- | OAuth 2.0 token for the current user.
miiOauthToken :: Lens' MarketplacedealsInsert' (Maybe Text)
miiOauthToken
  = lens _miiOauthToken
      (\ s a -> s{_miiOauthToken = a})

-- | OrderId for which deals need to be added.
miiOrderId :: Lens' MarketplacedealsInsert' Text
miiOrderId
  = lens _miiOrderId (\ s a -> s{_miiOrderId = a})

-- | Selector specifying which fields to include in a partial response.
miiFields :: Lens' MarketplacedealsInsert' (Maybe Text)
miiFields
  = lens _miiFields (\ s a -> s{_miiFields = a})

-- | Data format for the response.
miiAlt :: Lens' MarketplacedealsInsert' Alt
miiAlt = lens _miiAlt (\ s a -> s{_miiAlt = a})

instance GoogleRequest MarketplacedealsInsert' where
        type Rs MarketplacedealsInsert' =
             AddOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsInsert'{..}
          = go _miiQuotaUser (Just _miiPrettyPrint) _miiUserIp
              _miiKey
              _miiOauthToken
              _miiOrderId
              _miiFields
              (Just _miiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsInsertAPI)
                      r
                      u
