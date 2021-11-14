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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.gettestordertemplate@.
module Network.Google.Resource.Content.Orders.GettestOrdertemplate
    (
    -- * REST Resource
      OrdersGettestOrdertemplateResource

    -- * Creating a Request
    , ordersGettestOrdertemplate
    , OrdersGettestOrdertemplate

    -- * Request Lenses
    , ogoXgafv
    , ogoMerchantId
    , ogoTemplateName
    , ogoUploadProtocol
    , ogoCountry
    , ogoAccessToken
    , ogoUploadType
    , ogoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.gettestordertemplate@ method which the
-- 'OrdersGettestOrdertemplate' request conforms to.
type OrdersGettestOrdertemplateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "testordertemplates" :>
             Capture "templateName"
               OrdersGettestOrdertemplateTemplateName
               :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "country" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly
-- create a new order in sandbox.
--
-- /See:/ 'ordersGettestOrdertemplate' smart constructor.
data OrdersGettestOrdertemplate =
  OrdersGettestOrdertemplate'
    { _ogoXgafv :: !(Maybe Xgafv)
    , _ogoMerchantId :: !(Textual Word64)
    , _ogoTemplateName :: !OrdersGettestOrdertemplateTemplateName
    , _ogoUploadProtocol :: !(Maybe Text)
    , _ogoCountry :: !(Maybe Text)
    , _ogoAccessToken :: !(Maybe Text)
    , _ogoUploadType :: !(Maybe Text)
    , _ogoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGettestOrdertemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogoXgafv'
--
-- * 'ogoMerchantId'
--
-- * 'ogoTemplateName'
--
-- * 'ogoUploadProtocol'
--
-- * 'ogoCountry'
--
-- * 'ogoAccessToken'
--
-- * 'ogoUploadType'
--
-- * 'ogoCallback'
ordersGettestOrdertemplate
    :: Word64 -- ^ 'ogoMerchantId'
    -> OrdersGettestOrdertemplateTemplateName -- ^ 'ogoTemplateName'
    -> OrdersGettestOrdertemplate
ordersGettestOrdertemplate pOgoMerchantId_ pOgoTemplateName_ =
  OrdersGettestOrdertemplate'
    { _ogoXgafv = Nothing
    , _ogoMerchantId = _Coerce # pOgoMerchantId_
    , _ogoTemplateName = pOgoTemplateName_
    , _ogoUploadProtocol = Nothing
    , _ogoCountry = Nothing
    , _ogoAccessToken = Nothing
    , _ogoUploadType = Nothing
    , _ogoCallback = Nothing
    }


-- | V1 error format.
ogoXgafv :: Lens' OrdersGettestOrdertemplate (Maybe Xgafv)
ogoXgafv = lens _ogoXgafv (\ s a -> s{_ogoXgafv = a})

-- | The ID of the account that should manage the order. This cannot be a
-- multi-client account.
ogoMerchantId :: Lens' OrdersGettestOrdertemplate Word64
ogoMerchantId
  = lens _ogoMerchantId
      (\ s a -> s{_ogoMerchantId = a})
      . _Coerce

-- | The name of the template to retrieve.
ogoTemplateName :: Lens' OrdersGettestOrdertemplate OrdersGettestOrdertemplateTemplateName
ogoTemplateName
  = lens _ogoTemplateName
      (\ s a -> s{_ogoTemplateName = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ogoUploadProtocol :: Lens' OrdersGettestOrdertemplate (Maybe Text)
ogoUploadProtocol
  = lens _ogoUploadProtocol
      (\ s a -> s{_ogoUploadProtocol = a})

-- | The country of the template to retrieve. Defaults to \`US\`.
ogoCountry :: Lens' OrdersGettestOrdertemplate (Maybe Text)
ogoCountry
  = lens _ogoCountry (\ s a -> s{_ogoCountry = a})

-- | OAuth access token.
ogoAccessToken :: Lens' OrdersGettestOrdertemplate (Maybe Text)
ogoAccessToken
  = lens _ogoAccessToken
      (\ s a -> s{_ogoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ogoUploadType :: Lens' OrdersGettestOrdertemplate (Maybe Text)
ogoUploadType
  = lens _ogoUploadType
      (\ s a -> s{_ogoUploadType = a})

-- | JSONP
ogoCallback :: Lens' OrdersGettestOrdertemplate (Maybe Text)
ogoCallback
  = lens _ogoCallback (\ s a -> s{_ogoCallback = a})

instance GoogleRequest OrdersGettestOrdertemplate
         where
        type Rs OrdersGettestOrdertemplate =
             OrdersGetTestOrderTemplateResponse
        type Scopes OrdersGettestOrdertemplate =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersGettestOrdertemplate'{..}
          = go _ogoMerchantId _ogoTemplateName _ogoXgafv
              _ogoUploadProtocol
              _ogoCountry
              _ogoAccessToken
              _ogoUploadType
              _ogoCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrdersGettestOrdertemplateResource)
                      mempty
