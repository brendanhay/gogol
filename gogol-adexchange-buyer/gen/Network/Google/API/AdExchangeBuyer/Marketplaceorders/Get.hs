{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplaceorders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an order given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.get@.
module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Get
    (
    -- * REST Resource
      MarketplaceordersGetAPI

    -- * Creating a Request
    , marketplaceordersGet'
    , MarketplaceordersGet'

    -- * Request Lenses
    , mggQuotaUser
    , mggPrettyPrint
    , mggUserIp
    , mggKey
    , mggOauthToken
    , mggOrderId
    , mggFields
    , mggAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplaceorders.get which the
-- 'MarketplaceordersGet'' request conforms to.
type MarketplaceordersGetAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] MarketplaceOrder

-- | Get an order given its id
--
-- /See:/ 'marketplaceordersGet'' smart constructor.
data MarketplaceordersGet' = MarketplaceordersGet'
    { _mggQuotaUser   :: !(Maybe Text)
    , _mggPrettyPrint :: !Bool
    , _mggUserIp      :: !(Maybe Text)
    , _mggKey         :: !(Maybe Text)
    , _mggOauthToken  :: !(Maybe Text)
    , _mggOrderId     :: !Text
    , _mggFields      :: !(Maybe Text)
    , _mggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mggQuotaUser'
--
-- * 'mggPrettyPrint'
--
-- * 'mggUserIp'
--
-- * 'mggKey'
--
-- * 'mggOauthToken'
--
-- * 'mggOrderId'
--
-- * 'mggFields'
--
-- * 'mggAlt'
marketplaceordersGet'
    :: Text -- ^ 'orderId'
    -> MarketplaceordersGet'
marketplaceordersGet' pMggOrderId_ =
    MarketplaceordersGet'
    { _mggQuotaUser = Nothing
    , _mggPrettyPrint = True
    , _mggUserIp = Nothing
    , _mggKey = Nothing
    , _mggOauthToken = Nothing
    , _mggOrderId = pMggOrderId_
    , _mggFields = Nothing
    , _mggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mggQuotaUser :: Lens' MarketplaceordersGet' (Maybe Text)
mggQuotaUser
  = lens _mggQuotaUser (\ s a -> s{_mggQuotaUser = a})

-- | Returns response with indentations and line breaks.
mggPrettyPrint :: Lens' MarketplaceordersGet' Bool
mggPrettyPrint
  = lens _mggPrettyPrint
      (\ s a -> s{_mggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mggUserIp :: Lens' MarketplaceordersGet' (Maybe Text)
mggUserIp
  = lens _mggUserIp (\ s a -> s{_mggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mggKey :: Lens' MarketplaceordersGet' (Maybe Text)
mggKey = lens _mggKey (\ s a -> s{_mggKey = a})

-- | OAuth 2.0 token for the current user.
mggOauthToken :: Lens' MarketplaceordersGet' (Maybe Text)
mggOauthToken
  = lens _mggOauthToken
      (\ s a -> s{_mggOauthToken = a})

-- | Id of the order to retrieve.
mggOrderId :: Lens' MarketplaceordersGet' Text
mggOrderId
  = lens _mggOrderId (\ s a -> s{_mggOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mggFields :: Lens' MarketplaceordersGet' (Maybe Text)
mggFields
  = lens _mggFields (\ s a -> s{_mggFields = a})

-- | Data format for the response.
mggAlt :: Lens' MarketplaceordersGet' Alt
mggAlt = lens _mggAlt (\ s a -> s{_mggAlt = a})

instance GoogleRequest MarketplaceordersGet' where
        type Rs MarketplaceordersGet' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersGet'{..}
          = go _mggQuotaUser (Just _mggPrettyPrint) _mggUserIp
              _mggKey
              _mggOauthToken
              _mggOrderId
              _mggFields
              (Just _mggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersGetAPI)
                      r
                      u
