{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves or modifies multiple orders in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.custombatch@.
module Network.Google.API.Content.Orders.Custombatch
    (
    -- * REST Resource
      OrdersCustombatchAPI

    -- * Creating a Request
    , ordersCustombatch'
    , OrdersCustombatch'

    -- * Request Lenses
    , oQuotaUser
    , oPrettyPrint
    , oUserIp
    , oKey
    , oOauthToken
    , oFields
    , oAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.custombatch which the
-- 'OrdersCustombatch'' request conforms to.
type OrdersCustombatchAPI =
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
    { _oQuotaUser   :: !(Maybe Text)
    , _oPrettyPrint :: !Bool
    , _oUserIp      :: !(Maybe Text)
    , _oKey         :: !(Maybe Text)
    , _oOauthToken  :: !(Maybe Text)
    , _oFields      :: !(Maybe Text)
    , _oAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oPrettyPrint'
--
-- * 'oUserIp'
--
-- * 'oKey'
--
-- * 'oOauthToken'
--
-- * 'oFields'
--
-- * 'oAlt'
ordersCustombatch'
    :: OrdersCustombatch'
ordersCustombatch' =
    OrdersCustombatch'
    { _oQuotaUser = Nothing
    , _oPrettyPrint = True
    , _oUserIp = Nothing
    , _oKey = Nothing
    , _oOauthToken = Nothing
    , _oFields = Nothing
    , _oAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' OrdersCustombatch' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' OrdersCustombatch' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIp :: Lens' OrdersCustombatch' (Maybe Text)
oUserIp = lens _oUserIp (\ s a -> s{_oUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' OrdersCustombatch' (Maybe Text)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | OAuth 2.0 token for the current user.
oOauthToken :: Lens' OrdersCustombatch' (Maybe Text)
oOauthToken
  = lens _oOauthToken (\ s a -> s{_oOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' OrdersCustombatch' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Data format for the response.
oAlt :: Lens' OrdersCustombatch' Alt
oAlt = lens _oAlt (\ s a -> s{_oAlt = a})

instance GoogleRequest OrdersCustombatch' where
        type Rs OrdersCustombatch' =
             OrdersCustomBatchResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCustombatch'{..}
          = go _oQuotaUser (Just _oPrettyPrint) _oUserIp _oKey
              _oOauthToken
              _oFields
              (Just _oAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCustombatchAPI)
                      r
                      u
