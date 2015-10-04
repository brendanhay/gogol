{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Acknowledge
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks an order as acknowledged.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersAcknowledge@.
module Network.Google.Resource.Content.Orders.Acknowledge
    (
    -- * REST Resource
      OrdersAcknowledgeResource

    -- * Creating a Request
    , ordersAcknowledge'
    , OrdersAcknowledge'

    -- * Request Lenses
    , oaQuotaUser
    , oaMerchantId
    , oaPrettyPrint
    , oaUserIP
    , oaPayload
    , oaKey
    , oaOAuthToken
    , oaOrderId
    , oaFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersAcknowledge@ which the
-- 'OrdersAcknowledge'' request conforms to.
type OrdersAcknowledgeResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "acknowledge" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersAcknowledgeRequest :>
                             Post '[JSON] OrdersAcknowledgeResponse

-- | Marks an order as acknowledged.
--
-- /See:/ 'ordersAcknowledge'' smart constructor.
data OrdersAcknowledge' = OrdersAcknowledge'
    { _oaQuotaUser   :: !(Maybe Text)
    , _oaMerchantId  :: !Word64
    , _oaPrettyPrint :: !Bool
    , _oaUserIP      :: !(Maybe Text)
    , _oaPayload     :: !OrdersAcknowledgeRequest
    , _oaKey         :: !(Maybe Key)
    , _oaOAuthToken  :: !(Maybe OAuthToken)
    , _oaOrderId     :: !Text
    , _oaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledge'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaQuotaUser'
--
-- * 'oaMerchantId'
--
-- * 'oaPrettyPrint'
--
-- * 'oaUserIP'
--
-- * 'oaPayload'
--
-- * 'oaKey'
--
-- * 'oaOAuthToken'
--
-- * 'oaOrderId'
--
-- * 'oaFields'
ordersAcknowledge'
    :: Word64 -- ^ 'merchantId'
    -> OrdersAcknowledgeRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersAcknowledge'
ordersAcknowledge' pOaMerchantId_ pOaPayload_ pOaOrderId_ =
    OrdersAcknowledge'
    { _oaQuotaUser = Nothing
    , _oaMerchantId = pOaMerchantId_
    , _oaPrettyPrint = True
    , _oaUserIP = Nothing
    , _oaPayload = pOaPayload_
    , _oaKey = Nothing
    , _oaOAuthToken = Nothing
    , _oaOrderId = pOaOrderId_
    , _oaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaQuotaUser :: Lens' OrdersAcknowledge' (Maybe Text)
oaQuotaUser
  = lens _oaQuotaUser (\ s a -> s{_oaQuotaUser = a})

-- | The ID of the managing account.
oaMerchantId :: Lens' OrdersAcknowledge' Word64
oaMerchantId
  = lens _oaMerchantId (\ s a -> s{_oaMerchantId = a})

-- | Returns response with indentations and line breaks.
oaPrettyPrint :: Lens' OrdersAcknowledge' Bool
oaPrettyPrint
  = lens _oaPrettyPrint
      (\ s a -> s{_oaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaUserIP :: Lens' OrdersAcknowledge' (Maybe Text)
oaUserIP = lens _oaUserIP (\ s a -> s{_oaUserIP = a})

-- | Multipart request metadata.
oaPayload :: Lens' OrdersAcknowledge' OrdersAcknowledgeRequest
oaPayload
  = lens _oaPayload (\ s a -> s{_oaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaKey :: Lens' OrdersAcknowledge' (Maybe Key)
oaKey = lens _oaKey (\ s a -> s{_oaKey = a})

-- | OAuth 2.0 token for the current user.
oaOAuthToken :: Lens' OrdersAcknowledge' (Maybe OAuthToken)
oaOAuthToken
  = lens _oaOAuthToken (\ s a -> s{_oaOAuthToken = a})

-- | The ID of the order.
oaOrderId :: Lens' OrdersAcknowledge' Text
oaOrderId
  = lens _oaOrderId (\ s a -> s{_oaOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaFields :: Lens' OrdersAcknowledge' (Maybe Text)
oaFields = lens _oaFields (\ s a -> s{_oaFields = a})

instance GoogleAuth OrdersAcknowledge' where
        authKey = oaKey . _Just
        authToken = oaOAuthToken . _Just

instance GoogleRequest OrdersAcknowledge' where
        type Rs OrdersAcknowledge' =
             OrdersAcknowledgeResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAcknowledge'{..}
          = go _oaMerchantId _oaOrderId _oaQuotaUser
              (Just _oaPrettyPrint)
              _oaUserIP
              _oaFields
              _oaKey
              _oaOAuthToken
              (Just AltJSON)
              _oaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAcknowledgeResource)
                      r
                      u
