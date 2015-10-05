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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersUpdate@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
    (
    -- * REST Resource
      MarketplaceOrdersUpdateResource

    -- * Creating a Request
    , marketplaceOrdersUpdate'
    , MarketplaceOrdersUpdate'

    -- * Request Lenses
    , mouQuotaUser
    , mouUpdateAction
    , mouPrettyPrint
    , mouUserIP
    , mouRevisionNumber
    , mouPayload
    , mouKey
    , mouOAuthToken
    , mouOrderId
    , mouFields
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersUpdate@ which the
-- 'MarketplaceOrdersUpdate'' request conforms to.
type MarketplaceOrdersUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction"
             MarketplaceOrdersUpdateUpdateAction
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] MarketplaceOrder :>
                             Put '[JSON] MarketplaceOrder

-- | Update the given order
--
-- /See:/ 'marketplaceOrdersUpdate'' smart constructor.
data MarketplaceOrdersUpdate' = MarketplaceOrdersUpdate'
    { _mouQuotaUser :: !(Maybe Text)
    , _mouUpdateAction :: !MarketplaceOrdersUpdateUpdateAction
    , _mouPrettyPrint :: !Bool
    , _mouUserIP :: !(Maybe Text)
    , _mouRevisionNumber :: !Int64
    , _mouPayload :: !MarketplaceOrder
    , _mouKey :: !(Maybe Key)
    , _mouOAuthToken :: !(Maybe OAuthToken)
    , _mouOrderId :: !Text
    , _mouFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mouQuotaUser'
--
-- * 'mouUpdateAction'
--
-- * 'mouPrettyPrint'
--
-- * 'mouUserIP'
--
-- * 'mouRevisionNumber'
--
-- * 'mouPayload'
--
-- * 'mouKey'
--
-- * 'mouOAuthToken'
--
-- * 'mouOrderId'
--
-- * 'mouFields'
marketplaceOrdersUpdate'
    :: MarketplaceOrdersUpdateUpdateAction -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> MarketplaceOrder -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceOrdersUpdate'
marketplaceOrdersUpdate' pMouUpdateAction_ pMouRevisionNumber_ pMouPayload_ pMouOrderId_ = 
    MarketplaceOrdersUpdate'
    { _mouQuotaUser = Nothing
    , _mouUpdateAction = pMouUpdateAction_
    , _mouPrettyPrint = True
    , _mouUserIP = Nothing
    , _mouRevisionNumber = pMouRevisionNumber_
    , _mouPayload = pMouPayload_
    , _mouKey = Nothing
    , _mouOAuthToken = Nothing
    , _mouOrderId = pMouOrderId_
    , _mouFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mouQuotaUser :: Lens' MarketplaceOrdersUpdate' (Maybe Text)
mouQuotaUser
  = lens _mouQuotaUser (\ s a -> s{_mouQuotaUser = a})

-- | The proposed action to take on the order.
mouUpdateAction :: Lens' MarketplaceOrdersUpdate' MarketplaceOrdersUpdateUpdateAction
mouUpdateAction
  = lens _mouUpdateAction
      (\ s a -> s{_mouUpdateAction = a})

-- | Returns response with indentations and line breaks.
mouPrettyPrint :: Lens' MarketplaceOrdersUpdate' Bool
mouPrettyPrint
  = lens _mouPrettyPrint
      (\ s a -> s{_mouPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mouUserIP :: Lens' MarketplaceOrdersUpdate' (Maybe Text)
mouUserIP
  = lens _mouUserIP (\ s a -> s{_mouUserIP = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
mouRevisionNumber :: Lens' MarketplaceOrdersUpdate' Int64
mouRevisionNumber
  = lens _mouRevisionNumber
      (\ s a -> s{_mouRevisionNumber = a})

-- | Multipart request metadata.
mouPayload :: Lens' MarketplaceOrdersUpdate' MarketplaceOrder
mouPayload
  = lens _mouPayload (\ s a -> s{_mouPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mouKey :: Lens' MarketplaceOrdersUpdate' (Maybe Key)
mouKey = lens _mouKey (\ s a -> s{_mouKey = a})

-- | OAuth 2.0 token for the current user.
mouOAuthToken :: Lens' MarketplaceOrdersUpdate' (Maybe OAuthToken)
mouOAuthToken
  = lens _mouOAuthToken
      (\ s a -> s{_mouOAuthToken = a})

-- | The order id to update.
mouOrderId :: Lens' MarketplaceOrdersUpdate' Text
mouOrderId
  = lens _mouOrderId (\ s a -> s{_mouOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mouFields :: Lens' MarketplaceOrdersUpdate' (Maybe Text)
mouFields
  = lens _mouFields (\ s a -> s{_mouFields = a})

instance GoogleAuth MarketplaceOrdersUpdate' where
        authKey = mouKey . _Just
        authToken = mouOAuthToken . _Just

instance GoogleRequest MarketplaceOrdersUpdate' where
        type Rs MarketplaceOrdersUpdate' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceOrdersUpdate'{..}
          = go _mouOrderId _mouRevisionNumber _mouUpdateAction
              _mouQuotaUser
              (Just _mouPrettyPrint)
              _mouUserIP
              _mouFields
              _mouKey
              _mouOAuthToken
              (Just AltJSON)
              _mouPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceOrdersUpdateResource)
                      r
                      u
