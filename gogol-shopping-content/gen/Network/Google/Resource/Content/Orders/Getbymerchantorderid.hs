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
module Network.Google.Resource.Content.Orders.Getbymerchantorderid
    (
    -- * REST Resource
      OrdersGetbymerchantorderidResource

    -- * Creating a Request
    , ordersGetbymerchantorderid'
    , OrdersGetbymerchantorderid'

    -- * Request Lenses
    , oggQuotaUser
    , oggMerchantId
    , oggPrettyPrint
    , oggUserIp
    , oggMerchantOrderId
    , oggKey
    , oggOauthToken
    , oggFields
    , oggAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGetbymerchantorderid@ which the
-- 'OrdersGetbymerchantorderid'' request conforms to.
type OrdersGetbymerchantorderidResource =
     Capture "merchantId" Word64 :>
       "ordersbymerchantid" :>
         Capture "merchantOrderId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order id.
--
-- /See:/ 'ordersGetbymerchantorderid'' smart constructor.
data OrdersGetbymerchantorderid' = OrdersGetbymerchantorderid'
    { _oggQuotaUser       :: !(Maybe Text)
    , _oggMerchantId      :: !Word64
    , _oggPrettyPrint     :: !Bool
    , _oggUserIp          :: !(Maybe Text)
    , _oggMerchantOrderId :: !Text
    , _oggKey             :: !(Maybe Text)
    , _oggOauthToken      :: !(Maybe Text)
    , _oggFields          :: !(Maybe Text)
    , _oggAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetbymerchantorderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oggQuotaUser'
--
-- * 'oggMerchantId'
--
-- * 'oggPrettyPrint'
--
-- * 'oggUserIp'
--
-- * 'oggMerchantOrderId'
--
-- * 'oggKey'
--
-- * 'oggOauthToken'
--
-- * 'oggFields'
--
-- * 'oggAlt'
ordersGetbymerchantorderid'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'merchantOrderId'
    -> OrdersGetbymerchantorderid'
ordersGetbymerchantorderid' pOggMerchantId_ pOggMerchantOrderId_ =
    OrdersGetbymerchantorderid'
    { _oggQuotaUser = Nothing
    , _oggMerchantId = pOggMerchantId_
    , _oggPrettyPrint = True
    , _oggUserIp = Nothing
    , _oggMerchantOrderId = pOggMerchantOrderId_
    , _oggKey = Nothing
    , _oggOauthToken = Nothing
    , _oggFields = Nothing
    , _oggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oggQuotaUser :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
oggQuotaUser
  = lens _oggQuotaUser (\ s a -> s{_oggQuotaUser = a})

-- | The ID of the managing account.
oggMerchantId :: Lens' OrdersGetbymerchantorderid' Word64
oggMerchantId
  = lens _oggMerchantId
      (\ s a -> s{_oggMerchantId = a})

-- | Returns response with indentations and line breaks.
oggPrettyPrint :: Lens' OrdersGetbymerchantorderid' Bool
oggPrettyPrint
  = lens _oggPrettyPrint
      (\ s a -> s{_oggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oggUserIp :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
oggUserIp
  = lens _oggUserIp (\ s a -> s{_oggUserIp = a})

-- | The merchant order id to be looked for.
oggMerchantOrderId :: Lens' OrdersGetbymerchantorderid' Text
oggMerchantOrderId
  = lens _oggMerchantOrderId
      (\ s a -> s{_oggMerchantOrderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oggKey :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
oggKey = lens _oggKey (\ s a -> s{_oggKey = a})

-- | OAuth 2.0 token for the current user.
oggOauthToken :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
oggOauthToken
  = lens _oggOauthToken
      (\ s a -> s{_oggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oggFields :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
oggFields
  = lens _oggFields (\ s a -> s{_oggFields = a})

-- | Data format for the response.
oggAlt :: Lens' OrdersGetbymerchantorderid' Alt
oggAlt = lens _oggAlt (\ s a -> s{_oggAlt = a})

instance GoogleRequest OrdersGetbymerchantorderid'
         where
        type Rs OrdersGetbymerchantorderid' =
             OrdersGetByMerchantOrderIdResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGetbymerchantorderid'{..}
          = go _oggQuotaUser _oggMerchantId
              (Just _oggPrettyPrint)
              _oggUserIp
              _oggMerchantOrderId
              _oggKey
              _oggOauthToken
              _oggFields
              (Just _oggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGetbymerchantorderidResource)
                      r
                      u
