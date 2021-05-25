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
-- Module      : Network.Google.Resource.Content.Products.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing product in your Merchant Center account. Only
-- updates attributes provided in the request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.update@.
module Network.Google.Resource.Content.Products.Update
    (
    -- * REST Resource
      ProductsUpdateResource

    -- * Creating a Request
    , productsUpdate
    , ProductsUpdate

    -- * Request Lenses
    , puXgafv
    , puMerchantId
    , puUploadProtocol
    , puUpdateMask
    , puAccessToken
    , puUploadType
    , puPayload
    , puProductId
    , puCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.update@ method which the
-- 'ProductsUpdate' request conforms to.
type ProductsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Product :> Patch '[JSON] Product

-- | Updates an existing product in your Merchant Center account. Only
-- updates attributes provided in the request.
--
-- /See:/ 'productsUpdate' smart constructor.
data ProductsUpdate =
  ProductsUpdate'
    { _puXgafv :: !(Maybe Xgafv)
    , _puMerchantId :: !(Textual Word64)
    , _puUploadProtocol :: !(Maybe Text)
    , _puUpdateMask :: !(Maybe GFieldMask)
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puPayload :: !Product
    , _puProductId :: !Text
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puMerchantId'
--
-- * 'puUploadProtocol'
--
-- * 'puUpdateMask'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puPayload'
--
-- * 'puProductId'
--
-- * 'puCallback'
productsUpdate
    :: Word64 -- ^ 'puMerchantId'
    -> Product -- ^ 'puPayload'
    -> Text -- ^ 'puProductId'
    -> ProductsUpdate
productsUpdate pPuMerchantId_ pPuPayload_ pPuProductId_ =
  ProductsUpdate'
    { _puXgafv = Nothing
    , _puMerchantId = _Coerce # pPuMerchantId_
    , _puUploadProtocol = Nothing
    , _puUpdateMask = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puPayload = pPuPayload_
    , _puProductId = pPuProductId_
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' ProductsUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
puMerchantId :: Lens' ProductsUpdate Word64
puMerchantId
  = lens _puMerchantId (\ s a -> s{_puMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProductsUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | The comma-separated list of product attributes to be updated. Example:
-- \`\"title,salePrice\"\`. Attributes specified in the update mask without
-- a value specified in the body will be deleted from the product. Only
-- top-level product attributes can be updated. If not defined, product
-- attributes with set values will be updated and other attributes will
-- stay unchanged.
puUpdateMask :: Lens' ProductsUpdate (Maybe GFieldMask)
puUpdateMask
  = lens _puUpdateMask (\ s a -> s{_puUpdateMask = a})

-- | OAuth access token.
puAccessToken :: Lens' ProductsUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProductsUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | Multipart request metadata.
puPayload :: Lens' ProductsUpdate Product
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | The REST ID of the product for which to update.
puProductId :: Lens' ProductsUpdate Text
puProductId
  = lens _puProductId (\ s a -> s{_puProductId = a})

-- | JSONP
puCallback :: Lens' ProductsUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest ProductsUpdate where
        type Rs ProductsUpdate = Product
        type Scopes ProductsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsUpdate'{..}
          = go _puMerchantId _puProductId _puXgafv
              _puUploadProtocol
              _puUpdateMask
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              _puPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsUpdateResource)
                      mempty
