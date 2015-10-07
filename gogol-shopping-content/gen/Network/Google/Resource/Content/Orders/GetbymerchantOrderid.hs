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
-- Module      : Network.Google.Resource.Content.Orders.GetbymerchantOrderid
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an order using merchant order id.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersGetbymerchantOrderid@.
module Network.Google.Resource.Content.Orders.GetbymerchantOrderid
    (
    -- * REST Resource
      OrdersGetbymerchantOrderidResource

    -- * Creating a Request
    , ordersGetbymerchantOrderid'
    , OrdersGetbymerchantOrderid'

    -- * Request Lenses
    , ogogQuotaUser
    , ogogMerchantId
    , ogogPrettyPrint
    , ogogUserIP
    , ogogMerchantOrderId
    , ogogKey
    , ogogOAuthToken
    , ogogFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGetbymerchantOrderid@ method which the
-- 'OrdersGetbymerchantOrderid'' request conforms to.
type OrdersGetbymerchantOrderidResource =
     Capture "merchantId" Word64 :>
       "ordersbymerchantid" :>
         Capture "merchantOrderId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrdersGetByMerchantOrderIdResponse

-- | Retrieves an order using merchant order id.
--
-- /See:/ 'ordersGetbymerchantOrderid'' smart constructor.
data OrdersGetbymerchantOrderid' = OrdersGetbymerchantOrderid'
    { _ogogQuotaUser       :: !(Maybe Text)
    , _ogogMerchantId      :: !Word64
    , _ogogPrettyPrint     :: !Bool
    , _ogogUserIP          :: !(Maybe Text)
    , _ogogMerchantOrderId :: !Text
    , _ogogKey             :: !(Maybe AuthKey)
    , _ogogOAuthToken      :: !(Maybe OAuthToken)
    , _ogogFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetbymerchantOrderid'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogogQuotaUser'
--
-- * 'ogogMerchantId'
--
-- * 'ogogPrettyPrint'
--
-- * 'ogogUserIP'
--
-- * 'ogogMerchantOrderId'
--
-- * 'ogogKey'
--
-- * 'ogogOAuthToken'
--
-- * 'ogogFields'
ordersGetbymerchantOrderid'
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'merchantOrderId'
    -> OrdersGetbymerchantOrderid'
ordersGetbymerchantOrderid' pOgogMerchantId_ pOgogMerchantOrderId_ =
    OrdersGetbymerchantOrderid'
    { _ogogQuotaUser = Nothing
    , _ogogMerchantId = pOgogMerchantId_
    , _ogogPrettyPrint = True
    , _ogogUserIP = Nothing
    , _ogogMerchantOrderId = pOgogMerchantOrderId_
    , _ogogKey = Nothing
    , _ogogOAuthToken = Nothing
    , _ogogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogogQuotaUser :: Lens' OrdersGetbymerchantOrderid' (Maybe Text)
ogogQuotaUser
  = lens _ogogQuotaUser
      (\ s a -> s{_ogogQuotaUser = a})

-- | The ID of the managing account.
ogogMerchantId :: Lens' OrdersGetbymerchantOrderid' Word64
ogogMerchantId
  = lens _ogogMerchantId
      (\ s a -> s{_ogogMerchantId = a})

-- | Returns response with indentations and line breaks.
ogogPrettyPrint :: Lens' OrdersGetbymerchantOrderid' Bool
ogogPrettyPrint
  = lens _ogogPrettyPrint
      (\ s a -> s{_ogogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogogUserIP :: Lens' OrdersGetbymerchantOrderid' (Maybe Text)
ogogUserIP
  = lens _ogogUserIP (\ s a -> s{_ogogUserIP = a})

-- | The merchant order id to be looked for.
ogogMerchantOrderId :: Lens' OrdersGetbymerchantOrderid' Text
ogogMerchantOrderId
  = lens _ogogMerchantOrderId
      (\ s a -> s{_ogogMerchantOrderId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogogKey :: Lens' OrdersGetbymerchantOrderid' (Maybe AuthKey)
ogogKey = lens _ogogKey (\ s a -> s{_ogogKey = a})

-- | OAuth 2.0 token for the current user.
ogogOAuthToken :: Lens' OrdersGetbymerchantOrderid' (Maybe OAuthToken)
ogogOAuthToken
  = lens _ogogOAuthToken
      (\ s a -> s{_ogogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogogFields :: Lens' OrdersGetbymerchantOrderid' (Maybe Text)
ogogFields
  = lens _ogogFields (\ s a -> s{_ogogFields = a})

instance GoogleAuth OrdersGetbymerchantOrderid' where
        _AuthKey = ogogKey . _Just
        _AuthToken = ogogOAuthToken . _Just

instance GoogleRequest OrdersGetbymerchantOrderid'
         where
        type Rs OrdersGetbymerchantOrderid' =
             OrdersGetByMerchantOrderIdResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersGetbymerchantOrderid'{..}
          = go _ogogMerchantId _ogogMerchantOrderId
              _ogogQuotaUser
              (Just _ogogPrettyPrint)
              _ogogUserIP
              _ogogFields
              _ogogKey
              _ogogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersGetbymerchantOrderidResource)
                      rq
