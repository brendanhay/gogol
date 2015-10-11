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
-- Module      : Network.Google.Resource.Content.Orders.Refund
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Refund a portion of the order, up to the full amount paid.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersRefund@.
module Network.Google.Resource.Content.Orders.Refund
    (
    -- * REST Resource
      OrdersRefundResource

    -- * Creating a Request
    , ordersRefund'
    , OrdersRefund'

    -- * Request Lenses
    , orQuotaUser
    , orMerchantId
    , orPrettyPrint
    , orUserIP
    , orPayload
    , orKey
    , orOAuthToken
    , orOrderId
    , orFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersRefund@ method which the
-- 'OrdersRefund'' request conforms to.
type OrdersRefundResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "refund" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersRefundRequest :>
                             Post '[JSON] OrdersRefundResponse

-- | Refund a portion of the order, up to the full amount paid.
--
-- /See:/ 'ordersRefund'' smart constructor.
data OrdersRefund' = OrdersRefund'
    { _orQuotaUser   :: !(Maybe Text)
    , _orMerchantId  :: !Word64
    , _orPrettyPrint :: !Bool
    , _orUserIP      :: !(Maybe Text)
    , _orPayload     :: !OrdersRefundRequest
    , _orKey         :: !(Maybe AuthKey)
    , _orOAuthToken  :: !(Maybe OAuthToken)
    , _orOrderId     :: !Text
    , _orFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefund'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orQuotaUser'
--
-- * 'orMerchantId'
--
-- * 'orPrettyPrint'
--
-- * 'orUserIP'
--
-- * 'orPayload'
--
-- * 'orKey'
--
-- * 'orOAuthToken'
--
-- * 'orOrderId'
--
-- * 'orFields'
ordersRefund'
    :: Word64 -- ^ 'merchantId'
    -> OrdersRefundRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersRefund'
ordersRefund' pOrMerchantId_ pOrPayload_ pOrOrderId_ =
    OrdersRefund'
    { _orQuotaUser = Nothing
    , _orMerchantId = pOrMerchantId_
    , _orPrettyPrint = True
    , _orUserIP = Nothing
    , _orPayload = pOrPayload_
    , _orKey = Nothing
    , _orOAuthToken = Nothing
    , _orOrderId = pOrOrderId_
    , _orFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
orQuotaUser :: Lens' OrdersRefund' (Maybe Text)
orQuotaUser
  = lens _orQuotaUser (\ s a -> s{_orQuotaUser = a})

-- | The ID of the managing account.
orMerchantId :: Lens' OrdersRefund' Word64
orMerchantId
  = lens _orMerchantId (\ s a -> s{_orMerchantId = a})

-- | Returns response with indentations and line breaks.
orPrettyPrint :: Lens' OrdersRefund' Bool
orPrettyPrint
  = lens _orPrettyPrint
      (\ s a -> s{_orPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
orUserIP :: Lens' OrdersRefund' (Maybe Text)
orUserIP = lens _orUserIP (\ s a -> s{_orUserIP = a})

-- | Multipart request metadata.
orPayload :: Lens' OrdersRefund' OrdersRefundRequest
orPayload
  = lens _orPayload (\ s a -> s{_orPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
orKey :: Lens' OrdersRefund' (Maybe AuthKey)
orKey = lens _orKey (\ s a -> s{_orKey = a})

-- | OAuth 2.0 token for the current user.
orOAuthToken :: Lens' OrdersRefund' (Maybe OAuthToken)
orOAuthToken
  = lens _orOAuthToken (\ s a -> s{_orOAuthToken = a})

-- | The ID of the order to refund.
orOrderId :: Lens' OrdersRefund' Text
orOrderId
  = lens _orOrderId (\ s a -> s{_orOrderId = a})

-- | Selector specifying which fields to include in a partial response.
orFields :: Lens' OrdersRefund' (Maybe Text)
orFields = lens _orFields (\ s a -> s{_orFields = a})

instance GoogleAuth OrdersRefund' where
        _AuthKey = orKey . _Just
        _AuthToken = orOAuthToken . _Just

instance GoogleRequest OrdersRefund' where
        type Rs OrdersRefund' = OrdersRefundResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersRefund'{..}
          = go _orMerchantId _orOrderId _orQuotaUser
              (Just _orPrettyPrint)
              _orUserIP
              _orFields
              _orKey
              _orOAuthToken
              (Just AltJSON)
              _orPayload
          where go
                  = clientBuild (Proxy :: Proxy OrdersRefundResource)
                      rq
