{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Content.Orders.Gettestordertemplate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.gettestordertemplate@.
module Network.Google.API.Content.Orders.Gettestordertemplate
    (
    -- * REST Resource
      OrdersGettestordertemplateAPI

    -- * Creating a Request
    , ordersGettestordertemplate'
    , OrdersGettestordertemplate'

    -- * Request Lenses
    , ogQuotaUser
    , ogMerchantId
    , ogPrettyPrint
    , ogTemplateName
    , ogUserIp
    , ogKey
    , ogOauthToken
    , ogFields
    , ogAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Shopping.Content.Types

-- | A resource alias for content.orders.gettestordertemplate which the
-- 'OrdersGettestordertemplate'' request conforms to.
type OrdersGettestordertemplateAPI =
     Capture "merchantId" Word64 :>
       "testordertemplates" :>
         Capture "templateName"
           OrdersGettestordertemplate'TemplateName
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
    { _ogQuotaUser    :: !(Maybe Text)
    , _ogMerchantId   :: !Word64
    , _ogPrettyPrint  :: !Bool
    , _ogTemplateName :: !OrdersGettestordertemplate'TemplateName
    , _ogUserIp       :: !(Maybe Text)
    , _ogKey          :: !(Maybe Text)
    , _ogOauthToken   :: !(Maybe Text)
    , _ogFields       :: !(Maybe Text)
    , _ogAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGettestordertemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogMerchantId'
--
-- * 'ogPrettyPrint'
--
-- * 'ogTemplateName'
--
-- * 'ogUserIp'
--
-- * 'ogKey'
--
-- * 'ogOauthToken'
--
-- * 'ogFields'
--
-- * 'ogAlt'
ordersGettestordertemplate'
    :: Word64 -- ^ 'merchantId'
    -> OrdersGettestordertemplate'TemplateName -- ^ 'templateName'
    -> OrdersGettestordertemplate'
ordersGettestordertemplate' pOgMerchantId_ pOgTemplateName_ =
    OrdersGettestordertemplate'
    { _ogQuotaUser = Nothing
    , _ogMerchantId = pOgMerchantId_
    , _ogPrettyPrint = True
    , _ogTemplateName = pOgTemplateName_
    , _ogUserIp = Nothing
    , _ogKey = Nothing
    , _ogOauthToken = Nothing
    , _ogFields = Nothing
    , _ogAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OrdersGettestordertemplate' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | The ID of the managing account.
ogMerchantId :: Lens' OrdersGettestordertemplate' Word64
ogMerchantId
  = lens _ogMerchantId (\ s a -> s{_ogMerchantId = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OrdersGettestordertemplate' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | The name of the template to retrieve.
ogTemplateName :: Lens' OrdersGettestordertemplate' OrdersGettestordertemplate'TemplateName
ogTemplateName
  = lens _ogTemplateName
      (\ s a -> s{_ogTemplateName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIp :: Lens' OrdersGettestordertemplate' (Maybe Text)
ogUserIp = lens _ogUserIp (\ s a -> s{_ogUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OrdersGettestordertemplate' (Maybe Text)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

-- | OAuth 2.0 token for the current user.
ogOauthToken :: Lens' OrdersGettestordertemplate' (Maybe Text)
ogOauthToken
  = lens _ogOauthToken (\ s a -> s{_ogOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OrdersGettestordertemplate' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

-- | Data format for the response.
ogAlt :: Lens' OrdersGettestordertemplate' Alt
ogAlt = lens _ogAlt (\ s a -> s{_ogAlt = a})

instance GoogleRequest OrdersGettestordertemplate'
         where
        type Rs OrdersGettestordertemplate' =
             OrdersGetTestOrderTemplateResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersGettestordertemplate'{..}
          = go _ogQuotaUser _ogMerchantId (Just _ogPrettyPrint)
              _ogTemplateName
              _ogUserIp
              _ogKey
              _ogOauthToken
              _ogFields
              (Just _ogAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrdersGettestordertemplateAPI)
                      r
                      u
