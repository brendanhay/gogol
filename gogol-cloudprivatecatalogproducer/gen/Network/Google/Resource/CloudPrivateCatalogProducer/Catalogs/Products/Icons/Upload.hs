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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Icon instance under a given Product. If Product only has a
-- default icon, a new Icon instance is created and associated with the
-- given Product. If Product already has a non-default icon, the action
-- creates a new Icon instance, associates the newly created Icon with the
-- given Product and deletes the old icon.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.icons.upload@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
    (
    -- * REST Resource
      CatalogsProductsIconsUploadResource

    -- * Creating a Request
    , catalogsProductsIconsUpload
    , CatalogsProductsIconsUpload

    -- * Request Lenses
    , cpiuXgafv
    , cpiuUploadProtocol
    , cpiuAccessToken
    , cpiuUploadType
    , cpiuPayload
    , cpiuProduct
    , cpiuCallback
    ) where

import           Network.Google.CloudPrivateCatalogProducer.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.icons.upload@ method which the
-- 'CatalogsProductsIconsUpload' request conforms to.
type CatalogsProductsIconsUploadResource =
     "v1beta1" :>
       Capture "product" Text :>
         "icons:upload" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
                         :> Post '[JSON] GoogleProtobufEmpty

-- | Creates an Icon instance under a given Product. If Product only has a
-- default icon, a new Icon instance is created and associated with the
-- given Product. If Product already has a non-default icon, the action
-- creates a new Icon instance, associates the newly created Icon with the
-- given Product and deletes the old icon.
--
-- /See:/ 'catalogsProductsIconsUpload' smart constructor.
data CatalogsProductsIconsUpload =
  CatalogsProductsIconsUpload'
    { _cpiuXgafv          :: !(Maybe Xgafv)
    , _cpiuUploadProtocol :: !(Maybe Text)
    , _cpiuAccessToken    :: !(Maybe Text)
    , _cpiuUploadType     :: !(Maybe Text)
    , _cpiuPayload        :: !GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , _cpiuProduct        :: !Text
    , _cpiuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsIconsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpiuXgafv'
--
-- * 'cpiuUploadProtocol'
--
-- * 'cpiuAccessToken'
--
-- * 'cpiuUploadType'
--
-- * 'cpiuPayload'
--
-- * 'cpiuProduct'
--
-- * 'cpiuCallback'
catalogsProductsIconsUpload
    :: GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest -- ^ 'cpiuPayload'
    -> Text -- ^ 'cpiuProduct'
    -> CatalogsProductsIconsUpload
catalogsProductsIconsUpload pCpiuPayload_ pCpiuProduct_ =
  CatalogsProductsIconsUpload'
    { _cpiuXgafv = Nothing
    , _cpiuUploadProtocol = Nothing
    , _cpiuAccessToken = Nothing
    , _cpiuUploadType = Nothing
    , _cpiuPayload = pCpiuPayload_
    , _cpiuProduct = pCpiuProduct_
    , _cpiuCallback = Nothing
    }


-- | V1 error format.
cpiuXgafv :: Lens' CatalogsProductsIconsUpload (Maybe Xgafv)
cpiuXgafv
  = lens _cpiuXgafv (\ s a -> s{_cpiuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpiuUploadProtocol :: Lens' CatalogsProductsIconsUpload (Maybe Text)
cpiuUploadProtocol
  = lens _cpiuUploadProtocol
      (\ s a -> s{_cpiuUploadProtocol = a})

-- | OAuth access token.
cpiuAccessToken :: Lens' CatalogsProductsIconsUpload (Maybe Text)
cpiuAccessToken
  = lens _cpiuAccessToken
      (\ s a -> s{_cpiuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpiuUploadType :: Lens' CatalogsProductsIconsUpload (Maybe Text)
cpiuUploadType
  = lens _cpiuUploadType
      (\ s a -> s{_cpiuUploadType = a})

-- | Multipart request metadata.
cpiuPayload :: Lens' CatalogsProductsIconsUpload GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
cpiuPayload
  = lens _cpiuPayload (\ s a -> s{_cpiuPayload = a})

-- | The resource name of the product.
cpiuProduct :: Lens' CatalogsProductsIconsUpload Text
cpiuProduct
  = lens _cpiuProduct (\ s a -> s{_cpiuProduct = a})

-- | JSONP
cpiuCallback :: Lens' CatalogsProductsIconsUpload (Maybe Text)
cpiuCallback
  = lens _cpiuCallback (\ s a -> s{_cpiuCallback = a})

instance GoogleRequest CatalogsProductsIconsUpload
         where
        type Rs CatalogsProductsIconsUpload =
             GoogleProtobufEmpty
        type Scopes CatalogsProductsIconsUpload =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsIconsUpload'{..}
          = go _cpiuProduct _cpiuXgafv _cpiuUploadProtocol
              _cpiuAccessToken
              _cpiuUploadType
              _cpiuCallback
              (Just AltJSON)
              _cpiuPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsIconsUploadResource)
                      mempty
