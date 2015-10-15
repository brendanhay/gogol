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
    , ogoMerchantId
    , ogoTemplateName
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
           QueryParam "alt" AltJSON :>
             Get '[JSON] OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ 'ordersGettestOrdertemplate'' smart constructor.
data OrdersGettestOrdertemplate' = OrdersGettestOrdertemplate'
    { _ogoMerchantId   :: !Word64
    , _ogoTemplateName :: !OrdersGettestOrdertemplateTemplateName
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGettestOrdertemplate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogoMerchantId'
--
-- * 'ogoTemplateName'
ordersGettestOrdertemplate'
    :: Word64 -- ^ 'merchantId'
    -> OrdersGettestOrdertemplateTemplateName -- ^ 'templateName'
    -> OrdersGettestOrdertemplate'
ordersGettestOrdertemplate' pOgoMerchantId_ pOgoTemplateName_ =
    OrdersGettestOrdertemplate'
    { _ogoMerchantId = pOgoMerchantId_
    , _ogoTemplateName = pOgoTemplateName_
    }

-- | The ID of the managing account.
ogoMerchantId :: Lens' OrdersGettestOrdertemplate' Word64
ogoMerchantId
  = lens _ogoMerchantId
      (\ s a -> s{_ogoMerchantId = a})

-- | The name of the template to retrieve.
ogoTemplateName :: Lens' OrdersGettestOrdertemplate' OrdersGettestOrdertemplateTemplateName
ogoTemplateName
  = lens _ogoTemplateName
      (\ s a -> s{_ogoTemplateName = a})

instance GoogleRequest OrdersGettestOrdertemplate'
         where
        type Rs OrdersGettestOrdertemplate' =
             OrdersGetTestOrderTemplateResponse
        requestClient OrdersGettestOrdertemplate'{..}
          = go _ogoMerchantId _ogoTemplateName (Just AltJSON)
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersGettestOrdertemplateResource)
                      mempty
