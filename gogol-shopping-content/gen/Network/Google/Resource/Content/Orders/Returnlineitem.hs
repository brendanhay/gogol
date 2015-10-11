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
module Network.Google.Resource.Content.Orders.Returnlineitem
    (
    -- * REST Resource
      OrdersReturnlineitemResource

    -- * Creating a Request
    , ordersReturnlineitem'
    , OrdersReturnlineitem'

    -- * Request Lenses
    , orrQuotaUser
    , orrMerchantId
    , orrPrettyPrint
    , orrUserIP
    , orrPayload
    , orrKey
    , orrOAuthToken
    , orrOrderId
    , orrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersReturnlineitem@ method which the
-- 'OrdersReturnlineitem'' request conforms to.
type OrdersReturnlineitemResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "returnLineItem" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersReturnLineItemRequest :>
                             Post '[JSON] OrdersReturnLineItemResponse

-- | Returns a line item.
--
-- /See:/ 'ordersReturnlineitem'' smart constructor.
data OrdersReturnlineitem' = OrdersReturnlineitem'
    { _orrQuotaUser   :: !(Maybe Text)
    , _orrMerchantId  :: !Word64
    , _orrPrettyPrint :: !Bool
    , _orrUserIP      :: !(Maybe Text)
    , _orrPayload     :: !OrdersReturnLineItemRequest
    , _orrKey         :: !(Maybe AuthKey)
    , _orrOAuthToken  :: !(Maybe OAuthToken)
    , _orrOrderId     :: !Text
    , _orrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'orrUserIP'
--
-- * 'orrPayload'
--
-- * 'orrKey'
--
-- * 'orrOAuthToken'
--
-- * 'orrOrderId'
--
-- * 'orrFields'
ordersReturnlineitem'
    :: Word64 -- ^ 'merchantId'
    -> OrdersReturnLineItemRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersReturnlineitem'
ordersReturnlineitem' pOrrMerchantId_ pOrrPayload_ pOrrOrderId_ =
    OrdersReturnlineitem'
    { _orrQuotaUser = Nothing
    , _orrMerchantId = pOrrMerchantId_
    , _orrPrettyPrint = True
    , _orrUserIP = Nothing
    , _orrPayload = pOrrPayload_
    , _orrKey = Nothing
    , _orrOAuthToken = Nothing
    , _orrOrderId = pOrrOrderId_
    , _orrFields = Nothing
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
orrUserIP :: Lens' OrdersReturnlineitem' (Maybe Text)
orrUserIP
  = lens _orrUserIP (\ s a -> s{_orrUserIP = a})

-- | Multipart request metadata.
orrPayload :: Lens' OrdersReturnlineitem' OrdersReturnLineItemRequest
orrPayload
  = lens _orrPayload (\ s a -> s{_orrPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
orrKey :: Lens' OrdersReturnlineitem' (Maybe AuthKey)
orrKey = lens _orrKey (\ s a -> s{_orrKey = a})

-- | OAuth 2.0 token for the current user.
orrOAuthToken :: Lens' OrdersReturnlineitem' (Maybe OAuthToken)
orrOAuthToken
  = lens _orrOAuthToken
      (\ s a -> s{_orrOAuthToken = a})

-- | The ID of the order.
orrOrderId :: Lens' OrdersReturnlineitem' Text
orrOrderId
  = lens _orrOrderId (\ s a -> s{_orrOrderId = a})

-- | Selector specifying which fields to include in a partial response.
orrFields :: Lens' OrdersReturnlineitem' (Maybe Text)
orrFields
  = lens _orrFields (\ s a -> s{_orrFields = a})

instance GoogleAuth OrdersReturnlineitem' where
        _AuthKey = orrKey . _Just
        _AuthToken = orrOAuthToken . _Just

instance GoogleRequest OrdersReturnlineitem' where
        type Rs OrdersReturnlineitem' =
             OrdersReturnLineItemResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersReturnlineitem'{..}
          = go _orrMerchantId _orrOrderId _orrQuotaUser
              (Just _orrPrettyPrint)
              _orrUserIP
              _orrFields
              _orrKey
              _orrOAuthToken
              (Just AltJSON)
              _orrPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersReturnlineitemResource)
                      rq
