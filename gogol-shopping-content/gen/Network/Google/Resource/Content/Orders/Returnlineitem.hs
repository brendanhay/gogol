{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Returnlineitem
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersReturnlineitem@.
module Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemAPI

    -- * Creating a Request
    , ordersReturnlineitem
    , OrdersReturnlineitem

    -- * Request Lenses
    , orrQuotaUser
    , orrMerchantId
    , orrPrettyPrint
    , orrUserIp
    , orrKey
    , orrOauthToken
    , orrOrderId
    , orrFields
    , orrAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersReturnlineitem@ which the
-- 'OrdersReturnlineitem' request conforms to.
type OrdersReturnlineitemAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "returnLineItem" :>
             Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem' smart constructor.
data OrdersReturnlineitem = OrdersReturnlineitem
    { _orrQuotaUser   :: !(Maybe Text)
    , _orrMerchantId  :: !Word64
    , _orrPrettyPrint :: !Bool
    , _orrUserIp      :: !(Maybe Text)
    , _orrKey         :: !(Maybe Text)
    , _orrOauthToken  :: !(Maybe Text)
    , _orrOrderId     :: !Text
    , _orrFields      :: !(Maybe Text)
    , _orrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnlineitem'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrQuotaUser'
--
-- * 'orrMerchantId'
--
-- * 'orrPrettyPrint'
--
-- * 'orrUserIp'
--
-- * 'orrKey'
--
-- * 'orrOauthToken'
--
-- * 'orrOrderId'
--
-- * 'orrFields'
--
-- * 'orrAlt'
ordersReturnlineitem
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersReturnlineitem
ordersReturnlineitem pOrrMerchantId_ pOrrOrderId_ =
    OrdersReturnlineitem
    { _orrQuotaUser = Nothing
    , _orrMerchantId = pOrrMerchantId_
    , _orrPrettyPrint = True
    , _orrUserIp = Nothing
    , _orrKey = Nothing
    , _orrOauthToken = Nothing
    , _orrOrderId = pOrrOrderId_
    , _orrFields = Nothing
    , _orrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
orrQuotaUser :: Lens' OrdersReturnlineitem' (Maybe Text)
orrQuotaUser
  = lens _orrQuotaUser (\ s a -> s{_orrQuotaUser = a})

-- | The ID of the managing account.
orrMerchantId :: Lens' OrdersReturnlineitem' Word64
orrMerchantId
  = lens _orrMerchantId
      (\ s a -> s{_orrMerchantId = a})

-- | Returns response with indentations and line breaks.
orrPrettyPrint :: Lens' OrdersReturnlineitem' Bool
orrPrettyPrint
  = lens _orrPrettyPrint
      (\ s a -> s{_orrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
orrUserIp :: Lens' OrdersReturnlineitem' (Maybe Text)
orrUserIp
  = lens _orrUserIp (\ s a -> s{_orrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
orrKey :: Lens' OrdersReturnlineitem' (Maybe Text)
orrKey = lens _orrKey (\ s a -> s{_orrKey = a})

-- | OAuth 2.0 token for the current user.
orrOauthToken :: Lens' OrdersReturnlineitem' (Maybe Text)
orrOauthToken
  = lens _orrOauthToken
      (\ s a -> s{_orrOauthToken = a})

-- | The ID of the order.
orrOrderId :: Lens' OrdersReturnlineitem' Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

-- | Selector specifying which fields to include in a partial response.
orrFields :: Lens' OrdersReturnlineitem' (Maybe Text)
orrFields
  = lens _orrFields (\ s a -> s{_orrFields = a})

-- | Data format for the response.
orrAlt :: Lens' OrdersReturnlineitem' Text
orrAlt = lens _orrAlt (\ s a -> s{_orrAlt = a})

instance GoogleRequest OrdersReturnlineitem' where
        type Rs OrdersReturnlineitem' =
             OrdersReturnLineItemResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersReturnlineitem{..}
          = go _orrQuotaUser _orrMerchantId _orrPrettyPrint
              _orrUserIp
              _orrKey
              _orrOauthToken
              _orrOrderId
              _orrFields
              _orrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersReturnlineitemAPI)
                      r
                      u
