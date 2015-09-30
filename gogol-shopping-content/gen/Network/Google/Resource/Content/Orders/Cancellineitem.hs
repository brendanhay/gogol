{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Cancellineitem
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels a line item.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersCancellineitem@.
module Content.Orders.Cancellineitem
    (
    -- * REST Resource
      OrdersCancellineitemAPI

    -- * Creating a Request
    , ordersCancellineitem
    , OrdersCancellineitem

    -- * Request Lenses
    , oQuotaUser
    , oMerchantId
    , oPrettyPrint
    , oUserIp
    , oKey
    , oOauthToken
    , oOrderId
    , oFields
    , oAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersCancellineitem@ which the
-- 'OrdersCancellineitem' request conforms to.
type OrdersCancellineitemAPI =
     Capture "merchantId" Word64 :>
       "orders" :>
         Capture "orderId" Text :>
           "cancelLineItem" :>
             Post '[JSON] OrdersCancelLineItemResponse

-- | Cancels a line item.
--
-- /See:/ 'ordersCancellineitem' smart constructor.
data OrdersCancellineitem = OrdersCancellineitem
    { _oQuotaUser   :: !(Maybe Text)
    , _oMerchantId  :: !Word64
    , _oPrettyPrint :: !Bool
    , _oUserIp      :: !(Maybe Text)
    , _oKey         :: !(Maybe Text)
    , _oOauthToken  :: !(Maybe Text)
    , _oOrderId     :: !Text
    , _oFields      :: !(Maybe Text)
    , _oAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancellineitem'' with the minimum fields required to make a request.
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
-- * 'oOrderId'
--
-- * 'oFields'
--
-- * 'oAlt'
ordersCancellineitem
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'orderId'
    -> OrdersCancellineitem
ordersCancellineitem pOMerchantId_ pOOrderId_ =
    OrdersCancellineitem
    { _oQuotaUser = Nothing
    , _oMerchantId = pOMerchantId_
    , _oPrettyPrint = True
    , _oUserIp = Nothing
    , _oKey = Nothing
    , _oOauthToken = Nothing
    , _oOrderId = pOOrderId_
    , _oFields = Nothing
    , _oAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
oQuotaUser :: Lens' OrdersCancellineitem' (Maybe Text)
oQuotaUser
  = lens _oQuotaUser (\ s a -> s{_oQuotaUser = a})

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersCancellineitem' Word64
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a})

-- | Returns response with indentations and line breaks.
oPrettyPrint :: Lens' OrdersCancellineitem' Bool
oPrettyPrint
  = lens _oPrettyPrint (\ s a -> s{_oPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
oUserIp :: Lens' OrdersCancellineitem' (Maybe Text)
oUserIp = lens _oUserIp (\ s a -> s{_oUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
oKey :: Lens' OrdersCancellineitem' (Maybe Text)
oKey = lens _oKey (\ s a -> s{_oKey = a})

-- | OAuth 2.0 token for the current user.
oOauthToken :: Lens' OrdersCancellineitem' (Maybe Text)
oOauthToken
  = lens _oOauthToken (\ s a -> s{_oOauthToken = a})

-- | The ID of the order.
oOrderId :: Lens' OrdersCancellineitem' Text
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

-- | Selector specifying which fields to include in a partial response.
oFields :: Lens' OrdersCancellineitem' (Maybe Text)
oFields = lens _oFields (\ s a -> s{_oFields = a})

-- | Data format for the response.
oAlt :: Lens' OrdersCancellineitem' Text
oAlt = lens _oAlt (\ s a -> s{_oAlt = a})

instance GoogleRequest OrdersCancellineitem' where
        type Rs OrdersCancellineitem' =
             OrdersCancelLineItemResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersCancellineitem{..}
          = go _oQuotaUser _oMerchantId _oPrettyPrint _oUserIp
              _oKey
              _oOauthToken
              _oOrderId
              _oFields
              _oAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersCancellineitemAPI)
                      r
                      u
