{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an order given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersGet@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
    (
    -- * REST Resource
      MarketplaceOrdersGetResource

    -- * Creating a Request
    , marketplaceOrdersGet'
    , MarketplaceOrdersGet'

    -- * Request Lenses
    , mQuotaUser
    , mPrettyPrint
    , mUserIP
    , mKey
    , mOAuthToken
    , mOrderId
    , mFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersGet@ which the
-- 'MarketplaceOrdersGet'' request conforms to.
type MarketplaceOrdersGetResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] MarketplaceOrder

-- | Get an order given its id
--
-- /See:/ 'marketplaceOrdersGet'' smart constructor.
data MarketplaceOrdersGet' = MarketplaceOrdersGet'
    { _mQuotaUser   :: !(Maybe Text)
    , _mPrettyPrint :: !Bool
    , _mUserIP      :: !(Maybe Text)
    , _mKey         :: !(Maybe AuthKey)
    , _mOAuthToken  :: !(Maybe OAuthToken)
    , _mOrderId     :: !Text
    , _mFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mQuotaUser'
--
-- * 'mPrettyPrint'
--
-- * 'mUserIP'
--
-- * 'mKey'
--
-- * 'mOAuthToken'
--
-- * 'mOrderId'
--
-- * 'mFields'
marketplaceOrdersGet'
    :: Text -- ^ 'orderId'
    -> MarketplaceOrdersGet'
marketplaceOrdersGet' pMOrderId_ =
    MarketplaceOrdersGet'
    { _mQuotaUser = Nothing
    , _mPrettyPrint = True
    , _mUserIP = Nothing
    , _mKey = Nothing
    , _mOAuthToken = Nothing
    , _mOrderId = pMOrderId_
    , _mFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mQuotaUser :: Lens' MarketplaceOrdersGet' (Maybe Text)
mQuotaUser
  = lens _mQuotaUser (\ s a -> s{_mQuotaUser = a})

-- | Returns response with indentations and line breaks.
mPrettyPrint :: Lens' MarketplaceOrdersGet' Bool
mPrettyPrint
  = lens _mPrettyPrint (\ s a -> s{_mPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mUserIP :: Lens' MarketplaceOrdersGet' (Maybe Text)
mUserIP = lens _mUserIP (\ s a -> s{_mUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mKey :: Lens' MarketplaceOrdersGet' (Maybe AuthKey)
mKey = lens _mKey (\ s a -> s{_mKey = a})

-- | OAuth 2.0 token for the current user.
mOAuthToken :: Lens' MarketplaceOrdersGet' (Maybe OAuthToken)
mOAuthToken
  = lens _mOAuthToken (\ s a -> s{_mOAuthToken = a})

-- | Id of the order to retrieve.
mOrderId :: Lens' MarketplaceOrdersGet' Text
mOrderId = lens _mOrderId (\ s a -> s{_mOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mFields :: Lens' MarketplaceOrdersGet' (Maybe Text)
mFields = lens _mFields (\ s a -> s{_mFields = a})

instance GoogleAuth MarketplaceOrdersGet' where
        authKey = mKey . _Just
        authToken = mOAuthToken . _Just

instance GoogleRequest MarketplaceOrdersGet' where
        type Rs MarketplaceOrdersGet' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceOrdersGet'{..}
          = go _mOrderId _mQuotaUser (Just _mPrettyPrint)
              _mUserIP
              _mFields
              _mKey
              _mOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceOrdersGetResource)
                      r
                      u
