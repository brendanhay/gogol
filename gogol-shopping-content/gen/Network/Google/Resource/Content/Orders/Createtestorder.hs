{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Content.Orders.Createtestorder
    (
    -- * REST Resource
      OrdersCreatetestorderAPI

    -- * Creating a Request
    , ordersCreatetestorder
    , OrdersCreatetestorder

    -- * Request Lenses
    , ocQuotaUser
    , ocMerchantId
    , ocPrettyPrint
    , ocUserIp
    , ocKey
    , ocOauthToken
    , ocFields
    , ocAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCreatetestorder@ which the
-- 'OrdersCreatetestorder' request conforms to.
type OrdersCreatetestorderAPI =
     Capture "merchantId" Word64 :>
       "testorders" :>
         Post '[JSON] OrdersCreateTestOrderResponse

-- | Sandbox only. Creates a test order.
--
-- /See:/ 'ordersCreatetestorder' smart constructor.
data OrdersCreatetestorder = OrdersCreatetestorder
    { _ocQuotaUser   :: !(Maybe Text)
    , _ocMerchantId  :: !Word64
    , _ocPrettyPrint :: !Bool
    , _ocUserIp      :: !(Maybe Text)
    , _ocKey         :: !(Maybe Text)
    , _ocOauthToken  :: !(Maybe Text)
    , _ocFields      :: !(Maybe Text)
    , _ocAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreatetestorder'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuotaUser'
--
-- * 'ocMerchantId'
--
-- * 'ocPrettyPrint'
--
-- * 'ocUserIp'
--
-- * 'ocKey'
--
-- * 'ocOauthToken'
--
-- * 'ocFields'
--
-- * 'ocAlt'
ordersCreatetestorder
    :: Word64 -- ^ 'merchantId'
    -> OrdersCreatetestorder
ordersCreatetestorder pOcMerchantId_ =
    OrdersCreatetestorder
    { _ocQuotaUser = Nothing
    , _ocMerchantId = pOcMerchantId_
    , _ocPrettyPrint = True
    , _ocUserIp = Nothing
    , _ocKey = Nothing
    , _ocOauthToken = Nothing
    , _ocFields = Nothing
    , _ocAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ocQuotaUser :: Lens' OrdersCreatetestorder' (Maybe Text)
ocQuotaUser
  = lens _ocQuotaUser (\ s a -> s{_ocQuotaUser = a})

-- | The ID of the managing account.
ocMerchantId :: Lens' OrdersCreatetestorder' Word64
ocMerchantId
  = lens _ocMerchantId (\ s a -> s{_ocMerchantId = a})

-- | Returns response with indentations and line breaks.
ocPrettyPrint :: Lens' OrdersCreatetestorder' Bool
ocPrettyPrint
  = lens _ocPrettyPrint
      (\ s a -> s{_ocPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ocUserIp :: Lens' OrdersCreatetestorder' (Maybe Text)
ocUserIp = lens _ocUserIp (\ s a -> s{_ocUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ocKey :: Lens' OrdersCreatetestorder' (Maybe Text)
ocKey = lens _ocKey (\ s a -> s{_ocKey = a})

-- | OAuth 2.0 token for the current user.
ocOauthToken :: Lens' OrdersCreatetestorder' (Maybe Text)
ocOauthToken
  = lens _ocOauthToken (\ s a -> s{_ocOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ocFields :: Lens' OrdersCreatetestorder' (Maybe Text)
ocFields = lens _ocFields (\ s a -> s{_ocFields = a})

-- | Data format for the response.
ocAlt :: Lens' OrdersCreatetestorder' Text
ocAlt = lens _ocAlt (\ s a -> s{_ocAlt = a})

instance GoogleRequest OrdersCreatetestorder' where
        type Rs OrdersCreatetestorder' =
             OrdersCreateTestOrderResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCreatetestorder{..}
          = go _ocQuotaUser _ocMerchantId _ocPrettyPrint
              _ocUserIp
              _ocKey
              _ocOauthToken
              _ocFields
              _ocAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCreatetestorderAPI)
                      r
                      u
