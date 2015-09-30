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
    , ouuQuotaUser
    , ouuMerchantId
    , ouuPrettyPrint
    , ouuUserIp
    , ouuKey
    , ouuOauthToken
    , ouuOrderId
    , ouuFields
    , ouuAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] OrdersUpdateShipmentResponse

-- | Updates a shipment\'s status, carrier, and\/or tracking ID.
--
-- /See:/ 'ordersUpdateshipment'' smart constructor.
data OrdersUpdateshipment' = OrdersUpdateshipment'
    { _ouuQuotaUser   :: !(Maybe Text)
    , _ouuMerchantId  :: !Word64
    , _ouuPrettyPrint :: !Bool
    , _ouuUserIp      :: !(Maybe Text)
    , _ouuKey         :: !(Maybe Text)
    , _ouuOauthToken  :: !(Maybe Text)
    , _ouuOrderId     :: !Text
    , _ouuFields      :: !(Maybe Text)
    , _ouuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateshipment'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouuQuotaUser'
--
-- * 'ouuMerchantId'
--
-- * 'ouuPrettyPrint'
--
-- * 'ouuUserIp'
--
-- * 'ouuKey'
--
-- * 'ouuOauthToken'
--
-- * 'ouuOrderId'
--
-- * 'ouuFields'
--
-- * 'ouuAlt'
ordersUpdateshipment'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersUpdateshipment'
ordersUpdateshipment' pOuuMerchantId_ pOuuOrderId_ =
    OrdersUpdateshipment'
    { _ouuQuotaUser = Nothing
    , _ouuMerchantId = pOuuMerchantId_
    , _ouuPrettyPrint = True
    , _ouuUserIp = Nothing
    , _ouuKey = Nothing
    , _ouuOauthToken = Nothing
    , _ouuOrderId = pOuuOrderId_
    , _ouuFields = Nothing
    , _ouuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouuQuotaUser :: Lens' OrdersUpdateshipment' (Maybe Text)
ouuQuotaUser
  = lens _ouuQuotaUser (\ s a -> s{_ouuQuotaUser = a})

-- | The ID of the managing account.
ouuMerchantId :: Lens' OrdersUpdateshipment' Word64
ouuMerchantId
  = lens _ouuMerchantId
      (\ s a -> s{_ouuMerchantId = a})

-- | Returns response with indentations and line breaks.
ouuPrettyPrint :: Lens' OrdersUpdateshipment' Bool
ouuPrettyPrint
  = lens _ouuPrettyPrint
      (\ s a -> s{_ouuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouuUserIp :: Lens' OrdersUpdateshipment' (Maybe Text)
ouuUserIp
  = lens _ouuUserIp (\ s a -> s{_ouuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouuKey :: Lens' OrdersUpdateshipment' (Maybe Text)
ouuKey = lens _ouuKey (\ s a -> s{_ouuKey = a})

-- | OAuth 2.0 token for the current user.
ouuOauthToken :: Lens' OrdersUpdateshipment' (Maybe Text)
ouuOauthToken
  = lens _ouuOauthToken
      (\ s a -> s{_ouuOauthToken = a})

-- | The ID of the order.
ouuOrderId :: Lens' OrdersUpdateshipment' Text
ouuOrderId
  = lens _ouuOrderId (\ s a -> s{_ouuOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ouuFields :: Lens' OrdersUpdateshipment' (Maybe Text)
ouuFields
  = lens _ouuFields (\ s a -> s{_ouuFields = a})

-- | Data format for the response.
ouuAlt :: Lens' OrdersUpdateshipment' Alt
ouuAlt = lens _ouuAlt (\ s a -> s{_ouuAlt = a})

instance GoogleRequest OrdersUpdateshipment' where
        type Rs OrdersUpdateshipment' =
             OrdersUpdateShipmentResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersUpdateshipment'{..}
          = go _ouuQuotaUser _ouuMerchantId
              (Just _ouuPrettyPrint)
              _ouuUserIp
              _ouuKey
              _ouuOauthToken
              _ouuOrderId
              _ouuFields
              (Just _ouuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersUpdateshipmentResource)
                      r
                      u
