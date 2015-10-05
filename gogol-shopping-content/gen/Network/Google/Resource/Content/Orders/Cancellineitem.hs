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
-- Module      : Network.Google.Resource.Content.Orders.Cancellineitem
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCancellineitem@.
module Network.Google.Resource.Content.Orders.Cancellineitem
    (
    -- * REST Resource
      OrdersCancellineitemResource

    -- * Creating a Request
    , ordersCancellineitem'
    , OrdersCancellineitem'

    -- * Request Lenses
    , oQuotaUser
    , oMerchantId
    , oPrettyPrint
    , oUserIP
    , oPayload
    , oKey
    , oOAuthToken
    , oOrderId
    , oFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancellineitem@ which the
-- 'OrdersCancellineitem'' request conforms to.
type OrdersCancellineitemResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancelLineItem" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersCancelLineItemRequest :>
                             Post '[JSON] OrdersCancelLineItemResponse

-- | Cancels a line item.
--
-- /See:/ 'ordersCancellineitem'' smart constructor.
data OrdersCancellineitem' = OrdersCancellineitem'
    { _oQuotaUser   :: !(Maybe Text)
    , _oMerchantId  :: !Word64
    , _oPrettyPrint :: !Bool
    , _oUserIP      :: !(Maybe Text)
    , _oPayload     :: !OrdersCancelLineItemRequest
    , _oKey         :: !(Maybe AuthKey)
    , _oOAuthToken  :: !(Maybe OAuthToken)
    , _oOrderId     :: !Text
    , _oFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancellineitem'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oMerchantId'
--
-- * 'oPrettyPrint'
--
-- * 'oUserIP'
--
-- * 'oPayload'
--
-- * 'oKey'
--
-- * 'oOAuthToken'
--
-- * 'oOrderId'
--
-- * 'oFields'
ordersCancellineitem'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCancelLineItemRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersCancellineitem'
ordersCancellineitem' pOMerchantId_ pOPayload_ pOOrderId_ =
    OrdersCancellineitem'
    { _oQuotaUser = Nothing
    , _oMerchantId = pOMerchantId_
    , _oPrettyPrint = True
    , _oUserIP = Nothing
    , _oPayload = pOPayload_
    , _oKey = Nothing
    , _oOAuthToken = Nothing
    , _oOrderId = pOOrderId_
    , _oFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' OrdersCancellineitem' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersCancellineitem' Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' OrdersCancellineitem' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIP :: Lens' OrdersCancellineitem' (Maybe Text)
oUserIP = lens _oUserIP (\ s a -> s{_oUserIP = a})

-- | Multipart request metadata.
oPayload :: Lens' OrdersCancellineitem' OrdersCancelLineItemRequest
oPayload = lens _oPayload (\ s a -> s{_oPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' OrdersCancellineitem' (Maybe AuthKey)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | OAuth 2.0 token for the current user.
oOAuthToken :: Lens' OrdersCancellineitem' (Maybe OAuthToken)
oOAuthToken
  = lens _oOAuthToken (\ s a -> s{_oOAuthToken = a})

-- | The ID of the order.
oOrderId :: Lens' OrdersCancellineitem' Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' OrdersCancellineitem' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

instance GoogleAuth OrdersCancellineitem' where
        authKey = oKey . _Just
        authToken = oOAuthToken . _Just

instance GoogleRequest OrdersCancellineitem' where
        type Rs OrdersCancellineitem' =
             OrdersCancelLineItemResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCancellineitem'{..}
          = go _oMerchantId _oOrderId _oQuotaUser
              (Just _oPrettyPrint)
              _oUserIP
              _oFields
              _oKey
              _oOAuthToken
              (Just AltJSON)
              _oPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCancellineitemResource)
                      r
                      u
