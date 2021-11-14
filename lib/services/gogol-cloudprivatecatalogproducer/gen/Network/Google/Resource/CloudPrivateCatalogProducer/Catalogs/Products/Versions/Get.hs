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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Version resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.get@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
    (
    -- * REST Resource
      CatalogsProductsVersionsGetResource

    -- * Creating a Request
    , catalogsProductsVersionsGet
    , CatalogsProductsVersionsGet

    -- * Request Lenses
    , cpvgXgafv
    , cpvgUploadProtocol
    , cpvgAccessToken
    , cpvgUploadType
    , cpvgName
    , cpvgCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.get@ method which the
-- 'CatalogsProductsVersionsGet' request conforms to.
type CatalogsProductsVersionsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1Version

-- | Returns the requested Version resource.
--
-- /See:/ 'catalogsProductsVersionsGet' smart constructor.
data CatalogsProductsVersionsGet =
  CatalogsProductsVersionsGet'
    { _cpvgXgafv :: !(Maybe Xgafv)
    , _cpvgUploadProtocol :: !(Maybe Text)
    , _cpvgAccessToken :: !(Maybe Text)
    , _cpvgUploadType :: !(Maybe Text)
    , _cpvgName :: !Text
    , _cpvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvgXgafv'
--
-- * 'cpvgUploadProtocol'
--
-- * 'cpvgAccessToken'
--
-- * 'cpvgUploadType'
--
-- * 'cpvgName'
--
-- * 'cpvgCallback'
catalogsProductsVersionsGet
    :: Text -- ^ 'cpvgName'
    -> CatalogsProductsVersionsGet
catalogsProductsVersionsGet pCpvgName_ =
  CatalogsProductsVersionsGet'
    { _cpvgXgafv = Nothing
    , _cpvgUploadProtocol = Nothing
    , _cpvgAccessToken = Nothing
    , _cpvgUploadType = Nothing
    , _cpvgName = pCpvgName_
    , _cpvgCallback = Nothing
    }


-- | V1 error format.
cpvgXgafv :: Lens' CatalogsProductsVersionsGet (Maybe Xgafv)
cpvgXgafv
  = lens _cpvgXgafv (\ s a -> s{_cpvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpvgUploadProtocol :: Lens' CatalogsProductsVersionsGet (Maybe Text)
cpvgUploadProtocol
  = lens _cpvgUploadProtocol
      (\ s a -> s{_cpvgUploadProtocol = a})

-- | OAuth access token.
cpvgAccessToken :: Lens' CatalogsProductsVersionsGet (Maybe Text)
cpvgAccessToken
  = lens _cpvgAccessToken
      (\ s a -> s{_cpvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpvgUploadType :: Lens' CatalogsProductsVersionsGet (Maybe Text)
cpvgUploadType
  = lens _cpvgUploadType
      (\ s a -> s{_cpvgUploadType = a})

-- | The resource name of the version.
cpvgName :: Lens' CatalogsProductsVersionsGet Text
cpvgName = lens _cpvgName (\ s a -> s{_cpvgName = a})

-- | JSONP
cpvgCallback :: Lens' CatalogsProductsVersionsGet (Maybe Text)
cpvgCallback
  = lens _cpvgCallback (\ s a -> s{_cpvgCallback = a})

instance GoogleRequest CatalogsProductsVersionsGet
         where
        type Rs CatalogsProductsVersionsGet =
             GoogleCloudPrivatecatalogproducerV1beta1Version
        type Scopes CatalogsProductsVersionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsVersionsGet'{..}
          = go _cpvgName _cpvgXgafv _cpvgUploadProtocol
              _cpvgAccessToken
              _cpvgUploadType
              _cpvgCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsVersionsGetResource)
                      mempty
