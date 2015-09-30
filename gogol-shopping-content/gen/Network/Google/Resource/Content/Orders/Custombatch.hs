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
    , ooQuotaUser
    , ooPrettyPrint
    , ooUserIp
    , ooKey
    , ooOauthToken
    , ooFields
    , ooAlt
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
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] OrdersCustomBatchResponse

-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ 'ordersCustombatch'' smart constructor.
data OrdersCustombatch' = OrdersCustombatch'
    { _ooQuotaUser   :: !(Maybe Text)
    , _ooPrettyPrint :: !Bool
    , _ooUserIp      :: !(Maybe Text)
    , _ooKey         :: !(Maybe Text)
    , _ooOauthToken  :: !(Maybe Text)
    , _ooFields      :: !(Maybe Text)
    , _ooAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooQuotaUser'
--
-- * 'ooPrettyPrint'
--
-- * 'ooUserIp'
--
-- * 'ooKey'
--
-- * 'ooOauthToken'
--
-- * 'ooFields'
--
-- * 'ooAlt'
ordersCustombatch'
    :: OrdersCustombatch'
ordersCustombatch' =
    OrdersCustombatch'
    { _ooQuotaUser = Nothing
    , _ooPrettyPrint = True
    , _ooUserIp = Nothing
    , _ooKey = Nothing
    , _ooOauthToken = Nothing
    , _ooFields = Nothing
    , _ooAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ooQuotaUser :: Lens' OrdersCustombatch' (Maybe Text)
ooQuotaUser
  = lens _ooQuotaUser (\ s a -> s{_ooQuotaUser = a})

-- | Returns response with indentations and line breaks.
ooPrettyPrint :: Lens' OrdersCustombatch' Bool
ooPrettyPrint
  = lens _ooPrettyPrint
      (\ s a -> s{_ooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ooUserIp :: Lens' OrdersCustombatch' (Maybe Text)
ooUserIp = lens _ooUserIp (\ s a -> s{_ooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ooKey :: Lens' OrdersCustombatch' (Maybe Text)
ooKey = lens _ooKey (\ s a -> s{_ooKey = a})

-- | OAuth 2.0 token for the current user.
ooOauthToken :: Lens' OrdersCustombatch' (Maybe Text)
ooOauthToken
  = lens _ooOauthToken (\ s a -> s{_ooOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ooFields :: Lens' OrdersCustombatch' (Maybe Text)
ooFields = lens _ooFields (\ s a -> s{_ooFields = a})

-- | Data format for the response.
ooAlt :: Lens' OrdersCustombatch' Alt
ooAlt = lens _ooAlt (\ s a -> s{_ooAlt = a})

instance GoogleRequest OrdersCustombatch' where
        type Rs OrdersCustombatch' =
             OrdersCustomBatchResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCustombatch'{..}
          = go _ooQuotaUser (Just _ooPrettyPrint) _ooUserIp
              _ooKey
              _ooOauthToken
              _ooFields
              (Just _ooAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCustombatchResource)
                      r
                      u
