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
-- Module      : Network.Google.Resource.Content.Orders.GettestOrdertemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersGettestOrdertemplate@.
module Network.Google.Resource.Content.Orders.GettestOrdertemplate
    (
    -- * REST Resource
      OrdersGettestOrdertemplateResource

    -- * Creating a Request
    , ordersGettestOrdertemplate'
    , OrdersGettestOrdertemplate'

    -- * Request Lenses
    , ogoQuotaUser
    , ogoMerchantId
    , ogoPrettyPrint
    , ogoTemplateName
    , ogoUserIP
    , ogoKey
    , ogoOAuthToken
    , ogoFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGettestOrdertemplate@ method which the
-- 'OrdersGettestOrdertemplate'' request conforms to.
type OrdersGettestOrdertemplateResource =
     Capture "merchantId" Word64 :>
       "testordertemplates" :>
         Capture "templateName"
           OrdersGettestOrdertemplateTemplateName
           :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ 'ordersGettestOrdertemplate'' smart constructor.
data OrdersGettestOrdertemplate' = OrdersGettestOrdertemplate'
    { _ogoQuotaUser    :: !(Maybe Text)
    , _ogoMerchantId   :: !Word64
    , _ogoPrettyPrint  :: !Bool
    , _ogoTemplateName :: !OrdersGettestOrdertemplateTemplateName
    , _ogoUserIP       :: !(Maybe Text)
    , _ogoKey          :: !(Maybe AuthKey)
    , _ogoOAuthToken   :: !(Maybe OAuthToken)
    , _ogoFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGettestOrdertemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogoQuotaUser'
--
-- * 'ogoMerchantId'
--
-- * 'ogoPrettyPrint'
--
-- * 'ogoTemplateName'
--
-- * 'ogoUserIP'
--
-- * 'ogoKey'
--
-- * 'ogoOAuthToken'
--
-- * 'ogoFields'
ordersGettestOrdertemplate'
    :: Word64 -- ^ 'merchantId'
    -> OrdersGettestOrdertemplateTemplateName -- ^ 'templateName'
    -> OrdersGettestOrdertemplate'
ordersGettestOrdertemplate' pOgoMerchantId_ pOgoTemplateName_ =
    OrdersGettestOrdertemplate'
    { _ogoQuotaUser = Nothing
    , _ogoMerchantId = pOgoMerchantId_
    , _ogoPrettyPrint = True
    , _ogoTemplateName = pOgoTemplateName_
    , _ogoUserIP = Nothing
    , _ogoKey = Nothing
    , _ogoOAuthToken = Nothing
    , _ogoFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogoQuotaUser :: Lens' OrdersGettestOrdertemplate' (Maybe Text)
ogoQuotaUser
  = lens _ogoQuotaUser (\ s a -> s{_ogoQuotaUser = a})

-- | The ID of the managing account.
ogoMerchantId :: Lens' OrdersGettestOrdertemplate' Word64
ogoMerchantId
  = lens _ogoMerchantId
      (\ s a -> s{_ogoMerchantId = a})

-- | Returns response with indentations and line breaks.
ogoPrettyPrint :: Lens' OrdersGettestOrdertemplate' Bool
ogoPrettyPrint
  = lens _ogoPrettyPrint
      (\ s a -> s{_ogoPrettyPrint = a})

-- | The name of the template to retrieve.
ogoTemplateName :: Lens' OrdersGettestOrdertemplate' OrdersGettestOrdertemplateTemplateName
ogoTemplateName
  = lens _ogoTemplateName
      (\ s a -> s{_ogoTemplateName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogoUserIP :: Lens' OrdersGettestOrdertemplate' (Maybe Text)
ogoUserIP
  = lens _ogoUserIP (\ s a -> s{_ogoUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogoKey :: Lens' OrdersGettestOrdertemplate' (Maybe AuthKey)
ogoKey = lens _ogoKey (\ s a -> s{_ogoKey = a})

-- | OAuth 2.0 token for the current user.
ogoOAuthToken :: Lens' OrdersGettestOrdertemplate' (Maybe OAuthToken)
ogoOAuthToken
  = lens _ogoOAuthToken
      (\ s a -> s{_ogoOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogoFields :: Lens' OrdersGettestOrdertemplate' (Maybe Text)
ogoFields
  = lens _ogoFields (\ s a -> s{_ogoFields = a})

instance GoogleAuth OrdersGettestOrdertemplate' where
        _AuthKey = ogoKey . _Just
        _AuthToken = ogoOAuthToken . _Just

instance GoogleRequest OrdersGettestOrdertemplate'
         where
        type Rs OrdersGettestOrdertemplate' =
             OrdersGetTestOrderTemplateResponse
        request = requestWith shoppingContentRequest
        requestWith rq OrdersGettestOrdertemplate'{..}
          = go _ogoMerchantId _ogoTemplateName _ogoQuotaUser
              (Just _ogoPrettyPrint)
              _ogoUserIP
              _ogoFields
              _ogoKey
              _ogoOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy OrdersGettestOrdertemplateResource)
                      rq
