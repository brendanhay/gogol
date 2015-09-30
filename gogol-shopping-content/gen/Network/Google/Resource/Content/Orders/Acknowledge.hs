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
    , oaUserIp
    , oaKey
    , oaOauthToken
    , oaOrderId
    , oaFields
    , oaAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersAcknowledgeResponse

-- | Marks an order as acknowledged.
--
-- /See:/ 'ordersAcknowledge'' smart constructor.
data OrdersAcknowledge' = OrdersAcknowledge'
    { _oaQuotaUser   :: !(Maybe Text)
    , _oaMerchantId  :: !Word64
    , _oaPrettyPrint :: !Bool
    , _oaUserIp      :: !(Maybe Text)
    , _oaKey         :: !(Maybe Text)
    , _oaOauthToken  :: !(Maybe Text)
    , _oaOrderId     :: !Text
    , _oaFields      :: !(Maybe Text)
    , _oaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'oaUserIp'
--
-- * 'oaKey'
--
-- * 'oaOauthToken'
--
-- * 'oaOrderId'
--
-- * 'oaFields'
--
-- * 'oaAlt'
ordersAcknowledge'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAcknowledge'
ordersAcknowledge' pOaMerchantId_ pOaOrderId_ =
    OrdersAcknowledge'
    { _oaQuotaUser = Nothing
    , _oaMerchantId = pOaMerchantId_
    , _oaPrettyPrint = True
    , _oaUserIp = Nothing
    , _oaKey = Nothing
    , _oaOauthToken = Nothing
    , _oaOrderId = pOaOrderId_
    , _oaFields = Nothing
    , _oaAlt = JSON
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
oaUserIp :: Lens' OrdersAcknowledge' (Maybe Text)
oaUserIp = lens _oaUserIp (\ s a -> s{_oaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaKey :: Lens' OrdersAcknowledge' (Maybe Text)
oaKey = lens _oaKey (\ s a -> s{_oaKey = a})

-- | OAuth 2.0 token for the current user.
oaOauthToken :: Lens' OrdersAcknowledge' (Maybe Text)
oaOauthToken
  = lens _oaOauthToken (\ s a -> s{_oaOauthToken = a})

-- | The ID of the order.
oaOrderId :: Lens' OrdersAcknowledge' Text
oaOrderId
  = lens _oaOrderId (\ s a -> s{_oaOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaFields :: Lens' OrdersAcknowledge' (Maybe Text)
oaFields = lens _oaFields (\ s a -> s{_oaFields = a})

-- | Data format for the response.
oaAlt :: Lens' OrdersAcknowledge' Alt
oaAlt = lens _oaAlt (\ s a -> s{_oaAlt = a})

instance GoogleRequest OrdersAcknowledge' where
        type Rs OrdersAcknowledge' =
             OrdersAcknowledgeResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAcknowledge'{..}
          = go _oaQuotaUser _oaMerchantId (Just _oaPrettyPrint)
              _oaUserIp
              _oaKey
              _oaOauthToken
              _oaOrderId
              _oaFields
              (Just _oaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAcknowledgeResource)
                      r
                      u
