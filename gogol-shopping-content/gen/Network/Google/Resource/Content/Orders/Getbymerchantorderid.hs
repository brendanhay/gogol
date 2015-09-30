{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Getbymerchantorderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an order using merchant order id.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersGetbymerchantorderid@.
module Content.Orders.Getbymerchantorderid
    (
    -- * REST Resource
      OrdersGetbymerchantorderidAPI

    -- * Creating a Request
    , ordersGetbymerchantorderid
    , OrdersGetbymerchantorderid

    -- * Request Lenses
    , ogQuotaUser
    , ogMerchantId
    , ogPrettyPrint
    , ogUserIp
    , ogMerchantOrderId
    , ogKey
    , ogOauthToken
    , ogFields
    , ogAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGetbymerchantorderid@ which the
-- 'OrdersGetbymerchantorderid' request conforms to.
type OrdersGetbymerchantorderidAPI =
     Capture "merchantId" Word64 :>
       "ordersbymerchantid" :>
         Capture "merchantOrderId" Text :>
           Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order id.
--
-- /See:/ 'ordersGetbymerchantorderid' smart constructor.
data OrdersGetbymerchantorderid = OrdersGetbymerchantorderid
    { _ogQuotaUser       :: !(Maybe Text)
    , _ogMerchantId      :: !Word64
    , _ogPrettyPrint     :: !Bool
    , _ogUserIp          :: !(Maybe Text)
    , _ogMerchantOrderId :: !Text
    , _ogKey             :: !(Maybe Text)
    , _ogOauthToken      :: !(Maybe Text)
    , _ogFields          :: !(Maybe Text)
    , _ogAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetbymerchantorderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogMerchantId'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIp'
--
-- * 'ogMerchantOrderId'
--
-- * 'ogKey'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
ordersGetbymerchantorderid
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'merchantOrderId'
    -> OrdersGetbymerchantorderid
ordersGetbymerchantorderid pOgMerchantId_ pOgMerchantOrderId_ =
    OrdersGetbymerchantorderid
    { _ogQuotaUser = Nothing
    , _ogMerchantId = pOgMerchantId_
    , _ogPrettyPrint = True
    , _ogUserIp = Nothing
    , _ogMerchantOrderId = pOgMerchantOrderId_
    , _ogKey = Nothing
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | The ID of the managing account.
ogMerchantId :: Lens' OrdersGetbymerchantorderid' Word64
ogMerchantId
  = lens _ogMerchantId (\ s a -> s{_ogMerchantId = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrdersGetbymerchantorderid' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIp :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | The merchant order id to be looked for.
ogMerchantOrderId :: Lens' OrdersGetbymerchantorderid' Text
ogMerchantOrderId
  = lens _ogMerchantOrderId
      (\ s a -> s{_ogMerchantOrderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OrdersGetbymerchantorderid' Text
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OrdersGetbymerchantorderid'
         where
        type Rs OrdersGetbymerchantorderid' =
             OrdersGetByMerchantOrderIdResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGetbymerchantorderid{..}
          = go _ogQuotaUser _ogMerchantId _ogPrettyPrint
              _ogUserIp
              _ogMerchantOrderId
              _ogKey
              _ogOauthToken
              _ogFields
              _ogAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGetbymerchantorderidAPI)
                      r
                      u
