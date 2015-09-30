{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacedealsUpdate@.
module AdExchangeBuyer.Marketplacedeals.Update
    (
    -- * REST Resource
      MarketplacedealsUpdateAPI

    -- * Creating a Request
    , marketplacedealsUpdate
    , MarketplacedealsUpdate

    -- * Request Lenses
    , muuQuotaUser
    , muuPrettyPrint
    , muuUserIp
    , muuKey
    , muuOauthToken
    , muuOrderId
    , muuFields
    , muuAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacedealsUpdate@ which the
-- 'MarketplacedealsUpdate' request conforms to.
type MarketplacedealsUpdateAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "update" :> Post '[JSON] EditAllOrderDealsResponse

-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ 'marketplacedealsUpdate' smart constructor.
data MarketplacedealsUpdate = MarketplacedealsUpdate
    { _muuQuotaUser   :: !(Maybe Text)
    , _muuPrettyPrint :: !Bool
    , _muuUserIp      :: !(Maybe Text)
    , _muuKey         :: !(Maybe Text)
    , _muuOauthToken  :: !(Maybe Text)
    , _muuOrderId     :: !Text
    , _muuFields      :: !(Maybe Text)
    , _muuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muuQuotaUser'
--
-- * 'muuPrettyPrint'
--
-- * 'muuUserIp'
--
-- * 'muuKey'
--
-- * 'muuOauthToken'
--
-- * 'muuOrderId'
--
-- * 'muuFields'
--
-- * 'muuAlt'
marketplacedealsUpdate
    :: Text -- ^ 'orderId'
    -> MarketplacedealsUpdate
marketplacedealsUpdate pMuuOrderId_ =
    MarketplacedealsUpdate
    { _muuQuotaUser = Nothing
    , _muuPrettyPrint = True
    , _muuUserIp = Nothing
    , _muuKey = Nothing
    , _muuOauthToken = Nothing
    , _muuOrderId = pMuuOrderId_
    , _muuFields = Nothing
    , _muuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muuQuotaUser :: Lens' MarketplacedealsUpdate' (Maybe Text)
muuQuotaUser
  = lens _muuQuotaUser (\ s a -> s{_muuQuotaUser = a})

-- | Returns response with indentations and line breaks.
muuPrettyPrint :: Lens' MarketplacedealsUpdate' Bool
muuPrettyPrint
  = lens _muuPrettyPrint
      (\ s a -> s{_muuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muuUserIp :: Lens' MarketplacedealsUpdate' (Maybe Text)
muuUserIp
  = lens _muuUserIp (\ s a -> s{_muuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muuKey :: Lens' MarketplacedealsUpdate' (Maybe Text)
muuKey = lens _muuKey (\ s a -> s{_muuKey = a})

-- | OAuth 2.0 token for the current user.
muuOauthToken :: Lens' MarketplacedealsUpdate' (Maybe Text)
muuOauthToken
  = lens _muuOauthToken
      (\ s a -> s{_muuOauthToken = a})

-- | The orderId to edit deals on.
muuOrderId :: Lens' MarketplacedealsUpdate' Text
muuOrderId
  = lens _muuOrderId (\ s a -> s{_muuOrderId = a})

-- | Selector specifying which fields to include in a partial response.
muuFields :: Lens' MarketplacedealsUpdate' (Maybe Text)
muuFields
  = lens _muuFields (\ s a -> s{_muuFields = a})

-- | Data format for the response.
muuAlt :: Lens' MarketplacedealsUpdate' Text
muuAlt = lens _muuAlt (\ s a -> s{_muuAlt = a})

instance GoogleRequest MarketplacedealsUpdate' where
        type Rs MarketplacedealsUpdate' =
             EditAllOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsUpdate{..}
          = go _muuQuotaUser _muuPrettyPrint _muuUserIp _muuKey
              _muuOauthToken
              _muuOrderId
              _muuFields
              _muuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsUpdateAPI)
                      r
                      u
