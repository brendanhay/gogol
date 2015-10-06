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
-- Module      : Network.Google.Resource.Content.Orders.Updateshipment
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersUpdateshipment@.
module Network.Google.Resource.Content.Orders.Updateshipment
    (
    -- * REST Resource
      OrdersUpdateshipmentResource

    -- * Creating a Request
    , ordersUpdateshipment'
    , OrdersUpdateshipment'

    -- * Request Lenses
    , ouQuotaUser
    , ouMerchantId
    , ouPrettyPrint
    , ouUserIP
    , ouPayload
    , ouKey
    , ouOAuthToken
    , ouOrderId
    , ouFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersUpdateshipment@ which the
-- 'OrdersUpdateshipment'' request conforms to.
type OrdersUpdateshipmentResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "updateShipment" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersUpdateShipmentRequest :>
                             Post '[JSON] OrdersUpdateShipmentResponse

-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ 'ordersUpdateshipment'' smart constructor.
data OrdersUpdateshipment' = OrdersUpdateshipment'
    { _ouQuotaUser   :: !(Maybe Text)
    , _ouMerchantId  :: !Word64
    , _ouPrettyPrint :: !Bool
    , _ouUserIP      :: !(Maybe Text)
    , _ouPayload     :: !OrdersUpdateShipmentRequest
    , _ouKey         :: !(Maybe AuthKey)
    , _ouOAuthToken  :: !(Maybe OAuthToken)
    , _ouOrderId     :: !Text
    , _ouFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateshipment'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouQuotaUser'
--
-- * 'ouMerchantId'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUserIP'
--
-- * 'ouPayload'
--
-- * 'ouKey'
--
-- * 'ouOAuthToken'
--
-- * 'ouOrderId'
--
-- * 'ouFields'
ordersUpdateshipment'
    :: Word64 -- ^ 'merchantId'
    -> OrdersUpdateShipmentRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersUpdateshipment'
ordersUpdateshipment' pOuMerchantId_ pOuPayload_ pOuOrderId_ =
    OrdersUpdateshipment'
    { _ouQuotaUser = Nothing
    , _ouMerchantId = pOuMerchantId_
    , _ouPrettyPrint = True
    , _ouUserIP = Nothing
    , _ouPayload = pOuPayload_
    , _ouKey = Nothing
    , _ouOAuthToken = Nothing
    , _ouOrderId = pOuOrderId_
    , _ouFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouQuotaUser :: Lens' OrdersUpdateshipment' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | The ID of the managing account.
ouMerchantId :: Lens' OrdersUpdateshipment' Word64
ouMerchantId
  = lens _ouMerchantId (\ s a -> s{_ouMerchantId = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrdersUpdateshipment' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouUserIP :: Lens' OrdersUpdateshipment' (Maybe Text)
ouUserIP = lens _ouUserIP (\ s a -> s{_ouUserIP = a})

-- | Multipart request metadata.
ouPayload :: Lens' OrdersUpdateshipment' OrdersUpdateShipmentRequest
ouPayload
  = lens _ouPayload (\ s a -> s{_ouPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrdersUpdateshipment' (Maybe AuthKey)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOAuthToken :: Lens' OrdersUpdateshipment' (Maybe OAuthToken)
ouOAuthToken
  = lens _ouOAuthToken (\ s a -> s{_ouOAuthToken = a})

-- | The ID of the order.
ouOrderId :: Lens' OrdersUpdateshipment' Text
ouOrderId
  = lens _ouOrderId (\ s a -> s{_ouOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrdersUpdateshipment' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

instance GoogleAuth OrdersUpdateshipment' where
        authKey = ouKey . _Just
        authToken = ouOAuthToken . _Just

instance GoogleRequest OrdersUpdateshipment' where
        type Rs OrdersUpdateshipment' =
             OrdersUpdateShipmentResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersUpdateshipment'{..}
          = go _ouMerchantId _ouOrderId _ouQuotaUser
              (Just _ouPrettyPrint)
              _ouUserIP
              _ouFields
              _ouKey
              _ouOAuthToken
              (Just AltJSON)
              _ouPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersUpdateshipmentResource)
                      rq
