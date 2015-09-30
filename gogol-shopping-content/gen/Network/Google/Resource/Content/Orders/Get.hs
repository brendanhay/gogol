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
module Network.Google.Resource.Content.Orders.Get
    (
    -- * REST Resource
      OrdersGetResource

    -- * Creating a Request
    , ordersGet'
    , OrdersGet'

    -- * Request Lenses
    , ogQuotaUser
    , ogMerchantId
    , ogPrettyPrint
    , ogUserIp
    , ogKey
    , ogOauthToken
    , ogOrderId
    , ogFields
    , ogAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGet@ which the
-- 'OrdersGet'' request conforms to.
type OrdersGetResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Order

-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ 'ordersGet'' smart constructor.
data OrdersGet' = OrdersGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogMerchantId  :: !Word64
    , _ogPrettyPrint :: !Bool
    , _ogUserIp      :: !(Maybe Text)
    , _ogKey         :: !(Maybe Text)
    , _ogOauthToken  :: !(Maybe Text)
    , _ogOrderId     :: !Text
    , _ogFields      :: !(Maybe Text)
    , _ogAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogMerchantId'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIp'
--
-- * 'ogKey'
--
-- * 'ogOauthToken'
--
-- * 'ogOrderId'
--
-- * 'ogFields'
--
-- * 'ogAlt'
ordersGet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersGet'
ordersGet' pOgMerchantId_ pOgOrderId_ =
    OrdersGet'
    { _ogQuotaUser = Nothing
    , _ogMerchantId = pOgMerchantId_
    , _ogPrettyPrint = True
    , _ogUserIp = Nothing
    , _ogKey = Nothing
    , _ogOauthToken = Nothing
    , _ogOrderId = pOgOrderId_
    , _ogFields = Nothing
    , _ogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OrdersGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | The ID of the managing account.
ogMerchantId :: Lens' OrdersGet' Word64
ogMerchantId
  = lens _ogMerchantId (\ s a -> s{_ogMerchantId = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrdersGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIp :: Lens' OrdersGet' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGet' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OrdersGet' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | The ID of the order.
ogOrderId :: Lens' OrdersGet' Text
ogOrderId
  = lens _ogOrderId (\ s a -> s{_ogOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OrdersGet' Alt
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OrdersGet' where
        type Rs OrdersGet' = Order
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGet'{..}
          = go _ogQuotaUser _ogMerchantId (Just _ogPrettyPrint)
              _ogUserIp
              _ogKey
              _ogOauthToken
              _ogOrderId
              _ogFields
              (Just _ogAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersGetResource)
                      r
                      u
