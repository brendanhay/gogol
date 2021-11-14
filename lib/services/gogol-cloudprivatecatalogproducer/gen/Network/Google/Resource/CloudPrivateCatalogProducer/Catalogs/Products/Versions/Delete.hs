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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hard deletes a Version.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.delete@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
    (
    -- * REST Resource
      CatalogsProductsVersionsDeleteResource

    -- * Creating a Request
    , catalogsProductsVersionsDelete
    , CatalogsProductsVersionsDelete

    -- * Request Lenses
    , cpvdXgafv
    , cpvdUploadProtocol
    , cpvdAccessToken
    , cpvdUploadType
    , cpvdName
    , cpvdCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.delete@ method which the
-- 'CatalogsProductsVersionsDelete' request conforms to.
type CatalogsProductsVersionsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Hard deletes a Version.
--
-- /See:/ 'catalogsProductsVersionsDelete' smart constructor.
data CatalogsProductsVersionsDelete =
  CatalogsProductsVersionsDelete'
    { _cpvdXgafv :: !(Maybe Xgafv)
    , _cpvdUploadProtocol :: !(Maybe Text)
    , _cpvdAccessToken :: !(Maybe Text)
    , _cpvdUploadType :: !(Maybe Text)
    , _cpvdName :: !Text
    , _cpvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvdXgafv'
--
-- * 'cpvdUploadProtocol'
--
-- * 'cpvdAccessToken'
--
-- * 'cpvdUploadType'
--
-- * 'cpvdName'
--
-- * 'cpvdCallback'
catalogsProductsVersionsDelete
    :: Text -- ^ 'cpvdName'
    -> CatalogsProductsVersionsDelete
catalogsProductsVersionsDelete pCpvdName_ =
  CatalogsProductsVersionsDelete'
    { _cpvdXgafv = Nothing
    , _cpvdUploadProtocol = Nothing
    , _cpvdAccessToken = Nothing
    , _cpvdUploadType = Nothing
    , _cpvdName = pCpvdName_
    , _cpvdCallback = Nothing
    }


-- | V1 error format.
cpvdXgafv :: Lens' CatalogsProductsVersionsDelete (Maybe Xgafv)
cpvdXgafv
  = lens _cpvdXgafv (\ s a -> s{_cpvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpvdUploadProtocol :: Lens' CatalogsProductsVersionsDelete (Maybe Text)
cpvdUploadProtocol
  = lens _cpvdUploadProtocol
      (\ s a -> s{_cpvdUploadProtocol = a})

-- | OAuth access token.
cpvdAccessToken :: Lens' CatalogsProductsVersionsDelete (Maybe Text)
cpvdAccessToken
  = lens _cpvdAccessToken
      (\ s a -> s{_cpvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpvdUploadType :: Lens' CatalogsProductsVersionsDelete (Maybe Text)
cpvdUploadType
  = lens _cpvdUploadType
      (\ s a -> s{_cpvdUploadType = a})

-- | The resource name of the version.
cpvdName :: Lens' CatalogsProductsVersionsDelete Text
cpvdName = lens _cpvdName (\ s a -> s{_cpvdName = a})

-- | JSONP
cpvdCallback :: Lens' CatalogsProductsVersionsDelete (Maybe Text)
cpvdCallback
  = lens _cpvdCallback (\ s a -> s{_cpvdCallback = a})

instance GoogleRequest CatalogsProductsVersionsDelete
         where
        type Rs CatalogsProductsVersionsDelete =
             GoogleProtobufEmpty
        type Scopes CatalogsProductsVersionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsVersionsDelete'{..}
          = go _cpvdName _cpvdXgafv _cpvdUploadProtocol
              _cpvdAccessToken
              _cpvdUploadType
              _cpvdCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CatalogsProductsVersionsDeleteResource)
                      mempty
