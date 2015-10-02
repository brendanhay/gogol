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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add new deals for the specified order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsInsert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
    (
    -- * REST Resource
      MarketplaceDealsInsertResource

    -- * Creating a Request
    , marketplaceDealsInsert'
    , MarketplaceDealsInsert'

    -- * Request Lenses
    , mdiQuotaUser
    , mdiPrettyPrint
    , mdiUserIP
    , mdiKey
    , mdiOAuthToken
    , mdiOrderId
    , mdiFields
    , mdiAddOrderDealsRequest
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsInsert@ which the
-- 'MarketplaceDealsInsert'' request conforms to.
type MarketplaceDealsInsertResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "insert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AddOrderDealsRequest :>
                             Post '[JSON] AddOrderDealsResponse

-- | Add new deals for the specified order
--
-- /See:/ 'marketplaceDealsInsert'' smart constructor.
data MarketplaceDealsInsert' = MarketplaceDealsInsert'
    { _mdiQuotaUser            :: !(Maybe Text)
    , _mdiPrettyPrint          :: !Bool
    , _mdiUserIP               :: !(Maybe Text)
    , _mdiKey                  :: !(Maybe Key)
    , _mdiOAuthToken           :: !(Maybe OAuthToken)
    , _mdiOrderId              :: !Text
    , _mdiFields               :: !(Maybe Text)
    , _mdiAddOrderDealsRequest :: !AddOrderDealsRequest
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdiQuotaUser'
--
-- * 'mdiPrettyPrint'
--
-- * 'mdiUserIP'
--
-- * 'mdiKey'
--
-- * 'mdiOAuthToken'
--
-- * 'mdiOrderId'
--
-- * 'mdiFields'
--
-- * 'mdiAddOrderDealsRequest'
marketplaceDealsInsert'
    :: Text -- ^ 'orderId'
    -> AddOrderDealsRequest -- ^ 'AddOrderDealsRequest'
    -> MarketplaceDealsInsert'
marketplaceDealsInsert' pMdiOrderId_ pMdiAddOrderDealsRequest_ =
    MarketplaceDealsInsert'
    { _mdiQuotaUser = Nothing
    , _mdiPrettyPrint = True
    , _mdiUserIP = Nothing
    , _mdiKey = Nothing
    , _mdiOAuthToken = Nothing
    , _mdiOrderId = pMdiOrderId_
    , _mdiFields = Nothing
    , _mdiAddOrderDealsRequest = pMdiAddOrderDealsRequest_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdiQuotaUser :: Lens' MarketplaceDealsInsert' (Maybe Text)
mdiQuotaUser
  = lens _mdiQuotaUser (\ s a -> s{_mdiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdiPrettyPrint :: Lens' MarketplaceDealsInsert' Bool
mdiPrettyPrint
  = lens _mdiPrettyPrint
      (\ s a -> s{_mdiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdiUserIP :: Lens' MarketplaceDealsInsert' (Maybe Text)
mdiUserIP
  = lens _mdiUserIP (\ s a -> s{_mdiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdiKey :: Lens' MarketplaceDealsInsert' (Maybe Key)
mdiKey = lens _mdiKey (\ s a -> s{_mdiKey = a})

-- | OAuth 2.0 token for the current user.
mdiOAuthToken :: Lens' MarketplaceDealsInsert' (Maybe OAuthToken)
mdiOAuthToken
  = lens _mdiOAuthToken
      (\ s a -> s{_mdiOAuthToken = a})

-- | OrderId for which deals need to be added.
mdiOrderId :: Lens' MarketplaceDealsInsert' Text
mdiOrderId
  = lens _mdiOrderId (\ s a -> s{_mdiOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mdiFields :: Lens' MarketplaceDealsInsert' (Maybe Text)
mdiFields
  = lens _mdiFields (\ s a -> s{_mdiFields = a})

-- | Multipart request metadata.
mdiAddOrderDealsRequest :: Lens' MarketplaceDealsInsert' AddOrderDealsRequest
mdiAddOrderDealsRequest
  = lens _mdiAddOrderDealsRequest
      (\ s a -> s{_mdiAddOrderDealsRequest = a})

instance GoogleAuth MarketplaceDealsInsert' where
        authKey = mdiKey . _Just
        authToken = mdiOAuthToken . _Just

instance GoogleRequest MarketplaceDealsInsert' where
        type Rs MarketplaceDealsInsert' =
             AddOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceDealsInsert'{..}
          = go _mdiQuotaUser (Just _mdiPrettyPrint) _mdiUserIP
              _mdiKey
              _mdiOAuthToken
              _mdiOrderId
              _mdiFields
              (Just AltJSON)
              _mdiAddOrderDealsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceDealsInsertResource)
                      r
                      u
