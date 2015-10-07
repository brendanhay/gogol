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
-- Module      : Network.Google.Resource.Content.Orders.Shiplineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Marks line item(s) as shipped.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersShiplineitems@.
module Network.Google.Resource.Content.Orders.Shiplineitems
    (
    -- * REST Resource
      OrdersShiplineitemsResource

    -- * Creating a Request
    , ordersShiplineitems'
    , OrdersShiplineitems'

    -- * Request Lenses
    , osQuotaUser
    , osMerchantId
    , osPrettyPrint
    , osUserIP
    , osPayload
    , osKey
    , osOAuthToken
    , osOrderId
    , osFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersShiplineitems@ method which the
-- 'OrdersShiplineitems'' request conforms to.
type OrdersShiplineitemsResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "shipLineItems" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrdersShipLineItemsRequest :>
                             Post '[JSON] OrdersShipLineItemsResponse

-- | Marks line item(s) as shipped.
--
-- /See:/ 'ordersShiplineitems'' smart constructor.
data OrdersShiplineitems' = OrdersShiplineitems'
    { _osQuotaUser   :: !(Maybe Text)
    , _osMerchantId  :: !Word64
    , _osPrettyPrint :: !Bool
    , _osUserIP      :: !(Maybe Text)
    , _osPayload     :: !OrdersShipLineItemsRequest
    , _osKey         :: !(Maybe AuthKey)
    , _osOAuthToken  :: !(Maybe OAuthToken)
    , _osOrderId     :: !Text
    , _osFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersShiplineitems'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osQuotaUser'
--
-- * 'osMerchantId'
--
-- * 'osPrettyPrint'
--
-- * 'osUserIP'
--
-- * 'osPayload'
--
-- * 'osKey'
--
-- * 'osOAuthToken'
--
-- * 'osOrderId'
--
-- * 'osFields'
ordersShiplineitems'
    :: Word64 -- ^ 'merchantId'
    -> OrdersShipLineItemsRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> OrdersShiplineitems'
ordersShiplineitems' pOsMerchantId_ pOsPayload_ pOsOrderId_ =
    OrdersShiplineitems'
    { _osQuotaUser = Nothing
    , _osMerchantId = pOsMerchantId_
    , _osPrettyPrint = True
    , _osUserIP = Nothing
    , _osPayload = pOsPayload_
    , _osKey = Nothing
    , _osOAuthToken = Nothing
    , _osOrderId = pOsOrderId_
    , _osFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osQuotaUser :: Lens' OrdersShiplineitems' (Maybe Text)
osQuotaUser
  = lens _osQuotaUser (\ s a -> s{_osQuotaUser = a})

-- | The ID of the managing account.
osMerchantId :: Lens' OrdersShiplineitems' Word64
osMerchantId
  = lens _osMerchantId (\ s a -> s{_osMerchantId = a})

-- | Returns response with indentations and line breaks.
osPrettyPrint :: Lens' OrdersShiplineitems' Bool
osPrettyPrint
  = lens _osPrettyPrint
      (\ s a -> s{_osPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osUserIP :: Lens' OrdersShiplineitems' (Maybe Text)
osUserIP = lens _osUserIP (\ s a -> s{_osUserIP = a})

-- | Multipart request metadata.
osPayload :: Lens' OrdersShiplineitems' OrdersShipLineItemsRequest
osPayload
  = lens _osPayload (\ s a -> s{_osPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osKey :: Lens' OrdersShiplineitems' (Maybe AuthKey)
osKey = lens _osKey (\ s a -> s{_osKey = a})

-- | OAuth 2.0 token for the current user.
osOAuthToken :: Lens' OrdersShiplineitems' (Maybe OAuthToken)
osOAuthToken
  = lens _osOAuthToken (\ s a -> s{_osOAuthToken = a})

-- | The ID of the order.
osOrderId :: Lens' OrdersShiplineitems' Text
osOrderId
  = lens _osOrderId (\ s a -> s{_osOrderId = a})

-- | Selector specifying which fields to include in a partial response.
osFields :: Lens' OrdersShiplineitems' (Maybe Text)
osFields = lens _osFields (\ s a -> s{_osFields = a})

instance GoogleAuth OrdersShiplineitems' where
        _AuthKey = osKey . _Just
        _AuthToken = osOAuthToken . _Just

instance GoogleRequest OrdersShiplineitems' where
        type Rs OrdersShiplineitems' =
             OrdersShipLineItemsResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersShiplineitems'{..}
          = go _osMerchantId _osOrderId _osQuotaUser
              (Just _osPrettyPrint)
              _osUserIP
              _osFields
              _osKey
              _osOAuthToken
              (Just AltJSON)
              _osPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersShiplineitemsResource)
                      rq
