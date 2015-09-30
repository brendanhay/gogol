{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Advancetestorder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersAdvancetestorder@.
module Content.Orders.Advancetestorder
    (
    -- * REST Resource
      OrdersAdvancetestorderAPI

    -- * Creating a Request
    , ordersAdvancetestorder
    , OrdersAdvancetestorder

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
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersAdvancetestorder@ which the
-- 'OrdersAdvancetestorder' request conforms to.
type OrdersAdvancetestorderAPI =
     Capture "merchantId" Word64 :>
       "testorders" :>
         Capture "orderId" Text :>
           "advance" :>
             Post '[JSON] OrdersAdvanceTestOrderResponse

-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ 'ordersAdvancetestorder' smart constructor.
data OrdersAdvancetestorder = OrdersAdvancetestorder
    { _oaaQuotaUser   :: !(Maybe Text)
    , _oaaMerchantId  :: !Word64
    , _oaaPrettyPrint :: !Bool
    , _oaaUserIp      :: !(Maybe Text)
    , _oaaKey         :: !(Maybe Text)
    , _oaaOauthToken  :: !(Maybe Text)
    , _oaaOrderId     :: !Text
    , _oaaFields      :: !(Maybe Text)
    , _oaaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAdvancetestorder'' with the minimum fields required to make a request.
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
ordersAdvancetestorder
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAdvancetestorder
ordersAdvancetestorder pOaaMerchantId_ pOaaOrderId_ =
    OrdersAdvancetestorder
    { _oaaQuotaUser = Nothing
    , _oaaMerchantId = pOaaMerchantId_
    , _oaaPrettyPrint = True
    , _oaaUserIp = Nothing
    , _oaaKey = Nothing
    , _oaaOauthToken = Nothing
    , _oaaOrderId = pOaaOrderId_
    , _oaaFields = Nothing
    , _oaaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaaQuotaUser :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaaQuotaUser
  = lens _oaaQuotaUser (\ s a -> s{_oaaQuotaUser = a})

-- | The ID of the managing account.
oaaMerchantId :: Lens' OrdersAdvancetestorder' Word64
oaaMerchantId
  = lens _oaaMerchantId
      (\ s a -> s{_oaaMerchantId = a})

-- | Returns response with indentations and line breaks.
oaaPrettyPrint :: Lens' OrdersAdvancetestorder' Bool
oaaPrettyPrint
  = lens _oaaPrettyPrint
      (\ s a -> s{_oaaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaaUserIp :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaaUserIp
  = lens _oaaUserIp (\ s a -> s{_oaaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaaKey :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaaKey = lens _oaaKey (\ s a -> s{_oaaKey = a})

-- | OAuth 2.0 token for the current user.
oaaOauthToken :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaaOauthToken
  = lens _oaaOauthToken
      (\ s a -> s{_oaaOauthToken = a})

-- | The ID of the test order to modify.
oaaOrderId :: Lens' OrdersAdvancetestorder' Text
oaaOrderId
  = lens _oaaOrderId (\ s a -> s{_oaaOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaaFields :: Lens' OrdersAdvancetestorder' (Maybe Text)
oaaFields
  = lens _oaaFields (\ s a -> s{_oaaFields = a})

-- | Data format for the response.
oaaAlt :: Lens' OrdersAdvancetestorder' Text
oaaAlt = lens _oaaAlt (\ s a -> s{_oaaAlt = a})

instance GoogleRequest OrdersAdvancetestorder' where
        type Rs OrdersAdvancetestorder' =
             OrdersAdvanceTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAdvancetestorder{..}
          = go _oaaQuotaUser _oaaMerchantId _oaaPrettyPrint
              _oaaUserIp
              _oaaKey
              _oaaOauthToken
              _oaaOrderId
              _oaaFields
              _oaaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAdvancetestorderAPI)
                      r
                      u
