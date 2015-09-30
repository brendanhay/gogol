{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels all line items in an order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCancel@.
module Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelAPI

    -- * Creating a Request
    , ordersCancel
    , OrdersCancel

    -- * Request Lenses
    , occQuotaUser
    , occMerchantId
    , occPrettyPrint
    , occUserIp
    , occKey
    , occOauthToken
    , occOrderId
    , occFields
    , occAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancel@ which the
-- 'OrdersCancel' request conforms to.
type OrdersCancelAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancel" :> Post '[JSON] OrdersCancelResponse

-- | Cancels all line items in an order.
--
-- /See:/ 'ordersCancel' smart constructor.
data OrdersCancel = OrdersCancel
    { _occQuotaUser   :: !(Maybe Text)
    , _occMerchantId  :: !Word64
    , _occPrettyPrint :: !Bool
    , _occUserIp      :: !(Maybe Text)
    , _occKey         :: !(Maybe Text)
    , _occOauthToken  :: !(Maybe Text)
    , _occOrderId     :: !Text
    , _occFields      :: !(Maybe Text)
    , _occAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occQuotaUser'
--
-- * 'occMerchantId'
--
-- * 'occPrettyPrint'
--
-- * 'occUserIp'
--
-- * 'occKey'
--
-- * 'occOauthToken'
--
-- * 'occOrderId'
--
-- * 'occFields'
--
-- * 'occAlt'
ordersCancel
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersCancel
ordersCancel pOccMerchantId_ pOccOrderId_ =
    OrdersCancel
    { _occQuotaUser = Nothing
    , _occMerchantId = pOccMerchantId_
    , _occPrettyPrint = True
    , _occUserIp = Nothing
    , _occKey = Nothing
    , _occOauthToken = Nothing
    , _occOrderId = pOccOrderId_
    , _occFields = Nothing
    , _occAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
occQuotaUser :: Lens' OrdersCancel' (Maybe Text)
occQuotaUser
  = lens _occQuotaUser (\ s a -> s{_occQuotaUser = a})

-- | The ID of the managing account.
occMerchantId :: Lens' OrdersCancel' Word64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})

-- | Returns response with indentations and line breaks.
occPrettyPrint :: Lens' OrdersCancel' Bool
occPrettyPrint
  = lens _occPrettyPrint
      (\ s a -> s{_occPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
occUserIp :: Lens' OrdersCancel' (Maybe Text)
occUserIp
  = lens _occUserIp (\ s a -> s{_occUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
occKey :: Lens' OrdersCancel' (Maybe Text)
occKey = lens _occKey (\ s a -> s{_occKey = a})

-- | OAuth 2.0 token for the current user.
occOauthToken :: Lens' OrdersCancel' (Maybe Text)
occOauthToken
  = lens _occOauthToken
      (\ s a -> s{_occOauthToken = a})

-- | The ID of the order to cancel.
occOrderId :: Lens' OrdersCancel' Text
occOrderId
  = lens _occOrderId (\ s a -> s{_occOrderId = a})

-- | Selector specifying which fields to include in a partial response.
occFields :: Lens' OrdersCancel' (Maybe Text)
occFields
  = lens _occFields (\ s a -> s{_occFields = a})

-- | Data format for the response.
occAlt :: Lens' OrdersCancel' Text
occAlt = lens _occAlt (\ s a -> s{_occAlt = a})

instance GoogleRequest OrdersCancel' where
        type Rs OrdersCancel' = OrdersCancelResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCancel{..}
          = go _occQuotaUser _occMerchantId _occPrettyPrint
              _occUserIp
              _occKey
              _occOauthToken
              _occOrderId
              _occFields
              _occAlt
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersCancelAPI) r
                      u
