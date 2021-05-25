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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Projects.Products.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Product resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.projects.products.search@.
module Network.Google.Resource.CloudPrivateCatalog.Projects.Products.Search
    (
    -- * REST Resource
      ProjectsProductsSearchResource

    -- * Creating a Request
    , projectsProductsSearch
    , ProjectsProductsSearch

    -- * Request Lenses
    , ppsXgafv
    , ppsUploadProtocol
    , ppsAccessToken
    , ppsUploadType
    , ppsResource
    , ppsQuery
    , ppsPageToken
    , ppsPageSize
    , ppsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.projects.products.search@ method which the
-- 'ProjectsProductsSearch' request conforms to.
type ProjectsProductsSearchResource =
     "v1beta1" :>
       Capture "resource" Text :>
         "products:search" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "query" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudPrivatecatalogV1beta1SearchProductsResponse

-- | Search Product resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ 'projectsProductsSearch' smart constructor.
data ProjectsProductsSearch =
  ProjectsProductsSearch'
    { _ppsXgafv :: !(Maybe Xgafv)
    , _ppsUploadProtocol :: !(Maybe Text)
    , _ppsAccessToken :: !(Maybe Text)
    , _ppsUploadType :: !(Maybe Text)
    , _ppsResource :: !Text
    , _ppsQuery :: !(Maybe Text)
    , _ppsPageToken :: !(Maybe Text)
    , _ppsPageSize :: !(Maybe (Textual Int32))
    , _ppsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsProductsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppsXgafv'
--
-- * 'ppsUploadProtocol'
--
-- * 'ppsAccessToken'
--
-- * 'ppsUploadType'
--
-- * 'ppsResource'
--
-- * 'ppsQuery'
--
-- * 'ppsPageToken'
--
-- * 'ppsPageSize'
--
-- * 'ppsCallback'
projectsProductsSearch
    :: Text -- ^ 'ppsResource'
    -> ProjectsProductsSearch
projectsProductsSearch pPpsResource_ =
  ProjectsProductsSearch'
    { _ppsXgafv = Nothing
    , _ppsUploadProtocol = Nothing
    , _ppsAccessToken = Nothing
    , _ppsUploadType = Nothing
    , _ppsResource = pPpsResource_
    , _ppsQuery = Nothing
    , _ppsPageToken = Nothing
    , _ppsPageSize = Nothing
    , _ppsCallback = Nothing
    }


-- | V1 error format.
ppsXgafv :: Lens' ProjectsProductsSearch (Maybe Xgafv)
ppsXgafv = lens _ppsXgafv (\ s a -> s{_ppsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppsUploadProtocol :: Lens' ProjectsProductsSearch (Maybe Text)
ppsUploadProtocol
  = lens _ppsUploadProtocol
      (\ s a -> s{_ppsUploadProtocol = a})

-- | OAuth access token.
ppsAccessToken :: Lens' ProjectsProductsSearch (Maybe Text)
ppsAccessToken
  = lens _ppsAccessToken
      (\ s a -> s{_ppsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppsUploadType :: Lens' ProjectsProductsSearch (Maybe Text)
ppsUploadType
  = lens _ppsUploadType
      (\ s a -> s{_ppsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
ppsResource :: Lens' ProjectsProductsSearch Text
ppsResource
  = lens _ppsResource (\ s a -> s{_ppsResource = a})

-- | The query to filter the products. The supported queries are: * List
-- products of all catalogs: empty * List products under a catalog:
-- \`parent=catalogs\/{catalog_id}\` * Get a product by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\`
ppsQuery :: Lens' ProjectsProductsSearch (Maybe Text)
ppsQuery = lens _ppsQuery (\ s a -> s{_ppsQuery = a})

-- | A pagination token returned from a previous call to SearchProducts that
-- indicates where this listing should continue from. This field is
-- optional.
ppsPageToken :: Lens' ProjectsProductsSearch (Maybe Text)
ppsPageToken
  = lens _ppsPageToken (\ s a -> s{_ppsPageToken = a})

-- | The maximum number of entries that are requested.
ppsPageSize :: Lens' ProjectsProductsSearch (Maybe Int32)
ppsPageSize
  = lens _ppsPageSize (\ s a -> s{_ppsPageSize = a}) .
      mapping _Coerce

-- | JSONP
ppsCallback :: Lens' ProjectsProductsSearch (Maybe Text)
ppsCallback
  = lens _ppsCallback (\ s a -> s{_ppsCallback = a})

instance GoogleRequest ProjectsProductsSearch where
        type Rs ProjectsProductsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
        type Scopes ProjectsProductsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsProductsSearch'{..}
          = go _ppsResource _ppsXgafv _ppsUploadProtocol
              _ppsAccessToken
              _ppsUploadType
              _ppsQuery
              _ppsPageToken
              _ppsPageSize
              _ppsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsProductsSearchResource)
                      mempty
