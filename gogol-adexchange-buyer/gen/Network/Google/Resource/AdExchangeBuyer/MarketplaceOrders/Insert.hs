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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create the given list of orders
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersInsert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
    (
    -- * REST Resource
      MarketplaceOrdersInsertResource

    -- * Creating a Request
    , marketplaceOrdersInsert'
    , MarketplaceOrdersInsert'

    -- * Request Lenses
    , moiQuotaUser
    , moiPrettyPrint
    , moiUserIP
    , moiPayload
    , moiKey
    , moiOAuthToken
    , moiFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersInsert@ method which the
-- 'MarketplaceOrdersInsert'' request conforms to.
type MarketplaceOrdersInsertResource =
     "marketplaceOrders" :>
       "insert" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateOrdersRequest :>
                         Post '[JSON] CreateOrdersResponse

-- | Create the given list of orders
--
-- /See:/ 'marketplaceOrdersInsert'' smart constructor.
data MarketplaceOrdersInsert' = MarketplaceOrdersInsert'
    { _moiQuotaUser   :: !(Maybe Text)
    , _moiPrettyPrint :: !Bool
    , _moiUserIP      :: !(Maybe Text)
    , _moiPayload     :: !CreateOrdersRequest
    , _moiKey         :: !(Maybe AuthKey)
    , _moiOAuthToken  :: !(Maybe OAuthToken)
    , _moiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moiQuotaUser'
--
-- * 'moiPrettyPrint'
--
-- * 'moiUserIP'
--
-- * 'moiPayload'
--
-- * 'moiKey'
--
-- * 'moiOAuthToken'
--
-- * 'moiFields'
marketplaceOrdersInsert'
    :: CreateOrdersRequest -- ^ 'payload'
    -> MarketplaceOrdersInsert'
marketplaceOrdersInsert' pMoiPayload_ =
    MarketplaceOrdersInsert'
    { _moiQuotaUser = Nothing
    , _moiPrettyPrint = True
    , _moiUserIP = Nothing
    , _moiPayload = pMoiPayload_
    , _moiKey = Nothing
    , _moiOAuthToken = Nothing
    , _moiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
moiQuotaUser :: Lens' MarketplaceOrdersInsert' (Maybe Text)
moiQuotaUser
  = lens _moiQuotaUser (\ s a -> s{_moiQuotaUser = a})

-- | Returns response with indentations and line breaks.
moiPrettyPrint :: Lens' MarketplaceOrdersInsert' Bool
moiPrettyPrint
  = lens _moiPrettyPrint
      (\ s a -> s{_moiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
moiUserIP :: Lens' MarketplaceOrdersInsert' (Maybe Text)
moiUserIP
  = lens _moiUserIP (\ s a -> s{_moiUserIP = a})

-- | Multipart request metadata.
moiPayload :: Lens' MarketplaceOrdersInsert' CreateOrdersRequest
moiPayload
  = lens _moiPayload (\ s a -> s{_moiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
moiKey :: Lens' MarketplaceOrdersInsert' (Maybe AuthKey)
moiKey = lens _moiKey (\ s a -> s{_moiKey = a})

-- | OAuth 2.0 token for the current user.
moiOAuthToken :: Lens' MarketplaceOrdersInsert' (Maybe OAuthToken)
moiOAuthToken
  = lens _moiOAuthToken
      (\ s a -> s{_moiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
moiFields :: Lens' MarketplaceOrdersInsert' (Maybe Text)
moiFields
  = lens _moiFields (\ s a -> s{_moiFields = a})

instance GoogleAuth MarketplaceOrdersInsert' where
        _AuthKey = moiKey . _Just
        _AuthToken = moiOAuthToken . _Just

instance GoogleRequest MarketplaceOrdersInsert' where
        type Rs MarketplaceOrdersInsert' =
             CreateOrdersResponse
        request = requestWith adExchangeBuyerRequest
        requestWith rq MarketplaceOrdersInsert'{..}
          = go _moiQuotaUser (Just _moiPrettyPrint) _moiUserIP
              _moiFields
              _moiKey
              _moiOAuthToken
              (Just AltJSON)
              _moiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy MarketplaceOrdersInsertResource)
                      rq
