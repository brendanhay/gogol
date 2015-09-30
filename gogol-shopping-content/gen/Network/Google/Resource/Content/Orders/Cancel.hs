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
module Network.Google.Resource.Content.Orders.Cancel
    (
    -- * REST Resource
      OrdersCancelResource

    -- * Creating a Request
    , ordersCancel'
    , OrdersCancel'

    -- * Request Lenses
    , ocQuotaUser
    , ocMerchantId
    , ocPrettyPrint
    , ocUserIp
    , ocKey
    , ocOauthToken
    , ocOrderId
    , ocFields
    , ocAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancel@ which the
-- 'OrdersCancel'' request conforms to.
type OrdersCancelResource =
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
    { _ocQuotaUser   :: !(Maybe Text)
    , _ocMerchantId  :: !Word64
    , _ocPrettyPrint :: !Bool
    , _ocUserIp      :: !(Maybe Text)
    , _ocKey         :: !(Maybe Text)
    , _ocOauthToken  :: !(Maybe Text)
    , _ocOrderId     :: !Text
    , _ocFields      :: !(Maybe Text)
    , _ocAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuotaUser'
--
-- * 'ocMerchantId'
--
-- * 'ocPrettyPrint'
--
-- * 'ocUserIp'
--
-- * 'ocKey'
--
-- * 'ocOauthToken'
--
-- * 'ocOrderId'
--
-- * 'ocFields'
--
-- * 'ocAlt'
ordersCancel'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersCancel'
ordersCancel' pOcMerchantId_ pOcOrderId_ =
    OrdersCancel'
    { _ocQuotaUser = Nothing
    , _ocMerchantId = pOcMerchantId_
    , _ocPrettyPrint = True
    , _ocUserIp = Nothing
    , _ocKey = Nothing
    , _ocOauthToken = Nothing
    , _ocOrderId = pOcOrderId_
    , _ocFields = Nothing
    , _ocAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ocQuotaUser :: Lens' OrdersCancel' (Maybe Text)
ocQuotaUser
  = lens _ocQuotaUser (\ s a -> s{_ocQuotaUser = a})

-- | The ID of the managing account.
ocMerchantId :: Lens' OrdersCancel' Word64
ocMerchantId
  = lens _ocMerchantId (\ s a -> s{_ocMerchantId = a})

-- | Returns response with indentations and line breaks.
ocPrettyPrint :: Lens' OrdersCancel' Bool
ocPrettyPrint
  = lens _ocPrettyPrint
      (\ s a -> s{_ocPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ocUserIp :: Lens' OrdersCancel' (Maybe Text)
ocUserIp = lens _ocUserIp (\ s a -> s{_ocUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ocKey :: Lens' OrdersCancel' (Maybe Text)
ocKey = lens _ocKey (\ s a -> s{_ocKey = a})

-- | OAuth 2.0 token for the current user.
ocOauthToken :: Lens' OrdersCancel' (Maybe Text)
ocOauthToken
  = lens _ocOauthToken (\ s a -> s{_ocOauthToken = a})

-- | The ID of the order to cancel.
ocOrderId :: Lens' OrdersCancel' Text
ocOrderId
  = lens _ocOrderId (\ s a -> s{_ocOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ocFields :: Lens' OrdersCancel' (Maybe Text)
ocFields = lens _ocFields (\ s a -> s{_ocFields = a})

-- | Data format for the response.
ocAlt :: Lens' OrdersCancel' Alt
ocAlt = lens _ocAlt (\ s a -> s{_ocAlt = a})

instance GoogleRequest OrdersCancel' where
        type Rs OrdersCancel' = OrdersCancelResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCancel'{..}
          = go _ocQuotaUser _ocMerchantId (Just _ocPrettyPrint)
              _ocUserIp
              _ocKey
              _ocOauthToken
              _ocOrderId
              _ocFields
              (Just _ocAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCancelResource)
                      r
                      u
