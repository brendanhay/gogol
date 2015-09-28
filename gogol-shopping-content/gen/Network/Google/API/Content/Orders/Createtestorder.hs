{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Createtestorder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Creates a test order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.createtestorder@.
module Network.Google.API.Content.Orders.Createtestorder
    (
    -- * REST Resource
      OrdersCreatetestorderAPI

    -- * Creating a Request
    , ordersCreatetestorder'
    , OrdersCreatetestorder'

    -- * Request Lenses
    , occQuotaUser
    , occMerchantId
    , occPrettyPrint
    , occUserIp
    , occKey
    , occOauthToken
    , occFields
    , occAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.createtestorder which the
-- 'OrdersCreatetestorder'' request conforms to.
type OrdersCreatetestorderAPI =
     Capture "merchantId" Word64 :>
       "testorders" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] OrdersCreateTestOrderResponse

-- | Sandbox only. Creates a test order.
--
-- /See:/ 'ordersCreatetestorder'' smart constructor.
data OrdersCreatetestorder' = OrdersCreatetestorder'
    { _occQuotaUser   :: !(Maybe Text)
    , _occMerchantId  :: !Word64
    , _occPrettyPrint :: !Bool
    , _occUserIp      :: !(Maybe Text)
    , _occKey         :: !(Maybe Text)
    , _occOauthToken  :: !(Maybe Text)
    , _occFields      :: !(Maybe Text)
    , _occAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreatetestorder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occQuotaUser'
--
-- * 'occMerchantId'
--
-- * 'occPrettyPrint'
--
-- * 'occUserIp'
--
-- * 'occKey'
--
-- * 'occOauthToken'
--
-- * 'occFields'
--
-- * 'occAlt'
ordersCreatetestorder'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCreatetestorder'
ordersCreatetestorder' pOccMerchantId_ =
    OrdersCreatetestorder'
    { _occQuotaUser = Nothing
    , _occMerchantId = pOccMerchantId_
    , _occPrettyPrint = True
    , _occUserIp = Nothing
    , _occKey = Nothing
    , _occOauthToken = Nothing
    , _occFields = Nothing
    , _occAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
occQuotaUser :: Lens' OrdersCreatetestorder' (Maybe Text)
occQuotaUser
  = lens _occQuotaUser (\ s a -> s{_occQuotaUser = a})

-- | The ID of the managing account.
occMerchantId :: Lens' OrdersCreatetestorder' Word64
occMerchantId
  = lens _occMerchantId
      (\ s a -> s{_occMerchantId = a})

-- | Returns response with indentations and line breaks.
occPrettyPrint :: Lens' OrdersCreatetestorder' Bool
occPrettyPrint
  = lens _occPrettyPrint
      (\ s a -> s{_occPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
occUserIp :: Lens' OrdersCreatetestorder' (Maybe Text)
occUserIp
  = lens _occUserIp (\ s a -> s{_occUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
occKey :: Lens' OrdersCreatetestorder' (Maybe Text)
occKey = lens _occKey (\ s a -> s{_occKey = a})

-- | OAuth 2.0 token for the current user.
occOauthToken :: Lens' OrdersCreatetestorder' (Maybe Text)
occOauthToken
  = lens _occOauthToken
      (\ s a -> s{_occOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
occFields :: Lens' OrdersCreatetestorder' (Maybe Text)
occFields
  = lens _occFields (\ s a -> s{_occFields = a})

-- | Data format for the response.
occAlt :: Lens' OrdersCreatetestorder' Alt
occAlt = lens _occAlt (\ s a -> s{_occAlt = a})

instance GoogleRequest OrdersCreatetestorder' where
        type Rs OrdersCreatetestorder' =
             OrdersCreateTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCreatetestorder'{..}
          = go _occQuotaUser _occMerchantId
              (Just _occPrettyPrint)
              _occUserIp
              _occKey
              _occOauthToken
              _occFields
              (Just _occAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCreatetestorderAPI)
                      r
                      u
