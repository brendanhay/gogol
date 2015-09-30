{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersGet@.
module Content.Orders.Get
    (
    -- * REST Resource
      OrdersGetAPI

    -- * Creating a Request
    , ordersGet
    , OrdersGet

    -- * Request Lenses
    , oggQuotaUser
    , oggMerchantId
    , oggPrettyPrint
    , oggUserIp
    , oggKey
    , oggOauthToken
    , oggOrderId
    , oggFields
    , oggAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGet@ which the
-- 'OrdersGet' request conforms to.
type OrdersGetAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :> Get '[JSON] Order

-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ 'ordersGet' smart constructor.
data OrdersGet = OrdersGet
    { _oggQuotaUser   :: !(Maybe Text)
    , _oggMerchantId  :: !Word64
    , _oggPrettyPrint :: !Bool
    , _oggUserIp      :: !(Maybe Text)
    , _oggKey         :: !(Maybe Text)
    , _oggOauthToken  :: !(Maybe Text)
    , _oggOrderId     :: !Text
    , _oggFields      :: !(Maybe Text)
    , _oggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oggQuotaUser'
--
-- * 'oggMerchantId'
--
-- * 'oggPrettyPrint'
--
-- * 'oggUserIp'
--
-- * 'oggKey'
--
-- * 'oggOauthToken'
--
-- * 'oggOrderId'
--
-- * 'oggFields'
--
-- * 'oggAlt'
ordersGet
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersGet
ordersGet pOggMerchantId_ pOggOrderId_ =
    OrdersGet
    { _oggQuotaUser = Nothing
    , _oggMerchantId = pOggMerchantId_
    , _oggPrettyPrint = True
    , _oggUserIp = Nothing
    , _oggKey = Nothing
    , _oggOauthToken = Nothing
    , _oggOrderId = pOggOrderId_
    , _oggFields = Nothing
    , _oggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oggQuotaUser :: Lens' OrdersGet' (Maybe Text)
oggQuotaUser
  = lens _oggQuotaUser (\ s a -> s{_oggQuotaUser = a})

-- | The ID of the managing account.
oggMerchantId :: Lens' OrdersGet' Word64
oggMerchantId
  = lens _oggMerchantId
      (\ s a -> s{_oggMerchantId = a})

-- | Returns response with indentations and line breaks.
oggPrettyPrint :: Lens' OrdersGet' Bool
oggPrettyPrint
  = lens _oggPrettyPrint
      (\ s a -> s{_oggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oggUserIp :: Lens' OrdersGet' (Maybe Text)
oggUserIp
  = lens _oggUserIp (\ s a -> s{_oggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oggKey :: Lens' OrdersGet' (Maybe Text)
oggKey = lens _oggKey (\ s a -> s{_oggKey = a})

-- | OAuth 2.0 token for the current user.
oggOauthToken :: Lens' OrdersGet' (Maybe Text)
oggOauthToken
  = lens _oggOauthToken
      (\ s a -> s{_oggOauthToken = a})

-- | The ID of the order.
oggOrderId :: Lens' OrdersGet' Text
oggOrderId
  = lens _oggOrderId (\ s a -> s{_oggOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oggFields :: Lens' OrdersGet' (Maybe Text)
oggFields
  = lens _oggFields (\ s a -> s{_oggFields = a})

-- | Data format for the response.
oggAlt :: Lens' OrdersGet' Text
oggAlt = lens _oggAlt (\ s a -> s{_oggAlt = a})

instance GoogleRequest OrdersGet' where
        type Rs OrdersGet' = Order
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGet{..}
          = go _oggQuotaUser _oggMerchantId _oggPrettyPrint
              _oggUserIp
              _oggKey
              _oggOauthToken
              _oggOrderId
              _oggFields
              _oggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersGetAPI) r u
