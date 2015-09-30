{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the specified deals from the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacedealsDelete@.
module AdExchangeBuyer.Marketplacedeals.Delete
    (
    -- * REST Resource
      MarketplacedealsDeleteAPI

    -- * Creating a Request
    , marketplacedealsDelete
    , MarketplacedealsDelete

    -- * Request Lenses
    , mddQuotaUser
    , mddPrettyPrint
    , mddUserIp
    , mddKey
    , mddOauthToken
    , mddOrderId
    , mddFields
    , mddAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacedealsDelete@ which the
-- 'MarketplacedealsDelete' request conforms to.
type MarketplacedealsDeleteAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "delete" :> Post '[JSON] DeleteOrderDealsResponse

-- | Delete the specified deals from the order
--
-- /See:/ 'marketplacedealsDelete' smart constructor.
data MarketplacedealsDelete = MarketplacedealsDelete
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddPrettyPrint :: !Bool
    , _mddUserIp      :: !(Maybe Text)
    , _mddKey         :: !(Maybe Text)
    , _mddOauthToken  :: !(Maybe Text)
    , _mddOrderId     :: !Text
    , _mddFields      :: !(Maybe Text)
    , _mddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddQuotaUser'
--
-- * 'mddPrettyPrint'
--
-- * 'mddUserIp'
--
-- * 'mddKey'
--
-- * 'mddOauthToken'
--
-- * 'mddOrderId'
--
-- * 'mddFields'
--
-- * 'mddAlt'
marketplacedealsDelete
    :: Text -- ^ 'orderId'
    -> MarketplacedealsDelete
marketplacedealsDelete pMddOrderId_ =
    MarketplacedealsDelete
    { _mddQuotaUser = Nothing
    , _mddPrettyPrint = True
    , _mddUserIp = Nothing
    , _mddKey = Nothing
    , _mddOauthToken = Nothing
    , _mddOrderId = pMddOrderId_
    , _mddFields = Nothing
    , _mddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mddQuotaUser :: Lens' MarketplacedealsDelete' (Maybe Text)
mddQuotaUser
  = lens _mddQuotaUser (\ s a -> s{_mddQuotaUser = a})

-- | Returns response with indentations and line breaks.
mddPrettyPrint :: Lens' MarketplacedealsDelete' Bool
mddPrettyPrint
  = lens _mddPrettyPrint
      (\ s a -> s{_mddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mddUserIp :: Lens' MarketplacedealsDelete' (Maybe Text)
mddUserIp
  = lens _mddUserIp (\ s a -> s{_mddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MarketplacedealsDelete' (Maybe Text)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOauthToken :: Lens' MarketplacedealsDelete' (Maybe Text)
mddOauthToken
  = lens _mddOauthToken
      (\ s a -> s{_mddOauthToken = a})

-- | The orderId to delete deals from.
mddOrderId :: Lens' MarketplacedealsDelete' Text
mddOrderId
  = lens _mddOrderId (\ s a -> s{_mddOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MarketplacedealsDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

-- | Data format for the response.
mddAlt :: Lens' MarketplacedealsDelete' Text
mddAlt = lens _mddAlt (\ s a -> s{_mddAlt = a})

instance GoogleRequest MarketplacedealsDelete' where
        type Rs MarketplacedealsDelete' =
             DeleteOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsDelete{..}
          = go _mddQuotaUser _mddPrettyPrint _mddUserIp _mddKey
              _mddOauthToken
              _mddOrderId
              _mddFields
              _mddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsDeleteAPI)
                      r
                      u
