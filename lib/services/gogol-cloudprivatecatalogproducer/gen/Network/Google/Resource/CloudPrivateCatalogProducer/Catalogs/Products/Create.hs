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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Product instance under a given Catalog.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.create@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Create
    (
    -- * REST Resource
      CatalogsProductsCreateResource

    -- * Creating a Request
    , catalogsProductsCreate
    , CatalogsProductsCreate

    -- * Request Lenses
    , cpcParent
    , cpcXgafv
    , cpcUploadProtocol
    , cpcAccessToken
    , cpcUploadType
    , cpcPayload
    , cpcCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.create@ method which the
-- 'CatalogsProductsCreate' request conforms to.
type CatalogsProductsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "products" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Product
                         :>
                         Post '[JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Creates a Product instance under a given Catalog.
--
-- /See:/ 'catalogsProductsCreate' smart constructor.
data CatalogsProductsCreate =
  CatalogsProductsCreate'
    { _cpcParent :: !Text
    , _cpcXgafv :: !(Maybe Xgafv)
    , _cpcUploadProtocol :: !(Maybe Text)
    , _cpcAccessToken :: !(Maybe Text)
    , _cpcUploadType :: !(Maybe Text)
    , _cpcPayload :: !GoogleCloudPrivatecatalogproducerV1beta1Product
    , _cpcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpcParent'
--
-- * 'cpcXgafv'
--
-- * 'cpcUploadProtocol'
--
-- * 'cpcAccessToken'
--
-- * 'cpcUploadType'
--
-- * 'cpcPayload'
--
-- * 'cpcCallback'
catalogsProductsCreate
    :: Text -- ^ 'cpcParent'
    -> GoogleCloudPrivatecatalogproducerV1beta1Product -- ^ 'cpcPayload'
    -> CatalogsProductsCreate
catalogsProductsCreate pCpcParent_ pCpcPayload_ =
  CatalogsProductsCreate'
    { _cpcParent = pCpcParent_
    , _cpcXgafv = Nothing
    , _cpcUploadProtocol = Nothing
    , _cpcAccessToken = Nothing
    , _cpcUploadType = Nothing
    , _cpcPayload = pCpcPayload_
    , _cpcCallback = Nothing
    }


-- | The catalog name of the new product\'s parent.
cpcParent :: Lens' CatalogsProductsCreate Text
cpcParent
  = lens _cpcParent (\ s a -> s{_cpcParent = a})

-- | V1 error format.
cpcXgafv :: Lens' CatalogsProductsCreate (Maybe Xgafv)
cpcXgafv = lens _cpcXgafv (\ s a -> s{_cpcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpcUploadProtocol :: Lens' CatalogsProductsCreate (Maybe Text)
cpcUploadProtocol
  = lens _cpcUploadProtocol
      (\ s a -> s{_cpcUploadProtocol = a})

-- | OAuth access token.
cpcAccessToken :: Lens' CatalogsProductsCreate (Maybe Text)
cpcAccessToken
  = lens _cpcAccessToken
      (\ s a -> s{_cpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpcUploadType :: Lens' CatalogsProductsCreate (Maybe Text)
cpcUploadType
  = lens _cpcUploadType
      (\ s a -> s{_cpcUploadType = a})

-- | Multipart request metadata.
cpcPayload :: Lens' CatalogsProductsCreate GoogleCloudPrivatecatalogproducerV1beta1Product
cpcPayload
  = lens _cpcPayload (\ s a -> s{_cpcPayload = a})

-- | JSONP
cpcCallback :: Lens' CatalogsProductsCreate (Maybe Text)
cpcCallback
  = lens _cpcCallback (\ s a -> s{_cpcCallback = a})

instance GoogleRequest CatalogsProductsCreate where
        type Rs CatalogsProductsCreate =
             GoogleCloudPrivatecatalogproducerV1beta1Product
        type Scopes CatalogsProductsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsCreate'{..}
          = go _cpcParent _cpcXgafv _cpcUploadProtocol
              _cpcAccessToken
              _cpcUploadType
              _cpcCallback
              (Just AltJSON)
              _cpcPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsCreateResource)
                      mempty
