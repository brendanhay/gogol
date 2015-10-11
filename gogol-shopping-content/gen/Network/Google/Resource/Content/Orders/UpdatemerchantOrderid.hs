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
    , ouoQuotaUser
    , ouoMerchantId
    , ouoPrettyPrint
    , ouoUserIP
    , ouoPayload
    , ouoKey
    , ouoOAuthToken
    , ouoOrderId
    , ouoFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersUpdatemerchantOrderid@ method which the
-- 'OrdersUpdatemerchantOrderid'' request conforms to.
type OrdersUpdatemerchantOrderidResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "updateMerchantOrderId" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersUpdateMerchantOrderIdRequest :>
                             Post '[JSON] OrdersUpdateMerchantOrderIdResponse

-- | Updates the merchant order ID for a given order.
--
-- /See:/ 'ordersUpdatemerchantOrderid'' smart constructor.
data OrdersUpdatemerchantOrderid' = OrdersUpdatemerchantOrderid'
    { _ouoQuotaUser   :: !(Maybe Text)
    , _ouoMerchantId  :: !Word64
    , _ouoPrettyPrint :: !Bool
    , _ouoUserIP      :: !(Maybe Text)
    , _ouoPayload     :: !OrdersUpdateMerchantOrderIdRequest
    , _ouoKey         :: !(Maybe AuthKey)
    , _ouoOAuthToken  :: !(Maybe OAuthToken)
    , _ouoOrderId     :: !Text
    , _ouoFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdatemerchantOrderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouoQuotaUser'
--
-- * 'ouoMerchantId'
--
-- * 'ouoPrettyPrint'
--
-- * 'ouoUserIP'
--
-- * 'ouoPayload'
--
-- * 'ouoKey'
--
-- * 'ouoOAuthToken'
--
-- * 'ouoOrderId'
--
-- * 'ouoFields'
ordersUpdatemerchantOrderid'
    :: Word64 -- ^ 'merchantId'
    -> OrdersUpdateMerchantOrderIdRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersUpdatemerchantOrderid'
ordersUpdatemerchantOrderid' pOuoMerchantId_ pOuoPayload_ pOuoOrderId_ =
    OrdersUpdatemerchantOrderid'
    { _ouoQuotaUser = Nothing
    , _ouoMerchantId = pOuoMerchantId_
    , _ouoPrettyPrint = True
    , _ouoUserIP = Nothing
    , _ouoPayload = pOuoPayload_
    , _ouoKey = Nothing
    , _ouoOAuthToken = Nothing
    , _ouoOrderId = pOuoOrderId_
    , _ouoFields = Nothing
    }

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

-- | Multipart request metadata.
ouoPayload :: Lens' OrdersUpdatemerchantOrderid' OrdersUpdateMerchantOrderIdRequest
ouoPayload
  = lens _ouoPayload (\ s a -> s{_ouoPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouoKey :: Lens' OrdersUpdatemerchantOrderid' (Maybe AuthKey)
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
        _AuthKey = ouoKey . _Just
        _AuthToken = ouoOAuthToken . _Just

instance GoogleRequest OrdersUpdatemerchantOrderid'
         where
        type Rs OrdersUpdatemerchantOrderid' =
             OrdersUpdateMerchantOrderIdResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersUpdatemerchantOrderid'{..}
          = go _ouoMerchantId _ouoOrderId _ouoQuotaUser
              (Just _ouoPrettyPrint)
              _ouoUserIP
              _ouoFields
              _ouoKey
              _ouoOAuthToken
              (Just AltJSON)
              _ouoPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersUpdatemerchantOrderidResource)
                      rq
