{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Acknowledge
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks an order as acknowledged.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.acknowledge@.
module Network.Google.API.Content.Orders.Acknowledge
    (
    -- * REST Resource
      OrdersAcknowledgeAPI

    -- * Creating a Request
    , ordersAcknowledge'
    , OrdersAcknowledge'

    -- * Request Lenses
    , oaaQuotaUser
    , oaaMerchantId
    , oaaPrettyPrint
    , oaaUserIp
    , oaaKey
    , oaaOauthToken
    , oaaOrderId
    , oaaFields
    , oaaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.acknowledge which the
-- 'OrdersAcknowledge'' request conforms to.
type OrdersAcknowledgeAPI =
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
    { _oaaQuotaUser   :: !(Maybe Text)
    , _oaaMerchantId  :: !Word64
    , _oaaPrettyPrint :: !Bool
    , _oaaUserIp      :: !(Maybe Text)
    , _oaaKey         :: !(Maybe Text)
    , _oaaOauthToken  :: !(Maybe Text)
    , _oaaOrderId     :: !Text
    , _oaaFields      :: !(Maybe Text)
    , _oaaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledge'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaaQuotaUser'
--
-- * 'oaaMerchantId'
--
-- * 'oaaPrettyPrint'
--
-- * 'oaaUserIp'
--
-- * 'oaaKey'
--
-- * 'oaaOauthToken'
--
-- * 'oaaOrderId'
--
-- * 'oaaFields'
--
-- * 'oaaAlt'
ordersAcknowledge'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAcknowledge'
ordersAcknowledge' pOaaMerchantId_ pOaaOrderId_ =
    OrdersAcknowledge'
    { _oaaQuotaUser = Nothing
    , _oaaMerchantId = pOaaMerchantId_
    , _oaaPrettyPrint = True
    , _oaaUserIp = Nothing
    , _oaaKey = Nothing
    , _oaaOauthToken = Nothing
    , _oaaOrderId = pOaaOrderId_
    , _oaaFields = Nothing
    , _oaaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaaQuotaUser :: Lens' OrdersAcknowledge' (Maybe Text)
oaaQuotaUser
  = lens _oaaQuotaUser (\ s a -> s{_oaaQuotaUser = a})

-- | The ID of the managing account.
oaaMerchantId :: Lens' OrdersAcknowledge' Word64
oaaMerchantId
  = lens _oaaMerchantId
      (\ s a -> s{_oaaMerchantId = a})

-- | Returns response with indentations and line breaks.
oaaPrettyPrint :: Lens' OrdersAcknowledge' Bool
oaaPrettyPrint
  = lens _oaaPrettyPrint
      (\ s a -> s{_oaaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaaUserIp :: Lens' OrdersAcknowledge' (Maybe Text)
oaaUserIp
  = lens _oaaUserIp (\ s a -> s{_oaaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaaKey :: Lens' OrdersAcknowledge' (Maybe Text)
oaaKey = lens _oaaKey (\ s a -> s{_oaaKey = a})

-- | OAuth 2.0 token for the current user.
oaaOauthToken :: Lens' OrdersAcknowledge' (Maybe Text)
oaaOauthToken
  = lens _oaaOauthToken
      (\ s a -> s{_oaaOauthToken = a})

-- | The ID of the order.
oaaOrderId :: Lens' OrdersAcknowledge' Text
oaaOrderId
  = lens _oaaOrderId (\ s a -> s{_oaaOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaaFields :: Lens' OrdersAcknowledge' (Maybe Text)
oaaFields
  = lens _oaaFields (\ s a -> s{_oaaFields = a})

-- | Data format for the response.
oaaAlt :: Lens' OrdersAcknowledge' Alt
oaaAlt = lens _oaaAlt (\ s a -> s{_oaaAlt = a})

instance GoogleRequest OrdersAcknowledge' where
        type Rs OrdersAcknowledge' =
             OrdersAcknowledgeResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAcknowledge'{..}
          = go _oaaQuotaUser _oaaMerchantId
              (Just _oaaPrettyPrint)
              _oaaUserIp
              _oaaKey
              _oaaOauthToken
              _oaaOrderId
              _oaaFields
              (Just _oaaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAcknowledgeAPI)
                      r
                      u
