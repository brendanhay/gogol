{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Getbymerchantorderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an order using merchant order id.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.getbymerchantorderid@.
module Network.Google.API.Content.Orders.Getbymerchantorderid
    (
    -- * REST Resource
      OrdersGetbymerchantorderidAPI

    -- * Creating a Request
    , ordersGetbymerchantorderid'
    , OrdersGetbymerchantorderid'

    -- * Request Lenses
    , og1QuotaUser
    , og1MerchantId
    , og1PrettyPrint
    , og1UserIp
    , og1MerchantOrderId
    , og1Key
    , og1OauthToken
    , og1Fields
    , og1Alt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.getbymerchantorderid which the
-- 'OrdersGetbymerchantorderid'' request conforms to.
type OrdersGetbymerchantorderidAPI =
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
    { _og1QuotaUser       :: !(Maybe Text)
    , _og1MerchantId      :: !Word64
    , _og1PrettyPrint     :: !Bool
    , _og1UserIp          :: !(Maybe Text)
    , _og1MerchantOrderId :: !Text
    , _og1Key             :: !(Maybe Text)
    , _og1OauthToken      :: !(Maybe Text)
    , _og1Fields          :: !(Maybe Text)
    , _og1Alt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetbymerchantorderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'og1QuotaUser'
--
-- * 'og1MerchantId'
--
-- * 'og1PrettyPrint'
--
-- * 'og1UserIp'
--
-- * 'og1MerchantOrderId'
--
-- * 'og1Key'
--
-- * 'og1OauthToken'
--
-- * 'og1Fields'
--
-- * 'og1Alt'
ordersGetbymerchantorderid'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'merchantOrderId'
    -> OrdersGetbymerchantorderid'
ordersGetbymerchantorderid' pOg1MerchantId_ pOg1MerchantOrderId_ =
    OrdersGetbymerchantorderid'
    { _og1QuotaUser = Nothing
    , _og1MerchantId = pOg1MerchantId_
    , _og1PrettyPrint = True
    , _og1UserIp = Nothing
    , _og1MerchantOrderId = pOg1MerchantOrderId_
    , _og1Key = Nothing
    , _og1OauthToken = Nothing
    , _og1Fields = Nothing
    , _og1Alt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
og1QuotaUser :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
og1QuotaUser
  = lens _og1QuotaUser (\ s a -> s{_og1QuotaUser = a})

-- | The ID of the managing account.
og1MerchantId :: Lens' OrdersGetbymerchantorderid' Word64
og1MerchantId
  = lens _og1MerchantId
      (\ s a -> s{_og1MerchantId = a})

-- | Returns response with indentations and line breaks.
og1PrettyPrint :: Lens' OrdersGetbymerchantorderid' Bool
og1PrettyPrint
  = lens _og1PrettyPrint
      (\ s a -> s{_og1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
og1UserIp :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
og1UserIp
  = lens _og1UserIp (\ s a -> s{_og1UserIp = a})

-- | The merchant order id to be looked for.
og1MerchantOrderId :: Lens' OrdersGetbymerchantorderid' Text
og1MerchantOrderId
  = lens _og1MerchantOrderId
      (\ s a -> s{_og1MerchantOrderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
og1Key :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
og1Key = lens _og1Key (\ s a -> s{_og1Key = a})

-- | OAuth 2.0 token for the current user.
og1OauthToken :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
og1OauthToken
  = lens _og1OauthToken
      (\ s a -> s{_og1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
og1Fields :: Lens' OrdersGetbymerchantorderid' (Maybe Text)
og1Fields
  = lens _og1Fields (\ s a -> s{_og1Fields = a})

-- | Data format for the response.
og1Alt :: Lens' OrdersGetbymerchantorderid' Alt
og1Alt = lens _og1Alt (\ s a -> s{_og1Alt = a})

instance GoogleRequest OrdersGetbymerchantorderid'
         where
        type Rs OrdersGetbymerchantorderid' =
             OrdersGetByMerchantOrderIdResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGetbymerchantorderid'{..}
          = go _og1QuotaUser _og1MerchantId
              (Just _og1PrettyPrint)
              _og1UserIp
              _og1MerchantOrderId
              _og1Key
              _og1OauthToken
              _og1Fields
              (Just _og1Alt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGetbymerchantorderidAPI)
                      r
                      u
