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
module Network.Google.Resource.Content.Orders.Gettestordertemplate
    (
    -- * REST Resource
      OrdersGettestordertemplateResource

    -- * Creating a Request
    , ordersGettestordertemplate'
    , OrdersGettestordertemplate'

    -- * Request Lenses
    , ordQuotaUser
    , ordMerchantId
    , ordPrettyPrint
    , ordTemplateName
    , ordUserIp
    , ordKey
    , ordOauthToken
    , ordFields
    , ordAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersGettestordertemplate@ which the
-- 'OrdersGettestordertemplate'' request conforms to.
type OrdersGettestordertemplateResource =
     Capture "merchantId" Word64 :>
       "testordertemplates" :>
         Capture "templateName"
           ContentOrdersGettestordertemplateTemplateName
           :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ 'ordersGettestordertemplate'' smart constructor.
data OrdersGettestordertemplate' = OrdersGettestordertemplate'
    { _ordQuotaUser    :: !(Maybe Text)
    , _ordMerchantId   :: !Word64
    , _ordPrettyPrint  :: !Bool
    , _ordTemplateName :: !ContentOrdersGettestordertemplateTemplateName
    , _ordUserIp       :: !(Maybe Text)
    , _ordKey          :: !(Maybe Text)
    , _ordOauthToken   :: !(Maybe Text)
    , _ordFields       :: !(Maybe Text)
    , _ordAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGettestordertemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordQuotaUser'
--
-- * 'ordMerchantId'
--
-- * 'ordPrettyPrint'
--
-- * 'ordTemplateName'
--
-- * 'ordUserIp'
--
-- * 'ordKey'
--
-- * 'ordOauthToken'
--
-- * 'ordFields'
--
-- * 'ordAlt'
ordersGettestordertemplate'
    :: Word64 -- ^ 'merchantId'
    -> ContentOrdersGettestordertemplateTemplateName -- ^ 'templateName'
    -> OrdersGettestordertemplate'
ordersGettestordertemplate' pOrdMerchantId_ pOrdTemplateName_ =
    OrdersGettestordertemplate'
    { _ordQuotaUser = Nothing
    , _ordMerchantId = pOrdMerchantId_
    , _ordPrettyPrint = True
    , _ordTemplateName = pOrdTemplateName_
    , _ordUserIp = Nothing
    , _ordKey = Nothing
    , _ordOauthToken = Nothing
    , _ordFields = Nothing
    , _ordAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ordQuotaUser :: Lens' OrdersGettestordertemplate' (Maybe Text)
ordQuotaUser
  = lens _ordQuotaUser (\ s a -> s{_ordQuotaUser = a})

-- | The ID of the managing account.
ordMerchantId :: Lens' OrdersGettestordertemplate' Word64
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})

-- | Returns response with indentations and line breaks.
ordPrettyPrint :: Lens' OrdersGettestordertemplate' Bool
ordPrettyPrint
  = lens _ordPrettyPrint
      (\ s a -> s{_ordPrettyPrint = a})

-- | The name of the template to retrieve.
ordTemplateName :: Lens' OrdersGettestordertemplate' ContentOrdersGettestordertemplateTemplateName
ordTemplateName
  = lens _ordTemplateName
      (\ s a -> s{_ordTemplateName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ordUserIp :: Lens' OrdersGettestordertemplate' (Maybe Text)
ordUserIp
  = lens _ordUserIp (\ s a -> s{_ordUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ordKey :: Lens' OrdersGettestordertemplate' (Maybe Text)
ordKey = lens _ordKey (\ s a -> s{_ordKey = a})

-- | OAuth 2.0 token for the current user.
ordOauthToken :: Lens' OrdersGettestordertemplate' (Maybe Text)
ordOauthToken
  = lens _ordOauthToken
      (\ s a -> s{_ordOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ordFields :: Lens' OrdersGettestordertemplate' (Maybe Text)
ordFields
  = lens _ordFields (\ s a -> s{_ordFields = a})

-- | Data format for the response.
ordAlt :: Lens' OrdersGettestordertemplate' Alt
ordAlt = lens _ordAlt (\ s a -> s{_ordAlt = a})

instance GoogleRequest OrdersGettestordertemplate'
         where
        type Rs OrdersGettestordertemplate' =
             OrdersGetTestOrderTemplateResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGettestordertemplate'{..}
          = go _ordQuotaUser _ordMerchantId
              (Just _ordPrettyPrint)
              _ordTemplateName
              _ordUserIp
              _ordKey
              _ordOauthToken
              _ordFields
              (Just _ordAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGettestordertemplateResource)
                      r
                      u
