{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , ogUserIP
    , ogKey
    , ogOAuthToken
    , ogOrderId
    , ogFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Order

-- | Retrieves an order from your Merchant Center account.
--
-- /See:/ 'ordersGet'' smart constructor.
data OrdersGet' = OrdersGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogMerchantId  :: !Word64
    , _ogPrettyPrint :: !Bool
    , _ogUserIP      :: !(Maybe Text)
    , _ogKey         :: !(Maybe AuthKey)
    , _ogOAuthToken  :: !(Maybe OAuthToken)
    , _ogOrderId     :: !Text
    , _ogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ogUserIP'
--
-- * 'ogKey'
--
-- * 'ogOAuthToken'
--
-- * 'ogOrderId'
--
-- * 'ogFields'
ordersGet'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersGet'
ordersGet' pOgMerchantId_ pOgOrderId_ =
    OrdersGet'
    { _ogQuotaUser = Nothing
    , _ogMerchantId = pOgMerchantId_
    , _ogPrettyPrint = True
    , _ogUserIP = Nothing
    , _ogKey = Nothing
    , _ogOAuthToken = Nothing
    , _ogOrderId = pOgOrderId_
    , _ogFields = Nothing
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
ogUserIP :: Lens' OrdersGet' (Maybe Text)
ogUserIP = lens _ogUserIP (\ s a -> s{_ogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGet' (Maybe AuthKey)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OrdersGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | The ID of the order.
ogOrderId :: Lens' OrdersGet' Text
ogOrderId
  = lens _ogOrderId (\ s a -> s{_ogOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

instance GoogleAuth OrdersGet' where
        authKey = ogKey . _Just
        authToken = ogOAuthToken . _Just

instance GoogleRequest OrdersGet' where
        type Rs OrdersGet' = Order
        request = requestWith shoppingContentRequest
        requestWith rq OrdersGet'{..}
          = go _ogMerchantId _ogOrderId _ogQuotaUser
              (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy OrdersGetResource) rq
