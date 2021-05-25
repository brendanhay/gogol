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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Product resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.get@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Get
    (
    -- * REST Resource
      CatalogsProductsGetResource

    -- * Creating a Request
    , catalogsProductsGet
    , CatalogsProductsGet

    -- * Request Lenses
    , cpgXgafv
    , cpgUploadProtocol
    , cpgAccessToken
    , cpgUploadType
    , cpgName
    , cpgCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.get@ method which the
-- 'CatalogsProductsGet' request conforms to.
type CatalogsProductsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       GoogleCloudPrivatecatalogproducerV1beta1Product

-- | Returns the requested Product resource.
--
-- /See:/ 'catalogsProductsGet' smart constructor.
data CatalogsProductsGet =
  CatalogsProductsGet'
    { _cpgXgafv :: !(Maybe Xgafv)
    , _cpgUploadProtocol :: !(Maybe Text)
    , _cpgAccessToken :: !(Maybe Text)
    , _cpgUploadType :: !(Maybe Text)
    , _cpgName :: !Text
    , _cpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgXgafv'
--
-- * 'cpgUploadProtocol'
--
-- * 'cpgAccessToken'
--
-- * 'cpgUploadType'
--
-- * 'cpgName'
--
-- * 'cpgCallback'
catalogsProductsGet
    :: Text -- ^ 'cpgName'
    -> CatalogsProductsGet
catalogsProductsGet pCpgName_ =
  CatalogsProductsGet'
    { _cpgXgafv = Nothing
    , _cpgUploadProtocol = Nothing
    , _cpgAccessToken = Nothing
    , _cpgUploadType = Nothing
    , _cpgName = pCpgName_
    , _cpgCallback = Nothing
    }


-- | V1 error format.
cpgXgafv :: Lens' CatalogsProductsGet (Maybe Xgafv)
cpgXgafv = lens _cpgXgafv (\ s a -> s{_cpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpgUploadProtocol :: Lens' CatalogsProductsGet (Maybe Text)
cpgUploadProtocol
  = lens _cpgUploadProtocol
      (\ s a -> s{_cpgUploadProtocol = a})

-- | OAuth access token.
cpgAccessToken :: Lens' CatalogsProductsGet (Maybe Text)
cpgAccessToken
  = lens _cpgAccessToken
      (\ s a -> s{_cpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpgUploadType :: Lens' CatalogsProductsGet (Maybe Text)
cpgUploadType
  = lens _cpgUploadType
      (\ s a -> s{_cpgUploadType = a})

-- | The resource name of the product.
cpgName :: Lens' CatalogsProductsGet Text
cpgName = lens _cpgName (\ s a -> s{_cpgName = a})

-- | JSONP
cpgCallback :: Lens' CatalogsProductsGet (Maybe Text)
cpgCallback
  = lens _cpgCallback (\ s a -> s{_cpgCallback = a})

instance GoogleRequest CatalogsProductsGet where
        type Rs CatalogsProductsGet =
             GoogleCloudPrivatecatalogproducerV1beta1Product
        type Scopes CatalogsProductsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsGet'{..}
          = go _cpgName _cpgXgafv _cpgUploadProtocol
              _cpgAccessToken
              _cpgUploadType
              _cpgCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsGetResource)
                      mempty
