{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdExchangeBuyer.Marketplaceorders.Insert
    (
    -- * REST Resource
      MarketplaceordersInsertAPI

    -- * Creating a Request
    , marketplaceordersInsert
    , MarketplaceordersInsert

    -- * Request Lenses
    , mQuotaUser
    , mPrettyPrint
    , mUserIp
    , mKey
    , mOauthToken
    , mFields
    , mAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersInsert@ which the
-- 'MarketplaceordersInsert' request conforms to.
type MarketplaceordersInsertAPI =
     "marketplaceOrders" :>
       "insert" :> Post '[JSON] CreateOrdersResponse

-- | Create the given list of orders
--
-- /See:/ 'marketplaceordersInsert' smart constructor.
data MarketplaceordersInsert = MarketplaceordersInsert
    { _mQuotaUser   :: !(Maybe Text)
    , _mPrettyPrint :: !Bool
    , _mUserIp      :: !(Maybe Text)
    , _mKey         :: !(Maybe Text)
    , _mOauthToken  :: !(Maybe Text)
    , _mFields      :: !(Maybe Text)
    , _mAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mQuotaUser'
--
-- * 'mPrettyPrint'
--
-- * 'mUserIp'
--
-- * 'mKey'
--
-- * 'mOauthToken'
--
-- * 'mFields'
--
-- * 'mAlt'
marketplaceordersInsert
    :: MarketplaceordersInsert
marketplaceordersInsert =
    MarketplaceordersInsert
    { _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mUserIp = Nothing
    , _mKey = Nothing
    , _mOauthToken = Nothing
    , _mFields = Nothing
    , _mAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MarketplaceordersInsert' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MarketplaceordersInsert' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIp :: Lens' MarketplaceordersInsert' (Maybe Text)
mUserIp = lens _mUserIp (\ s a -> s{_mUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MarketplaceordersInsert' (Maybe Text)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | OAuth 2.0 token for the current user.
mOauthToken :: Lens' MarketplaceordersInsert' (Maybe Text)
mOauthToken
  = lens _mOauthToken (\ s a -> s{_mOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MarketplaceordersInsert' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

-- | Data format for the response.
mAlt :: Lens' MarketplaceordersInsert' Text
mAlt = lens _mAlt (\ s a -> s{_mAlt = a})

instance GoogleRequest MarketplaceordersInsert' where
        type Rs MarketplaceordersInsert' =
             CreateOrdersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersInsert{..}
          = go _mQuotaUser _mPrettyPrint _mUserIp _mKey
              _mOauthToken
              _mFields
              _mAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersInsertAPI)
                      r
                      u
