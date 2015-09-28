{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Advancetestorder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.advancetestorder@.
module Network.Google.API.Content.Orders.Advancetestorder
    (
    -- * REST Resource
      OrdersAdvancetestorderAPI

    -- * Creating a Request
    , ordersAdvancetestorder'
    , OrdersAdvancetestorder'

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
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.advancetestorder which the
-- 'OrdersAdvancetestorder'' request conforms to.
type OrdersAdvancetestorderAPI =
     Capture "merchantId" Word64 :>
       "testorders" :>
         Capture "orderId" Text :>
           "advance" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersAdvanceTestOrderResponse

-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ 'ordersAdvancetestorder'' smart constructor.
data OrdersAdvancetestorder' = OrdersAdvancetestorder'
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

-- | Creates a value of 'OrdersAdvancetestorder'' with the minimum fields required to make a request.
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
ordersAdvancetestorder'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAdvancetestorder'
ordersAdvancetestorder' pOaMerchantId_ pOaOrderId_ =
    OrdersAdvancetestorder'
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
oaQuotaUser :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaQuotaUser
  = lens _oaQuotaUser (\ s a -> s{_oaQuotaUser = a})

-- | The ID of the managing account.
oaMerchantId :: Lens' OrdersAdvancetestorder' Word64
oaMerchantId
  = lens _oaMerchantId (\ s a -> s{_oaMerchantId = a})

-- | Returns response with indentations and line breaks.
oaPrettyPrint :: Lens' OrdersAdvancetestorder' Bool
oaPrettyPrint
  = lens _oaPrettyPrint
      (\ s a -> s{_oaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaUserIp :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaUserIp = lens _oaUserIp (\ s a -> s{_oaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaKey :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaKey = lens _oaKey (\ s a -> s{_oaKey = a})

-- | OAuth 2.0 token for the current user.
oaOauthToken :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaOauthToken
  = lens _oaOauthToken (\ s a -> s{_oaOauthToken = a})

-- | The ID of the test order to modify.
oaOrderId :: Lens' OrdersAdvancetestorder' Text
oaOrderId
  = lens _oaOrderId (\ s a -> s{_oaOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaFields :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaFields = lens _oaFields (\ s a -> s{_oaFields = a})

-- | Data format for the response.
oaAlt :: Lens' OrdersAdvancetestorder' Alt
oaAlt = lens _oaAlt (\ s a -> s{_oaAlt = a})

instance GoogleRequest OrdersAdvancetestorder' where
        type Rs OrdersAdvancetestorder' =
             OrdersAdvanceTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAdvancetestorder'{..}
          = go _oaQuotaUser _oaMerchantId (Just _oaPrettyPrint)
              _oaUserIp
              _oaKey
              _oaOauthToken
              _oaOrderId
              _oaFields
              (Just _oaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAdvancetestorderAPI)
                      r
                      u
