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
-- Module      : Network.Google.Resource.Content.Orders.CreatetestOrder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Creates a test order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCreatetestOrder@.
module Network.Google.Resource.Content.Orders.CreatetestOrder
    (
    -- * REST Resource
      OrdersCreatetestOrderResource

    -- * Creating a Request
    , ordersCreatetestOrder'
    , OrdersCreatetestOrder'

    -- * Request Lenses
    , ocoQuotaUser
    , ocoMerchantId
    , ocoPrettyPrint
    , ocoUserIP
    , ocoOrdersCreateTestOrderRequest
    , ocoKey
    , ocoOAuthToken
    , ocoFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCreatetestOrder@ which the
-- 'OrdersCreatetestOrder'' request conforms to.
type OrdersCreatetestOrderResource =
     Capture "merchantId" Word64 :>
       "testorders" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] OrdersCreateTestOrderRequest :>
                         Post '[JSON] OrdersCreateTestOrderResponse

-- | Sandbox only. Creates a test order.
--
-- /See:/ 'ordersCreatetestOrder'' smart constructor.
data OrdersCreatetestOrder' = OrdersCreatetestOrder'
    { _ocoQuotaUser                    :: !(Maybe Text)
    , _ocoMerchantId                   :: !Word64
    , _ocoPrettyPrint                  :: !Bool
    , _ocoUserIP                       :: !(Maybe Text)
    , _ocoOrdersCreateTestOrderRequest :: !OrdersCreateTestOrderRequest
    , _ocoKey                          :: !(Maybe Key)
    , _ocoOAuthToken                   :: !(Maybe OAuthToken)
    , _ocoFields                       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreatetestOrder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocoQuotaUser'
--
-- * 'ocoMerchantId'
--
-- * 'ocoPrettyPrint'
--
-- * 'ocoUserIP'
--
-- * 'ocoOrdersCreateTestOrderRequest'
--
-- * 'ocoKey'
--
-- * 'ocoOAuthToken'
--
-- * 'ocoFields'
ordersCreatetestOrder'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCreateTestOrderRequest -- ^ 'OrdersCreateTestOrderRequest'
    -> OrdersCreatetestOrder'
ordersCreatetestOrder' pOcoMerchantId_ pOcoOrdersCreateTestOrderRequest_ =
    OrdersCreatetestOrder'
    { _ocoQuotaUser = Nothing
    , _ocoMerchantId = pOcoMerchantId_
    , _ocoPrettyPrint = True
    , _ocoUserIP = Nothing
    , _ocoOrdersCreateTestOrderRequest = pOcoOrdersCreateTestOrderRequest_
    , _ocoKey = Nothing
    , _ocoOAuthToken = Nothing
    , _ocoFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ocoQuotaUser :: Lens' OrdersCreatetestOrder' (Maybe Text)
ocoQuotaUser
  = lens _ocoQuotaUser (\ s a -> s{_ocoQuotaUser = a})

-- | The ID of the managing account.
ocoMerchantId :: Lens' OrdersCreatetestOrder' Word64
ocoMerchantId
  = lens _ocoMerchantId
      (\ s a -> s{_ocoMerchantId = a})

-- | Returns response with indentations and line breaks.
ocoPrettyPrint :: Lens' OrdersCreatetestOrder' Bool
ocoPrettyPrint
  = lens _ocoPrettyPrint
      (\ s a -> s{_ocoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ocoUserIP :: Lens' OrdersCreatetestOrder' (Maybe Text)
ocoUserIP
  = lens _ocoUserIP (\ s a -> s{_ocoUserIP = a})

-- | Multipart request metadata.
ocoOrdersCreateTestOrderRequest :: Lens' OrdersCreatetestOrder' OrdersCreateTestOrderRequest
ocoOrdersCreateTestOrderRequest
  = lens _ocoOrdersCreateTestOrderRequest
      (\ s a -> s{_ocoOrdersCreateTestOrderRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ocoKey :: Lens' OrdersCreatetestOrder' (Maybe Key)
ocoKey = lens _ocoKey (\ s a -> s{_ocoKey = a})

-- | OAuth 2.0 token for the current user.
ocoOAuthToken :: Lens' OrdersCreatetestOrder' (Maybe OAuthToken)
ocoOAuthToken
  = lens _ocoOAuthToken
      (\ s a -> s{_ocoOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ocoFields :: Lens' OrdersCreatetestOrder' (Maybe Text)
ocoFields
  = lens _ocoFields (\ s a -> s{_ocoFields = a})

instance GoogleAuth OrdersCreatetestOrder' where
        authKey = ocoKey . _Just
        authToken = ocoOAuthToken . _Just

instance GoogleRequest OrdersCreatetestOrder' where
        type Rs OrdersCreatetestOrder' =
             OrdersCreateTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCreatetestOrder'{..}
          = go _ocoMerchantId _ocoQuotaUser
              (Just _ocoPrettyPrint)
              _ocoUserIP
              _ocoFields
              _ocoKey
              _ocoOAuthToken
              (Just AltJSON)
              _ocoOrdersCreateTestOrderRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCreatetestOrderResource)
                      r
                      u
