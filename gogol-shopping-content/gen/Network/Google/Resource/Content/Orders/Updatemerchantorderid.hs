{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Updatemerchantorderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the merchant order ID for a given order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersUpdatemerchantorderid@.
module Content.Orders.Updatemerchantorderid
    (
    -- * REST Resource
      OrdersUpdatemerchantorderidAPI

    -- * Creating a Request
    , ordersUpdatemerchantorderid
    , OrdersUpdatemerchantorderid

    -- * Request Lenses
    , ouQuotaUser
    , ouMerchantId
    , ouPrettyPrint
    , ouUserIp
    , ouKey
    , ouOauthToken
    , ouOrderId
    , ouFields
    , ouAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersUpdatemerchantorderid@ which the
-- 'OrdersUpdatemerchantorderid' request conforms to.
type OrdersUpdatemerchantorderidAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "updateMerchantOrderId" :>
             Post '[JSON] OrdersUpdateMerchantOrderIdResponse

-- | Updates the merchant order ID for a given order.
--
-- /See:/ 'ordersUpdatemerchantorderid' smart constructor.
data OrdersUpdatemerchantorderid = OrdersUpdatemerchantorderid
    { _ouQuotaUser   :: !(Maybe Text)
    , _ouMerchantId  :: !Word64
    , _ouPrettyPrint :: !Bool
    , _ouUserIp      :: !(Maybe Text)
    , _ouKey         :: !(Maybe Text)
    , _ouOauthToken  :: !(Maybe Text)
    , _ouOrderId     :: !Text
    , _ouFields      :: !(Maybe Text)
    , _ouAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdatemerchantorderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouQuotaUser'
--
-- * 'ouMerchantId'
--
-- * 'ouPrettyPrint'
--
-- * 'ouUserIp'
--
-- * 'ouKey'
--
-- * 'ouOauthToken'
--
-- * 'ouOrderId'
--
-- * 'ouFields'
--
-- * 'ouAlt'
ordersUpdatemerchantorderid
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersUpdatemerchantorderid
ordersUpdatemerchantorderid pOuMerchantId_ pOuOrderId_ =
    OrdersUpdatemerchantorderid
    { _ouQuotaUser = Nothing
    , _ouMerchantId = pOuMerchantId_
    , _ouPrettyPrint = True
    , _ouUserIp = Nothing
    , _ouKey = Nothing
    , _ouOauthToken = Nothing
    , _ouOrderId = pOuOrderId_
    , _ouFields = Nothing
    , _ouAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouQuotaUser :: Lens' OrdersUpdatemerchantorderid' (Maybe Text)
ouQuotaUser
  = lens _ouQuotaUser (\ s a -> s{_ouQuotaUser = a})

-- | The ID of the managing account.
ouMerchantId :: Lens' OrdersUpdatemerchantorderid' Word64
ouMerchantId
  = lens _ouMerchantId (\ s a -> s{_ouMerchantId = a})

-- | Returns response with indentations and line breaks.
ouPrettyPrint :: Lens' OrdersUpdatemerchantorderid' Bool
ouPrettyPrint
  = lens _ouPrettyPrint
      (\ s a -> s{_ouPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouUserIp :: Lens' OrdersUpdatemerchantorderid' (Maybe Text)
ouUserIp = lens _ouUserIp (\ s a -> s{_ouUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouKey :: Lens' OrdersUpdatemerchantorderid' (Maybe Text)
ouKey = lens _ouKey (\ s a -> s{_ouKey = a})

-- | OAuth 2.0 token for the current user.
ouOauthToken :: Lens' OrdersUpdatemerchantorderid' (Maybe Text)
ouOauthToken
  = lens _ouOauthToken (\ s a -> s{_ouOauthToken = a})

-- | The ID of the order.
ouOrderId :: Lens' OrdersUpdatemerchantorderid' Text
ouOrderId
  = lens _ouOrderId (\ s a -> s{_ouOrderId = a})

-- | Selector specifying which fields to include in a partial response.
ouFields :: Lens' OrdersUpdatemerchantorderid' (Maybe Text)
ouFields = lens _ouFields (\ s a -> s{_ouFields = a})

-- | Data format for the response.
ouAlt :: Lens' OrdersUpdatemerchantorderid' Text
ouAlt = lens _ouAlt (\ s a -> s{_ouAlt = a})

instance GoogleRequest OrdersUpdatemerchantorderid'
         where
        type Rs OrdersUpdatemerchantorderid' =
             OrdersUpdateMerchantOrderIdResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersUpdatemerchantorderid{..}
          = go _ouQuotaUser _ouMerchantId _ouPrettyPrint
              _ouUserIp
              _ouKey
              _ouOauthToken
              _ouOrderId
              _ouFields
              _ouAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersUpdatemerchantorderidAPI)
                      r
                      u
