{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the deals for a given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsList@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
    (
    -- * REST Resource
      MarketplaceDealsListResource

    -- * Creating a Request
    , marketplaceDealsList'
    , MarketplaceDealsList'

    -- * Request Lenses
    , mdlQuotaUser
    , mdlPrettyPrint
    , mdlUserIP
    , mdlKey
    , mdlOAuthToken
    , mdlOrderId
    , mdlFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsList@ which the
-- 'MarketplaceDealsList'' request conforms to.
type MarketplaceDealsListResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given order
--
-- /See:/ 'marketplaceDealsList'' smart constructor.
data MarketplaceDealsList' = MarketplaceDealsList'
    { _mdlQuotaUser   :: !(Maybe Text)
    , _mdlPrettyPrint :: !Bool
    , _mdlUserIP      :: !(Maybe Text)
    , _mdlKey         :: !(Maybe Key)
    , _mdlOAuthToken  :: !(Maybe OAuthToken)
    , _mdlOrderId     :: !Text
    , _mdlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlQuotaUser'
--
-- * 'mdlPrettyPrint'
--
-- * 'mdlUserIP'
--
-- * 'mdlKey'
--
-- * 'mdlOAuthToken'
--
-- * 'mdlOrderId'
--
-- * 'mdlFields'
marketplaceDealsList'
    :: Text -- ^ 'orderId'
    -> MarketplaceDealsList'
marketplaceDealsList' pMdlOrderId_ =
    MarketplaceDealsList'
    { _mdlQuotaUser = Nothing
    , _mdlPrettyPrint = True
    , _mdlUserIP = Nothing
    , _mdlKey = Nothing
    , _mdlOAuthToken = Nothing
    , _mdlOrderId = pMdlOrderId_
    , _mdlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdlQuotaUser :: Lens' MarketplaceDealsList' (Maybe Text)
mdlQuotaUser
  = lens _mdlQuotaUser (\ s a -> s{_mdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdlPrettyPrint :: Lens' MarketplaceDealsList' Bool
mdlPrettyPrint
  = lens _mdlPrettyPrint
      (\ s a -> s{_mdlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdlUserIP :: Lens' MarketplaceDealsList' (Maybe Text)
mdlUserIP
  = lens _mdlUserIP (\ s a -> s{_mdlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdlKey :: Lens' MarketplaceDealsList' (Maybe Key)
mdlKey = lens _mdlKey (\ s a -> s{_mdlKey = a})

-- | OAuth 2.0 token for the current user.
mdlOAuthToken :: Lens' MarketplaceDealsList' (Maybe OAuthToken)
mdlOAuthToken
  = lens _mdlOAuthToken
      (\ s a -> s{_mdlOAuthToken = a})

-- | The orderId to get deals for.
mdlOrderId :: Lens' MarketplaceDealsList' Text
mdlOrderId
  = lens _mdlOrderId (\ s a -> s{_mdlOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mdlFields :: Lens' MarketplaceDealsList' (Maybe Text)
mdlFields
  = lens _mdlFields (\ s a -> s{_mdlFields = a})

instance GoogleAuth MarketplaceDealsList' where
        authKey = mdlKey . _Just
        authToken = mdlOAuthToken . _Just

instance GoogleRequest MarketplaceDealsList' where
        type Rs MarketplaceDealsList' = GetOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceDealsList'{..}
          = go _mdlQuotaUser (Just _mdlPrettyPrint) _mdlUserIP
              _mdlKey
              _mdlOAuthToken
              _mdlOrderId
              _mdlFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceDealsListResource)
                      r
                      u
