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
-- Module      : Network.Google.Resource.Content.Orders.AdvancetestOrder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersAdvancetestOrder@.
module Network.Google.Resource.Content.Orders.AdvancetestOrder
    (
    -- * REST Resource
      OrdersAdvancetestOrderResource

    -- * Creating a Request
    , ordersAdvancetestOrder'
    , OrdersAdvancetestOrder'

    -- * Request Lenses
    , oaoQuotaUser
    , oaoMerchantId
    , oaoPrettyPrint
    , oaoUserIP
    , oaoKey
    , oaoOAuthToken
    , oaoOrderId
    , oaoFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersAdvancetestOrder@ which the
-- 'OrdersAdvancetestOrder'' request conforms to.
type OrdersAdvancetestOrderResource =
     Capture "merchantId" Word64 :>
       "testorders" :>
         Capture "orderId" Text :>
           "advance" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] OrdersAdvanceTestOrderResponse

-- | Sandbox only. Moves a test order from state \"inProgress\" to state
-- \"pendingShipment\".
--
-- /See:/ 'ordersAdvancetestOrder'' smart constructor.
data OrdersAdvancetestOrder' = OrdersAdvancetestOrder'
    { _oaoQuotaUser   :: !(Maybe Text)
    , _oaoMerchantId  :: !Word64
    , _oaoPrettyPrint :: !Bool
    , _oaoUserIP      :: !(Maybe Text)
    , _oaoKey         :: !(Maybe Key)
    , _oaoOAuthToken  :: !(Maybe OAuthToken)
    , _oaoOrderId     :: !Text
    , _oaoFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAdvancetestOrder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaoQuotaUser'
--
-- * 'oaoMerchantId'
--
-- * 'oaoPrettyPrint'
--
-- * 'oaoUserIP'
--
-- * 'oaoKey'
--
-- * 'oaoOAuthToken'
--
-- * 'oaoOrderId'
--
-- * 'oaoFields'
ordersAdvancetestOrder'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersAdvancetestOrder'
ordersAdvancetestOrder' pOaoMerchantId_ pOaoOrderId_ =
    OrdersAdvancetestOrder'
    { _oaoQuotaUser = Nothing
    , _oaoMerchantId = pOaoMerchantId_
    , _oaoPrettyPrint = True
    , _oaoUserIP = Nothing
    , _oaoKey = Nothing
    , _oaoOAuthToken = Nothing
    , _oaoOrderId = pOaoOrderId_
    , _oaoFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oaoQuotaUser :: Lens' OrdersAdvancetestOrder' (Maybe Text)
oaoQuotaUser
  = lens _oaoQuotaUser (\ s a -> s{_oaoQuotaUser = a})

-- | The ID of the managing account.
oaoMerchantId :: Lens' OrdersAdvancetestOrder' Word64
oaoMerchantId
  = lens _oaoMerchantId
      (\ s a -> s{_oaoMerchantId = a})

-- | Returns response with indentations and line breaks.
oaoPrettyPrint :: Lens' OrdersAdvancetestOrder' Bool
oaoPrettyPrint
  = lens _oaoPrettyPrint
      (\ s a -> s{_oaoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oaoUserIP :: Lens' OrdersAdvancetestOrder' (Maybe Text)
oaoUserIP
  = lens _oaoUserIP (\ s a -> s{_oaoUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oaoKey :: Lens' OrdersAdvancetestOrder' (Maybe Key)
oaoKey = lens _oaoKey (\ s a -> s{_oaoKey = a})

-- | OAuth 2.0 token for the current user.
oaoOAuthToken :: Lens' OrdersAdvancetestOrder' (Maybe OAuthToken)
oaoOAuthToken
  = lens _oaoOAuthToken
      (\ s a -> s{_oaoOAuthToken = a})

-- | The ID of the test order to modify.
oaoOrderId :: Lens' OrdersAdvancetestOrder' Text
oaoOrderId
  = lens _oaoOrderId (\ s a -> s{_oaoOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oaoFields :: Lens' OrdersAdvancetestOrder' (Maybe Text)
oaoFields
  = lens _oaoFields (\ s a -> s{_oaoFields = a})

instance GoogleAuth OrdersAdvancetestOrder' where
        authKey = oaoKey . _Just
        authToken = oaoOAuthToken . _Just

instance GoogleRequest OrdersAdvancetestOrder' where
        type Rs OrdersAdvancetestOrder' =
             OrdersAdvanceTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersAdvancetestOrder'{..}
          = go _oaoMerchantId _oaoOrderId _oaoQuotaUser
              (Just _oaoPrettyPrint)
              _oaoUserIP
              _oaoFields
              _oaoKey
              _oaoOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersAdvancetestOrderResource)
                      r
                      u
