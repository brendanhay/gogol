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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Version instance under a given Product.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.create@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
    (
    -- * REST Resource
      CatalogsProductsVersionsCreateResource

    -- * Creating a Request
    , catalogsProductsVersionsCreate
    , CatalogsProductsVersionsCreate

    -- * Request Lenses
    , cpvcParent
    , cpvcXgafv
    , cpvcUploadProtocol
    , cpvcAccessToken
    , cpvcUploadType
    , cpvcPayload
    , cpvcCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.create@ method which the
-- 'CatalogsProductsVersionsCreate' request conforms to.
type CatalogsProductsVersionsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudPrivatecatalogproducerV1beta1Version
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Creates a Version instance under a given Product.
--
-- /See:/ 'catalogsProductsVersionsCreate' smart constructor.
data CatalogsProductsVersionsCreate =
  CatalogsProductsVersionsCreate'
    { _cpvcParent :: !Text
    , _cpvcXgafv :: !(Maybe Xgafv)
    , _cpvcUploadProtocol :: !(Maybe Text)
    , _cpvcAccessToken :: !(Maybe Text)
    , _cpvcUploadType :: !(Maybe Text)
    , _cpvcPayload :: !GoogleCloudPrivatecatalogproducerV1beta1Version
    , _cpvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvcParent'
--
-- * 'cpvcXgafv'
--
-- * 'cpvcUploadProtocol'
--
-- * 'cpvcAccessToken'
--
-- * 'cpvcUploadType'
--
-- * 'cpvcPayload'
--
-- * 'cpvcCallback'
catalogsProductsVersionsCreate
    :: Text -- ^ 'cpvcParent'
    -> GoogleCloudPrivatecatalogproducerV1beta1Version -- ^ 'cpvcPayload'
    -> CatalogsProductsVersionsCreate
catalogsProductsVersionsCreate pCpvcParent_ pCpvcPayload_ =
  CatalogsProductsVersionsCreate'
    { _cpvcParent = pCpvcParent_
    , _cpvcXgafv = Nothing
    , _cpvcUploadProtocol = Nothing
    , _cpvcAccessToken = Nothing
    , _cpvcUploadType = Nothing
    , _cpvcPayload = pCpvcPayload_
    , _cpvcCallback = Nothing
    }


-- | The product name of the new version\'s parent.
cpvcParent :: Lens' CatalogsProductsVersionsCreate Text
cpvcParent
  = lens _cpvcParent (\ s a -> s{_cpvcParent = a})

-- | V1 error format.
cpvcXgafv :: Lens' CatalogsProductsVersionsCreate (Maybe Xgafv)
cpvcXgafv
  = lens _cpvcXgafv (\ s a -> s{_cpvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpvcUploadProtocol :: Lens' CatalogsProductsVersionsCreate (Maybe Text)
cpvcUploadProtocol
  = lens _cpvcUploadProtocol
      (\ s a -> s{_cpvcUploadProtocol = a})

-- | OAuth access token.
cpvcAccessToken :: Lens' CatalogsProductsVersionsCreate (Maybe Text)
cpvcAccessToken
  = lens _cpvcAccessToken
      (\ s a -> s{_cpvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpvcUploadType :: Lens' CatalogsProductsVersionsCreate (Maybe Text)
cpvcUploadType
  = lens _cpvcUploadType
      (\ s a -> s{_cpvcUploadType = a})

-- | Multipart request metadata.
cpvcPayload :: Lens' CatalogsProductsVersionsCreate GoogleCloudPrivatecatalogproducerV1beta1Version
cpvcPayload
  = lens _cpvcPayload (\ s a -> s{_cpvcPayload = a})

-- | JSONP
cpvcCallback :: Lens' CatalogsProductsVersionsCreate (Maybe Text)
cpvcCallback
  = lens _cpvcCallback (\ s a -> s{_cpvcCallback = a})

instance GoogleRequest CatalogsProductsVersionsCreate
         where
        type Rs CatalogsProductsVersionsCreate =
             GoogleLongrunningOperation
        type Scopes CatalogsProductsVersionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsVersionsCreate'{..}
          = go _cpvcParent _cpvcXgafv _cpvcUploadProtocol
              _cpvcAccessToken
              _cpvcUploadType
              _cpvcCallback
              (Just AltJSON)
              _cpvcPayload
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CatalogsProductsVersionsCreateResource)
                      mempty
