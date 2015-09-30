{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Content.Orders.Shiplineitems
    (
    -- * REST Resource
      OrdersShiplineitemsAPI

    -- * Creating a Request
    , ordersShiplineitems
    , OrdersShiplineitems

    -- * Request Lenses
    , osQuotaUser
    , osMerchantId
    , osPrettyPrint
    , osUserIp
    , osKey
    , osOauthToken
    , osOrderId
    , osFields
    , osAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersShiplineitems@ which the
-- 'OrdersShiplineitems' request conforms to.
type OrdersShiplineitemsAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "shipLineItems" :>
             Post '[JSON] OrdersShipLineItemsResponse

-- | Marks line item(s) as shipped.
--
-- /See:/ 'ordersShiplineitems' smart constructor.
data OrdersShiplineitems = OrdersShiplineitems
    { _osQuotaUser   :: !(Maybe Text)
    , _osMerchantId  :: !Word64
    , _osPrettyPrint :: !Bool
    , _osUserIp      :: !(Maybe Text)
    , _osKey         :: !(Maybe Text)
    , _osOauthToken  :: !(Maybe Text)
    , _osOrderId     :: !Text
    , _osFields      :: !(Maybe Text)
    , _osAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'osUserIp'
--
-- * 'osKey'
--
-- * 'osOauthToken'
--
-- * 'osOrderId'
--
-- * 'osFields'
--
-- * 'osAlt'
ordersShiplineitems
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersShiplineitems
ordersShiplineitems pOsMerchantId_ pOsOrderId_ =
    OrdersShiplineitems
    { _osQuotaUser = Nothing
    , _osMerchantId = pOsMerchantId_
    , _osPrettyPrint = True
    , _osUserIp = Nothing
    , _osKey = Nothing
    , _osOauthToken = Nothing
    , _osOrderId = pOsOrderId_
    , _osFields = Nothing
    , _osAlt = "json"
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
osUserIp :: Lens' OrdersShiplineitems' (Maybe Text)
osUserIp = lens _osUserIp (\ s a -> s{_osUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osKey :: Lens' OrdersShiplineitems' (Maybe Text)
osKey = lens _osKey (\ s a -> s{_osKey = a})

-- | OAuth 2.0 token for the current user.
osOauthToken :: Lens' OrdersShiplineitems' (Maybe Text)
osOauthToken
  = lens _osOauthToken (\ s a -> s{_osOauthToken = a})

-- | The ID of the order.
osOrderId :: Lens' OrdersShiplineitems' Text
osOrderId
  = lens _osOrderId (\ s a -> s{_osOrderId = a})

-- | Selector specifying which fields to include in a partial response.
osFields :: Lens' OrdersShiplineitems' (Maybe Text)
osFields = lens _osFields (\ s a -> s{_osFields = a})

-- | Data format for the response.
osAlt :: Lens' OrdersShiplineitems' Text
osAlt = lens _osAlt (\ s a -> s{_osAlt = a})

instance GoogleRequest OrdersShiplineitems' where
        type Rs OrdersShiplineitems' =
             OrdersShipLineItemsResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersShiplineitems{..}
          = go _osQuotaUser _osMerchantId _osPrettyPrint
              _osUserIp
              _osKey
              _osOauthToken
              _osOrderId
              _osFields
              _osAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersShiplineitemsAPI)
                      r
                      u
