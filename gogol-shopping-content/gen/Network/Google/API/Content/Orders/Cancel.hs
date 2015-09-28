{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels all line items in an order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.cancel@.
module Network.Google.API.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelAPI

    -- * Creating a Request
    , ordersCancel'
    , OrdersCancel'

    -- * Request Lenses
    , ooQuotaUser
    , ooMerchantId
    , ooPrettyPrint
    , ooUserIp
    , ooKey
    , ooOauthToken
    , ooOrderId
    , ooFields
    , ooAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.cancel which the
-- 'OrdersCancel'' request conforms to.
type OrdersCancelAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancel" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order.
--
-- /See:/ 'ordersCancel'' smart constructor.
data OrdersCancel' = OrdersCancel'
    { _ooQuotaUser   :: !(Maybe Text)
    , _ooMerchantId  :: !Word64
    , _ooPrettyPrint :: !Bool
    , _ooUserIp      :: !(Maybe Text)
    , _ooKey         :: !(Maybe Text)
    , _ooOauthToken  :: !(Maybe Text)
    , _ooOrderId     :: !Text
    , _ooFields      :: !(Maybe Text)
    , _ooAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooQuotaUser'
--
-- * 'ooMerchantId'
--
-- * 'ooPrettyPrint'
--
-- * 'ooUserIp'
--
-- * 'ooKey'
--
-- * 'ooOauthToken'
--
-- * 'ooOrderId'
--
-- * 'ooFields'
--
-- * 'ooAlt'
ordersCancel'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersCancel'
ordersCancel' pOoMerchantId_ pOoOrderId_ =
    OrdersCancel'
    { _ooQuotaUser = Nothing
    , _ooMerchantId = pOoMerchantId_
    , _ooPrettyPrint = True
    , _ooUserIp = Nothing
    , _ooKey = Nothing
    , _ooOauthToken = Nothing
    , _ooOrderId = pOoOrderId_
    , _ooFields = Nothing
    , _ooAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ooQuotaUser :: Lens' OrdersCancel' (Maybe Text)
ooQuotaUser
  = lens _ooQuotaUser (\ s a -> s{_ooQuotaUser = a})

-- | The ID of the managing account.
ooMerchantId :: Lens' OrdersCancel' Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})

-- | Returns response with indentations and line breaks.
ooPrettyPrint :: Lens' OrdersCancel' Bool
ooPrettyPrint
  = lens _ooPrettyPrint
      (\ s a -> s{_ooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ooUserIp :: Lens' OrdersCancel' (Maybe Text)
ooUserIp = lens _ooUserIp (\ s a -> s{_ooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ooKey :: Lens' OrdersCancel' (Maybe Text)
ooKey = lens _ooKey (\ s a -> s{_ooKey = a})

-- | OAuth 2.0 token for the current user.
ooOauthToken :: Lens' OrdersCancel' (Maybe Text)
ooOauthToken
  = lens _ooOauthToken (\ s a -> s{_ooOauthToken = a})

-- | The ID of the order to cancel.
ooOrderId :: Lens' OrdersCancel' Text
ooOrderId
  = lens _ooOrderId (\ s a -> s{_ooOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ooFields :: Lens' OrdersCancel' (Maybe Text)
ooFields = lens _ooFields (\ s a -> s{_ooFields = a})

-- | Data format for the response.
ooAlt :: Lens' OrdersCancel' Alt
ooAlt = lens _ooAlt (\ s a -> s{_ooAlt = a})

instance GoogleRequest OrdersCancel' where
        type Rs OrdersCancel' = OrdersCancelResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCancel'{..}
          = go _ooQuotaUser _ooMerchantId (Just _ooPrettyPrint)
              _ooUserIp
              _ooKey
              _ooOauthToken
              _ooOrderId
              _ooFields
              (Just _ooAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersCancelAPI) r
                      u
