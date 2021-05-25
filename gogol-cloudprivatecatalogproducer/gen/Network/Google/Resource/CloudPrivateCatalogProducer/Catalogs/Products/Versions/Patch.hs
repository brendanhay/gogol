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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific Version resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.patch@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
    (
    -- * REST Resource
      CatalogsProductsVersionsPatchResource

    -- * Creating a Request
    , catalogsProductsVersionsPatch
    , CatalogsProductsVersionsPatch

    -- * Request Lenses
    , cpvpXgafv
    , cpvpUploadProtocol
    , cpvpUpdateMask
    , cpvpAccessToken
    , cpvpUploadType
    , cpvpPayload
    , cpvpName
    , cpvpCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.patch@ method which the
-- 'CatalogsProductsVersionsPatch' request conforms to.
type CatalogsProductsVersionsPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Version
                         :>
                         Patch '[JSON]
                           GoogleCloudPrivatecatalogproducerV1beta1Version

-- | Updates a specific Version resource.
--
-- /See:/ 'catalogsProductsVersionsPatch' smart constructor.
data CatalogsProductsVersionsPatch =
  CatalogsProductsVersionsPatch'
    { _cpvpXgafv :: !(Maybe Xgafv)
    , _cpvpUploadProtocol :: !(Maybe Text)
    , _cpvpUpdateMask :: !(Maybe GFieldMask)
    , _cpvpAccessToken :: !(Maybe Text)
    , _cpvpUploadType :: !(Maybe Text)
    , _cpvpPayload :: !GoogleCloudPrivatecatalogproducerV1beta1Version
    , _cpvpName :: !Text
    , _cpvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvpXgafv'
--
-- * 'cpvpUploadProtocol'
--
-- * 'cpvpUpdateMask'
--
-- * 'cpvpAccessToken'
--
-- * 'cpvpUploadType'
--
-- * 'cpvpPayload'
--
-- * 'cpvpName'
--
-- * 'cpvpCallback'
catalogsProductsVersionsPatch
    :: GoogleCloudPrivatecatalogproducerV1beta1Version -- ^ 'cpvpPayload'
    -> Text -- ^ 'cpvpName'
    -> CatalogsProductsVersionsPatch
catalogsProductsVersionsPatch pCpvpPayload_ pCpvpName_ =
  CatalogsProductsVersionsPatch'
    { _cpvpXgafv = Nothing
    , _cpvpUploadProtocol = Nothing
    , _cpvpUpdateMask = Nothing
    , _cpvpAccessToken = Nothing
    , _cpvpUploadType = Nothing
    , _cpvpPayload = pCpvpPayload_
    , _cpvpName = pCpvpName_
    , _cpvpCallback = Nothing
    }


-- | V1 error format.
cpvpXgafv :: Lens' CatalogsProductsVersionsPatch (Maybe Xgafv)
cpvpXgafv
  = lens _cpvpXgafv (\ s a -> s{_cpvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpvpUploadProtocol :: Lens' CatalogsProductsVersionsPatch (Maybe Text)
cpvpUploadProtocol
  = lens _cpvpUploadProtocol
      (\ s a -> s{_cpvpUploadProtocol = a})

-- | Field mask that controls which fields of the version should be updated.
cpvpUpdateMask :: Lens' CatalogsProductsVersionsPatch (Maybe GFieldMask)
cpvpUpdateMask
  = lens _cpvpUpdateMask
      (\ s a -> s{_cpvpUpdateMask = a})

-- | OAuth access token.
cpvpAccessToken :: Lens' CatalogsProductsVersionsPatch (Maybe Text)
cpvpAccessToken
  = lens _cpvpAccessToken
      (\ s a -> s{_cpvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpvpUploadType :: Lens' CatalogsProductsVersionsPatch (Maybe Text)
cpvpUploadType
  = lens _cpvpUploadType
      (\ s a -> s{_cpvpUploadType = a})

-- | Multipart request metadata.
cpvpPayload :: Lens' CatalogsProductsVersionsPatch GoogleCloudPrivatecatalogproducerV1beta1Version
cpvpPayload
  = lens _cpvpPayload (\ s a -> s{_cpvpPayload = a})

-- | Required. The resource name of the version, in the format
-- \`catalogs\/{catalog_id}\/products\/{product_id}\/versions\/a-z*[a-z0-9]\'.
-- A unique identifier for the version under a product, which can\'t be
-- changed after the version is created. The final segment of the name must
-- between 1 and 63 characters in length.
cpvpName :: Lens' CatalogsProductsVersionsPatch Text
cpvpName = lens _cpvpName (\ s a -> s{_cpvpName = a})

-- | JSONP
cpvpCallback :: Lens' CatalogsProductsVersionsPatch (Maybe Text)
cpvpCallback
  = lens _cpvpCallback (\ s a -> s{_cpvpCallback = a})

instance GoogleRequest CatalogsProductsVersionsPatch
         where
        type Rs CatalogsProductsVersionsPatch =
             GoogleCloudPrivatecatalogproducerV1beta1Version
        type Scopes CatalogsProductsVersionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsVersionsPatch'{..}
          = go _cpvpName _cpvpXgafv _cpvpUploadProtocol
              _cpvpUpdateMask
              _cpvpAccessToken
              _cpvpUploadType
              _cpvpCallback
              (Just AltJSON)
              _cpvpPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CatalogsProductsVersionsPatchResource)
                      mempty
