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
-- Module      : Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the merchant order ID for a given order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersUpdatemerchantOrderid@.
module Network.Google.Resource.Content.Orders.UpdatemerchantOrderid
    (
    -- * REST Resource
      OrdersUpdatemerchantOrderidResource

    -- * Creating a Request
    , ordersUpdatemerchantOrderid'
    , OrdersUpdatemerchantOrderid'

    -- * Request Lenses
    , ouoOrdersUpdateMerchantOrderIdRequest
    , ouoQuotaUser
    , ouoMerchantId
    , ouoPrettyPrint
    , ouoUserIP
    , ouoKey
    , ouoOAuthToken
    , ouoOrderId
    , ouoFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersUpdatemerchantOrderid@ which the
-- 'OrdersUpdatemerchantOrderid'' request conforms to.
type OrdersUpdatemerchantOrderidResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "updateMerchantOrderId" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersUpdateMerchantOrderIdRequest :>
                             Post '[JSON] OrdersUpdateMerchantOrderIdResponse

-- | Updates the merchant order ID for a given order.
--
-- /See:/ 'ordersUpdatemerchantOrderid'' smart constructor.
data OrdersUpdatemerchantOrderid' = OrdersUpdatemerchantOrderid'
    { _ouoOrdersUpdateMerchantOrderIdRequest :: !OrdersUpdateMerchantOrderIdRequest
    , _ouoQuotaUser                          :: !(Maybe Text)
    , _ouoMerchantId                         :: !Word64
    , _ouoPrettyPrint                        :: !Bool
    , _ouoUserIP                             :: !(Maybe Text)
    , _ouoKey                                :: !(Maybe Key)
    , _ouoOAuthToken                         :: !(Maybe OAuthToken)
    , _ouoOrderId                            :: !Text
    , _ouoFields                             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdatemerchantOrderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouoOrdersUpdateMerchantOrderIdRequest'
--
-- * 'ouoQuotaUser'
--
-- * 'ouoMerchantId'
--
-- * 'ouoPrettyPrint'
--
-- * 'ouoUserIP'
--
-- * 'ouoKey'
--
-- * 'ouoOAuthToken'
--
-- * 'ouoOrderId'
--
-- * 'ouoFields'
ordersUpdatemerchantOrderid'
    :: OrdersUpdateMerchantOrderIdRequest -- ^ 'OrdersUpdateMerchantOrderIdRequest'
    -> Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersUpdatemerchantOrderid'
ordersUpdatemerchantOrderid' pOuoOrdersUpdateMerchantOrderIdRequest_ pOuoMerchantId_ pOuoOrderId_ =
    OrdersUpdatemerchantOrderid'
    { _ouoOrdersUpdateMerchantOrderIdRequest = pOuoOrdersUpdateMerchantOrderIdRequest_
    , _ouoQuotaUser = Nothing
    , _ouoMerchantId = pOuoMerchantId_
    , _ouoPrettyPrint = True
    , _ouoUserIP = Nothing
    , _ouoKey = Nothing
    , _ouoOAuthToken = Nothing
    , _ouoOrderId = pOuoOrderId_
    , _ouoFields = Nothing
    }

-- | Multipart request metadata.
ouoOrdersUpdateMerchantOrderIdRequest :: Lens' OrdersUpdatemerchantOrderid' OrdersUpdateMerchantOrderIdRequest
ouoOrdersUpdateMerchantOrderIdRequest
  = lens _ouoOrdersUpdateMerchantOrderIdRequest
      (\ s a ->
         s{_ouoOrdersUpdateMerchantOrderIdRequest = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouoQuotaUser :: Lens' OrdersUpdatemerchantOrderid' (Maybe Text)
ouoQuotaUser
  = lens _ouoQuotaUser (\ s a -> s{_ouoQuotaUser = a})

-- | The ID of the managing account.
ouoMerchantId :: Lens' OrdersUpdatemerchantOrderid' Word64
ouoMerchantId
  = lens _ouoMerchantId
      (\ s a -> s{_ouoMerchantId = a})

-- | Returns response with indentations and line breaks.
ouoPrettyPrint :: Lens' OrdersUpdatemerchantOrderid' Bool
ouoPrettyPrint
  = lens _ouoPrettyPrint
      (\ s a -> s{_ouoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouoUserIP :: Lens' OrdersUpdatemerchantOrderid' (Maybe Text)
ouoUserIP
  = lens _ouoUserIP (\ s a -> s{_ouoUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouoKey :: Lens' OrdersUpdatemerchantOrderid' (Maybe Key)
ouoKey = lens _ouoKey (\ s a -> s{_ouoKey = a})

-- | OAuth 2.0 token for the current user.
ouoOAuthToken :: Lens' OrdersUpdatemerchantOrderid' (Maybe OAuthToken)
ouoOAuthToken
  = lens _ouoOAuthToken
      (\ s a -> s{_ouoOAuthToken = a})

-- | The ID of the order.
ouoOrderId :: Lens' OrdersUpdatemerchantOrderid' Text
ouoOrderId
  = lens _ouoOrderId (\ s a -> s{_ouoOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ouoFields :: Lens' OrdersUpdatemerchantOrderid' (Maybe Text)
ouoFields
  = lens _ouoFields (\ s a -> s{_ouoFields = a})

instance GoogleAuth OrdersUpdatemerchantOrderid'
         where
        authKey = ouoKey . _Just
        authToken = ouoOAuthToken . _Just

instance GoogleRequest OrdersUpdatemerchantOrderid'
         where
        type Rs OrdersUpdatemerchantOrderid' =
             OrdersUpdateMerchantOrderIdResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersUpdatemerchantOrderid'{..}
          = go _ouoQuotaUser _ouoMerchantId
              (Just _ouoPrettyPrint)
              _ouoUserIP
              _ouoKey
              _ouoOAuthToken
              _ouoOrderId
              _ouoFields
              (Just AltJSON)
              _ouoOrdersUpdateMerchantOrderIdRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersUpdatemerchantOrderidResource)
                      r
                      u
