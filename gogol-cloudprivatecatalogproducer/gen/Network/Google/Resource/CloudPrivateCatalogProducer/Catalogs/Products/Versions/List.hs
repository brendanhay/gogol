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
-- Module      : Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Version resources that the producer has access to, within the
-- scope of the parent Product.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.list@.
module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
    (
    -- * REST Resource
      CatalogsProductsVersionsListResource

    -- * Creating a Request
    , catalogsProductsVersionsList
    , CatalogsProductsVersionsList

    -- * Request Lenses
    , cpvlParent
    , cpvlXgafv
    , cpvlUploadProtocol
    , cpvlAccessToken
    , cpvlUploadType
    , cpvlPageToken
    , cpvlPageSize
    , cpvlCallback
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.list@ method which the
-- 'CatalogsProductsVersionsList' request conforms to.
type CatalogsProductsVersionsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse

-- | Lists Version resources that the producer has access to, within the
-- scope of the parent Product.
--
-- /See:/ 'catalogsProductsVersionsList' smart constructor.
data CatalogsProductsVersionsList =
  CatalogsProductsVersionsList'
    { _cpvlParent :: !Text
    , _cpvlXgafv :: !(Maybe Xgafv)
    , _cpvlUploadProtocol :: !(Maybe Text)
    , _cpvlAccessToken :: !(Maybe Text)
    , _cpvlUploadType :: !(Maybe Text)
    , _cpvlPageToken :: !(Maybe Text)
    , _cpvlPageSize :: !(Maybe (Textual Int32))
    , _cpvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CatalogsProductsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpvlParent'
--
-- * 'cpvlXgafv'
--
-- * 'cpvlUploadProtocol'
--
-- * 'cpvlAccessToken'
--
-- * 'cpvlUploadType'
--
-- * 'cpvlPageToken'
--
-- * 'cpvlPageSize'
--
-- * 'cpvlCallback'
catalogsProductsVersionsList
    :: Text -- ^ 'cpvlParent'
    -> CatalogsProductsVersionsList
catalogsProductsVersionsList pCpvlParent_ =
  CatalogsProductsVersionsList'
    { _cpvlParent = pCpvlParent_
    , _cpvlXgafv = Nothing
    , _cpvlUploadProtocol = Nothing
    , _cpvlAccessToken = Nothing
    , _cpvlUploadType = Nothing
    , _cpvlPageToken = Nothing
    , _cpvlPageSize = Nothing
    , _cpvlCallback = Nothing
    }


-- | The resource name of the parent resource.
cpvlParent :: Lens' CatalogsProductsVersionsList Text
cpvlParent
  = lens _cpvlParent (\ s a -> s{_cpvlParent = a})

-- | V1 error format.
cpvlXgafv :: Lens' CatalogsProductsVersionsList (Maybe Xgafv)
cpvlXgafv
  = lens _cpvlXgafv (\ s a -> s{_cpvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpvlUploadProtocol :: Lens' CatalogsProductsVersionsList (Maybe Text)
cpvlUploadProtocol
  = lens _cpvlUploadProtocol
      (\ s a -> s{_cpvlUploadProtocol = a})

-- | OAuth access token.
cpvlAccessToken :: Lens' CatalogsProductsVersionsList (Maybe Text)
cpvlAccessToken
  = lens _cpvlAccessToken
      (\ s a -> s{_cpvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpvlUploadType :: Lens' CatalogsProductsVersionsList (Maybe Text)
cpvlUploadType
  = lens _cpvlUploadType
      (\ s a -> s{_cpvlUploadType = a})

-- | A pagination token returned from a previous call to ListVersions that
-- indicates where this listing should continue from. This field is
-- optional.
cpvlPageToken :: Lens' CatalogsProductsVersionsList (Maybe Text)
cpvlPageToken
  = lens _cpvlPageToken
      (\ s a -> s{_cpvlPageToken = a})

-- | The maximum number of versions to return.
cpvlPageSize :: Lens' CatalogsProductsVersionsList (Maybe Int32)
cpvlPageSize
  = lens _cpvlPageSize (\ s a -> s{_cpvlPageSize = a})
      . mapping _Coerce

-- | JSONP
cpvlCallback :: Lens' CatalogsProductsVersionsList (Maybe Text)
cpvlCallback
  = lens _cpvlCallback (\ s a -> s{_cpvlCallback = a})

instance GoogleRequest CatalogsProductsVersionsList
         where
        type Rs CatalogsProductsVersionsList =
             GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
        type Scopes CatalogsProductsVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CatalogsProductsVersionsList'{..}
          = go _cpvlParent _cpvlXgafv _cpvlUploadProtocol
              _cpvlAccessToken
              _cpvlUploadType
              _cpvlPageToken
              _cpvlPageSize
              _cpvlCallback
              (Just AltJSON)
              cloudPrivateCatalogProducerService
          where go
                  = buildClient
                      (Proxy :: Proxy CatalogsProductsVersionsListResource)
                      mempty
