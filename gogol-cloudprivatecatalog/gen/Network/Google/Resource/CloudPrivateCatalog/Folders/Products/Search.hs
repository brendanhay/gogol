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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Folders.Products.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Product resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.folders.products.search@.
module Network.Google.Resource.CloudPrivateCatalog.Folders.Products.Search
    (
    -- * REST Resource
      FoldersProductsSearchResource

    -- * Creating a Request
    , foldersProductsSearch
    , FoldersProductsSearch

    -- * Request Lenses
    , fpsXgafv
    , fpsUploadProtocol
    , fpsAccessToken
    , fpsUploadType
    , fpsResource
    , fpsQuery
    , fpsPageToken
    , fpsPageSize
    , fpsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.folders.products.search@ method which the
-- 'FoldersProductsSearch' request conforms to.
type FoldersProductsSearchResource =
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
-- /See:/ 'foldersProductsSearch' smart constructor.
data FoldersProductsSearch =
  FoldersProductsSearch'
    { _fpsXgafv :: !(Maybe Xgafv)
    , _fpsUploadProtocol :: !(Maybe Text)
    , _fpsAccessToken :: !(Maybe Text)
    , _fpsUploadType :: !(Maybe Text)
    , _fpsResource :: !Text
    , _fpsQuery :: !(Maybe Text)
    , _fpsPageToken :: !(Maybe Text)
    , _fpsPageSize :: !(Maybe (Textual Int32))
    , _fpsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersProductsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpsXgafv'
--
-- * 'fpsUploadProtocol'
--
-- * 'fpsAccessToken'
--
-- * 'fpsUploadType'
--
-- * 'fpsResource'
--
-- * 'fpsQuery'
--
-- * 'fpsPageToken'
--
-- * 'fpsPageSize'
--
-- * 'fpsCallback'
foldersProductsSearch
    :: Text -- ^ 'fpsResource'
    -> FoldersProductsSearch
foldersProductsSearch pFpsResource_ =
  FoldersProductsSearch'
    { _fpsXgafv = Nothing
    , _fpsUploadProtocol = Nothing
    , _fpsAccessToken = Nothing
    , _fpsUploadType = Nothing
    , _fpsResource = pFpsResource_
    , _fpsQuery = Nothing
    , _fpsPageToken = Nothing
    , _fpsPageSize = Nothing
    , _fpsCallback = Nothing
    }


-- | V1 error format.
fpsXgafv :: Lens' FoldersProductsSearch (Maybe Xgafv)
fpsXgafv = lens _fpsXgafv (\ s a -> s{_fpsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fpsUploadProtocol :: Lens' FoldersProductsSearch (Maybe Text)
fpsUploadProtocol
  = lens _fpsUploadProtocol
      (\ s a -> s{_fpsUploadProtocol = a})

-- | OAuth access token.
fpsAccessToken :: Lens' FoldersProductsSearch (Maybe Text)
fpsAccessToken
  = lens _fpsAccessToken
      (\ s a -> s{_fpsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fpsUploadType :: Lens' FoldersProductsSearch (Maybe Text)
fpsUploadType
  = lens _fpsUploadType
      (\ s a -> s{_fpsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
fpsResource :: Lens' FoldersProductsSearch Text
fpsResource
  = lens _fpsResource (\ s a -> s{_fpsResource = a})

-- | The query to filter the products. The supported queries are: * List
-- products of all catalogs: empty * List products under a catalog:
-- \`parent=catalogs\/{catalog_id}\` * Get a product by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\`
fpsQuery :: Lens' FoldersProductsSearch (Maybe Text)
fpsQuery = lens _fpsQuery (\ s a -> s{_fpsQuery = a})

-- | A pagination token returned from a previous call to SearchProducts that
-- indicates where this listing should continue from. This field is
-- optional.
fpsPageToken :: Lens' FoldersProductsSearch (Maybe Text)
fpsPageToken
  = lens _fpsPageToken (\ s a -> s{_fpsPageToken = a})

-- | The maximum number of entries that are requested.
fpsPageSize :: Lens' FoldersProductsSearch (Maybe Int32)
fpsPageSize
  = lens _fpsPageSize (\ s a -> s{_fpsPageSize = a}) .
      mapping _Coerce

-- | JSONP
fpsCallback :: Lens' FoldersProductsSearch (Maybe Text)
fpsCallback
  = lens _fpsCallback (\ s a -> s{_fpsCallback = a})

instance GoogleRequest FoldersProductsSearch where
        type Rs FoldersProductsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
        type Scopes FoldersProductsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersProductsSearch'{..}
          = go _fpsResource _fpsXgafv _fpsUploadProtocol
              _fpsAccessToken
              _fpsUploadType
              _fpsQuery
              _fpsPageToken
              _fpsPageSize
              _fpsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersProductsSearchResource)
                      mempty
