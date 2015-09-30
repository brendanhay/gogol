{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an order given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceordersGet@.
module AdExchangeBuyer.Marketplaceorders.Get
    (
    -- * REST Resource
      MarketplaceordersGetAPI

    -- * Creating a Request
    , marketplaceordersGet
    , MarketplaceordersGet

    -- * Request Lenses
    , marQuotaUser
    , marPrettyPrint
    , marUserIp
    , marKey
    , marOauthToken
    , marOrderId
    , marFields
    , marAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersGet@ which the
-- 'MarketplaceordersGet' request conforms to.
type MarketplaceordersGetAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Get '[JSON] MarketplaceOrder

-- | Get an order given its id
--
-- /See:/ 'marketplaceordersGet' smart constructor.
data MarketplaceordersGet = MarketplaceordersGet
    { _marQuotaUser   :: !(Maybe Text)
    , _marPrettyPrint :: !Bool
    , _marUserIp      :: !(Maybe Text)
    , _marKey         :: !(Maybe Text)
    , _marOauthToken  :: !(Maybe Text)
    , _marOrderId     :: !Text
    , _marFields      :: !(Maybe Text)
    , _marAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersGet'' with the minimum fields required to make a request.
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
-- * 'marOauthToken'
--
-- * 'marOrderId'
--
-- * 'marFields'
--
-- * 'marAlt'
marketplaceordersGet
    :: Text -- ^ 'orderId'
    -> MarketplaceordersGet
marketplaceordersGet pMarOrderId_ =
    MarketplaceordersGet
    { _marQuotaUser = Nothing
    , _marPrettyPrint = True
    , _marUserIp = Nothing
    , _marKey = Nothing
    , _marOauthToken = Nothing
    , _marOrderId = pMarOrderId_
    , _marFields = Nothing
    , _marAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
marQuotaUser :: Lens' MarketplaceordersGet' (Maybe Text)
marQuotaUser
  = lens _marQuotaUser (\ s a -> s{_marQuotaUser = a})

-- | Returns response with indentations and line breaks.
marPrettyPrint :: Lens' MarketplaceordersGet' Bool
marPrettyPrint
  = lens _marPrettyPrint
      (\ s a -> s{_marPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
marUserIp :: Lens' MarketplaceordersGet' (Maybe Text)
marUserIp
  = lens _marUserIp (\ s a -> s{_marUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
marKey :: Lens' MarketplaceordersGet' (Maybe Text)
marKey = lens _marKey (\ s a -> s{_marKey = a})

-- | OAuth 2.0 token for the current user.
marOauthToken :: Lens' MarketplaceordersGet' (Maybe Text)
marOauthToken
  = lens _marOauthToken
      (\ s a -> s{_marOauthToken = a})

-- | Id of the order to retrieve.
marOrderId :: Lens' MarketplaceordersGet' Text
marOrderId
  = lens _marOrderId (\ s a -> s{_marOrderId = a})

-- | Selector specifying which fields to include in a partial response.
marFields :: Lens' MarketplaceordersGet' (Maybe Text)
marFields
  = lens _marFields (\ s a -> s{_marFields = a})

-- | Data format for the response.
marAlt :: Lens' MarketplaceordersGet' Text
marAlt = lens _marAlt (\ s a -> s{_marAlt = a})

instance GoogleRequest MarketplaceordersGet' where
        type Rs MarketplaceordersGet' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersGet{..}
          = go _marQuotaUser _marPrettyPrint _marUserIp _marKey
              _marOauthToken
              _marOrderId
              _marFields
              _marAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersGetAPI)
                      r
                      u
