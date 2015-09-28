{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Returnlineitem
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.returnlineitem@.
module Network.Google.API.Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemAPI

    -- * Creating a Request
    , ordersReturnlineitem'
    , OrdersReturnlineitem'

    -- * Request Lenses
    , ordQuotaUser
    , ordMerchantId
    , ordPrettyPrint
    , ordUserIp
    , ordKey
    , ordOauthToken
    , ordOrderId
    , ordFields
    , ordAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.returnlineitem which the
-- 'OrdersReturnlineitem'' request conforms to.
type OrdersReturnlineitemAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "returnLineItem" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem'' smart constructor.
data OrdersReturnlineitem' = OrdersReturnlineitem'
    { _ordQuotaUser   :: !(Maybe Text)
    , _ordMerchantId  :: !Word64
    , _ordPrettyPrint :: !Bool
    , _ordUserIp      :: !(Maybe Text)
    , _ordKey         :: !(Maybe Text)
    , _ordOauthToken  :: !(Maybe Text)
    , _ordOrderId     :: !Text
    , _ordFields      :: !(Maybe Text)
    , _ordAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnlineitem'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordQuotaUser'
--
-- * 'ordMerchantId'
--
-- * 'ordPrettyPrint'
--
-- * 'ordUserIp'
--
-- * 'ordKey'
--
-- * 'ordOauthToken'
--
-- * 'ordOrderId'
--
-- * 'ordFields'
--
-- * 'ordAlt'
ordersReturnlineitem'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersReturnlineitem'
ordersReturnlineitem' pOrdMerchantId_ pOrdOrderId_ =
    OrdersReturnlineitem'
    { _ordQuotaUser = Nothing
    , _ordMerchantId = pOrdMerchantId_
    , _ordPrettyPrint = True
    , _ordUserIp = Nothing
    , _ordKey = Nothing
    , _ordOauthToken = Nothing
    , _ordOrderId = pOrdOrderId_
    , _ordFields = Nothing
    , _ordAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ordQuotaUser :: Lens' OrdersReturnlineitem' (Maybe Text)
ordQuotaUser
  = lens _ordQuotaUser (\ s a -> s{_ordQuotaUser = a})

-- | The ID of the managing account.
ordMerchantId :: Lens' OrdersReturnlineitem' Word64
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})

-- | Returns response with indentations and line breaks.
ordPrettyPrint :: Lens' OrdersReturnlineitem' Bool
ordPrettyPrint
  = lens _ordPrettyPrint
      (\ s a -> s{_ordPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ordUserIp :: Lens' OrdersReturnlineitem' (Maybe Text)
ordUserIp
  = lens _ordUserIp (\ s a -> s{_ordUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ordKey :: Lens' OrdersReturnlineitem' (Maybe Text)
ordKey = lens _ordKey (\ s a -> s{_ordKey = a})

-- | OAuth 2.0 token for the current user.
ordOauthToken :: Lens' OrdersReturnlineitem' (Maybe Text)
ordOauthToken
  = lens _ordOauthToken
      (\ s a -> s{_ordOauthToken = a})

-- | The ID of the order.
ordOrderId :: Lens' OrdersReturnlineitem' Text
ordOrderId
  = lens _ordOrderId (\ s a -> s{_ordOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ordFields :: Lens' OrdersReturnlineitem' (Maybe Text)
ordFields
  = lens _ordFields (\ s a -> s{_ordFields = a})

-- | Data format for the response.
ordAlt :: Lens' OrdersReturnlineitem' Alt
ordAlt = lens _ordAlt (\ s a -> s{_ordAlt = a})

instance GoogleRequest OrdersReturnlineitem' where
        type Rs OrdersReturnlineitem' =
             OrdersReturnLineItemResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersReturnlineitem'{..}
          = go _ordQuotaUser _ordMerchantId
              (Just _ordPrettyPrint)
              _ordUserIp
              _ordKey
              _ordOauthToken
              _ordOrderId
              _ordFields
              (Just _ordAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersReturnlineitemAPI)
                      r
                      u
