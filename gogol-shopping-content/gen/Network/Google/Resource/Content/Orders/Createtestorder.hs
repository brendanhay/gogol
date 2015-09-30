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
-- Module      : Network.Google.Resource.Content.Orders.Createtestorder
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Creates a test order.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCreatetestorder@.
module Network.Google.Resource.Content.Orders.Createtestorder
    (
    -- * REST Resource
      OrdersCreatetestorderResource

    -- * Creating a Request
    , ordersCreatetestorder'
    , OrdersCreatetestorder'

    -- * Request Lenses
    , oQuotaUser
    , oMerchantId
    , oPrettyPrint
    , oUserIp
    , oKey
    , oOauthToken
    , oFields
    , oAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCreatetestorder@ which the
-- 'OrdersCreatetestorder'' request conforms to.
type OrdersCreatetestorderResource =
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
    { _oQuotaUser   :: !(Maybe Text)
    , _oMerchantId  :: !Word64
    , _oPrettyPrint :: !Bool
    , _oUserIp      :: !(Maybe Text)
    , _oKey         :: !(Maybe Text)
    , _oOauthToken  :: !(Maybe Text)
    , _oFields      :: !(Maybe Text)
    , _oAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreatetestorder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuotaUser'
--
-- * 'oMerchantId'
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
ordersCreatetestorder'
    :: Word64 -- ^ 'merchantId'
    -> OrdersCreatetestorder'
ordersCreatetestorder' pOMerchantId_ =
    OrdersCreatetestorder'
    { _oQuotaUser = Nothing
    , _oMerchantId = pOMerchantId_
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
oQuotaUser :: Lens' OrdersCreatetestorder' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersCreatetestorder' Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' OrdersCreatetestorder' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIp :: Lens' OrdersCreatetestorder' (Maybe Text)
oUserIp = lens _oUserIp (\ s a -> s{_oUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' OrdersCreatetestorder' (Maybe Text)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | OAuth 2.0 token for the current user.
oOauthToken :: Lens' OrdersCreatetestorder' (Maybe Text)
oOauthToken
  = lens _oOauthToken (\ s a -> s{_oOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' OrdersCreatetestorder' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Data format for the response.
oAlt :: Lens' OrdersCreatetestorder' Alt
oAlt = lens _oAlt (\ s a -> s{_oAlt = a})

instance GoogleRequest OrdersCreatetestorder' where
        type Rs OrdersCreatetestorder' =
             OrdersCreateTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCreatetestorder'{..}
          = go _oQuotaUser _oMerchantId (Just _oPrettyPrint)
              _oUserIp
              _oKey
              _oOauthToken
              _oFields
              (Just _oAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCreatetestorderResource)
                      r
                      u
