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
-- Module      : Network.Google.Resource.Content.Orders.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCustombatch@.
module Network.Google.Resource.Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchResource

    -- * Creating a Request
    , ordersCustombatch'
    , OrdersCustombatch'

    -- * Request Lenses
    , ordQuotaUser
    , ordPrettyPrint
    , ordUserIP
    , ordPayload
    , ordKey
    , ordOAuthToken
    , ordFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCustombatch@ which the
-- 'OrdersCustombatch'' request conforms to.
type OrdersCustombatchResource =
     "orders" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] OrdersCustomBatchRequest :>
                         Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ 'ordersCustombatch'' smart constructor.
data OrdersCustombatch' = OrdersCustombatch'
    { _ordQuotaUser   :: !(Maybe Text)
    , _ordPrettyPrint :: !Bool
    , _ordUserIP      :: !(Maybe Text)
    , _ordPayload     :: !OrdersCustomBatchRequest
    , _ordKey         :: !(Maybe Key)
    , _ordOAuthToken  :: !(Maybe OAuthToken)
    , _ordFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordQuotaUser'
--
-- * 'ordPrettyPrint'
--
-- * 'ordUserIP'
--
-- * 'ordPayload'
--
-- * 'ordKey'
--
-- * 'ordOAuthToken'
--
-- * 'ordFields'
ordersCustombatch'
    :: OrdersCustomBatchRequest -- ^ 'payload'
    -> OrdersCustombatch'
ordersCustombatch' pOrdPayload_ =
    OrdersCustombatch'
    { _ordQuotaUser = Nothing
    , _ordPrettyPrint = True
    , _ordUserIP = Nothing
    , _ordPayload = pOrdPayload_
    , _ordKey = Nothing
    , _ordOAuthToken = Nothing
    , _ordFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ordQuotaUser :: Lens' OrdersCustombatch' (Maybe Text)
ordQuotaUser
  = lens _ordQuotaUser (\ s a -> s{_ordQuotaUser = a})

-- | Returns response with indentations and line breaks.
ordPrettyPrint :: Lens' OrdersCustombatch' Bool
ordPrettyPrint
  = lens _ordPrettyPrint
      (\ s a -> s{_ordPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ordUserIP :: Lens' OrdersCustombatch' (Maybe Text)
ordUserIP
  = lens _ordUserIP (\ s a -> s{_ordUserIP = a})

-- | Multipart request metadata.
ordPayload :: Lens' OrdersCustombatch' OrdersCustomBatchRequest
ordPayload
  = lens _ordPayload (\ s a -> s{_ordPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ordKey :: Lens' OrdersCustombatch' (Maybe Key)
ordKey = lens _ordKey (\ s a -> s{_ordKey = a})

-- | OAuth 2.0 token for the current user.
ordOAuthToken :: Lens' OrdersCustombatch' (Maybe OAuthToken)
ordOAuthToken
  = lens _ordOAuthToken
      (\ s a -> s{_ordOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ordFields :: Lens' OrdersCustombatch' (Maybe Text)
ordFields
  = lens _ordFields (\ s a -> s{_ordFields = a})

instance GoogleAuth OrdersCustombatch' where
        authKey = ordKey . _Just
        authToken = ordOAuthToken . _Just

instance GoogleRequest OrdersCustombatch' where
        type Rs OrdersCustombatch' =
             OrdersCustomBatchResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCustombatch'{..}
          = go _ordQuotaUser (Just _ordPrettyPrint) _ordUserIP
              _ordFields
              _ordKey
              _ordOAuthToken
              (Just AltJSON)
              _ordPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCustombatchResource)
                      r
                      u
