{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.Gettestordertemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersGettestordertemplate@.
module Content.Orders.Gettestordertemplate
    (
    -- * REST Resource
      OrdersGettestordertemplateAPI

    -- * Creating a Request
    , ordersGettestordertemplate
    , OrdersGettestordertemplate

    -- * Request Lenses
    , ooQuotaUser
    , ooMerchantId
    , ooPrettyPrint
    , ooTemplateName
    , ooUserIp
    , ooKey
    , ooOauthToken
    , ooFields
    , ooAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGettestordertemplate@ which the
-- 'OrdersGettestordertemplate' request conforms to.
type OrdersGettestordertemplateAPI =
     Capture "merchantId" Word64 :>
       "testordertemplates" :>
         Capture "templateName" Text :>
           Get '[JSON] OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ 'ordersGettestordertemplate' smart constructor.
data OrdersGettestordertemplate = OrdersGettestordertemplate
    { _ooQuotaUser    :: !(Maybe Text)
    , _ooMerchantId   :: !Word64
    , _ooPrettyPrint  :: !Bool
    , _ooTemplateName :: !Text
    , _ooUserIp       :: !(Maybe Text)
    , _ooKey          :: !(Maybe Text)
    , _ooOauthToken   :: !(Maybe Text)
    , _ooFields       :: !(Maybe Text)
    , _ooAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGettestordertemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooQuotaUser'
--
-- * 'ooMerchantId'
--
-- * 'ooPrettyPrint'
--
-- * 'ooTemplateName'
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
ordersGettestordertemplate
    :: Word64 -- ^ 'merchantId'
    -> Text -- ^ 'templateName'
    -> OrdersGettestordertemplate
ordersGettestordertemplate pOoMerchantId_ pOoTemplateName_ =
    OrdersGettestordertemplate
    { _ooQuotaUser = Nothing
    , _ooMerchantId = pOoMerchantId_
    , _ooPrettyPrint = True
    , _ooTemplateName = pOoTemplateName_
    , _ooUserIp = Nothing
    , _ooKey = Nothing
    , _ooOauthToken = Nothing
    , _ooFields = Nothing
    , _ooAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ooQuotaUser :: Lens' OrdersGettestordertemplate' (Maybe Text)
ooQuotaUser
  = lens _ooQuotaUser (\ s a -> s{_ooQuotaUser = a})

-- | The ID of the managing account.
ooMerchantId :: Lens' OrdersGettestordertemplate' Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})

-- | Returns response with indentations and line breaks.
ooPrettyPrint :: Lens' OrdersGettestordertemplate' Bool
ooPrettyPrint
  = lens _ooPrettyPrint
      (\ s a -> s{_ooPrettyPrint = a})

-- | The name of the template to retrieve.
ooTemplateName :: Lens' OrdersGettestordertemplate' Text
ooTemplateName
  = lens _ooTemplateName
      (\ s a -> s{_ooTemplateName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ooUserIp :: Lens' OrdersGettestordertemplate' (Maybe Text)
ooUserIp = lens _ooUserIp (\ s a -> s{_ooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ooKey :: Lens' OrdersGettestordertemplate' (Maybe Text)
ooKey = lens _ooKey (\ s a -> s{_ooKey = a})

-- | OAuth 2.0 token for the current user.
ooOauthToken :: Lens' OrdersGettestordertemplate' (Maybe Text)
ooOauthToken
  = lens _ooOauthToken (\ s a -> s{_ooOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ooFields :: Lens' OrdersGettestordertemplate' (Maybe Text)
ooFields = lens _ooFields (\ s a -> s{_ooFields = a})

-- | Data format for the response.
ooAlt :: Lens' OrdersGettestordertemplate' Text
ooAlt = lens _ooAlt (\ s a -> s{_ooAlt = a})

instance GoogleRequest OrdersGettestordertemplate'
         where
        type Rs OrdersGettestordertemplate' =
             OrdersGetTestOrderTemplateResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGettestordertemplate{..}
          = go _ooQuotaUser _ooMerchantId _ooPrettyPrint
              _ooTemplateName
              _ooUserIp
              _ooKey
              _ooOauthToken
              _ooFields
              _ooAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGettestordertemplateAPI)
                      r
                      u
