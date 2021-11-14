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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Organizations.Products.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Product resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.organizations.products.search@.
module Network.Google.Resource.CloudPrivateCatalog.Organizations.Products.Search
    (
    -- * REST Resource
      OrganizationsProductsSearchResource

    -- * Creating a Request
    , organizationsProductsSearch
    , OrganizationsProductsSearch

    -- * Request Lenses
    , opsXgafv
    , opsUploadProtocol
    , opsAccessToken
    , opsUploadType
    , opsResource
    , opsQuery
    , opsPageToken
    , opsPageSize
    , opsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.organizations.products.search@ method which the
-- 'OrganizationsProductsSearch' request conforms to.
type OrganizationsProductsSearchResource =
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
-- /See:/ 'organizationsProductsSearch' smart constructor.
data OrganizationsProductsSearch =
  OrganizationsProductsSearch'
    { _opsXgafv :: !(Maybe Xgafv)
    , _opsUploadProtocol :: !(Maybe Text)
    , _opsAccessToken :: !(Maybe Text)
    , _opsUploadType :: !(Maybe Text)
    , _opsResource :: !Text
    , _opsQuery :: !(Maybe Text)
    , _opsPageToken :: !(Maybe Text)
    , _opsPageSize :: !(Maybe (Textual Int32))
    , _opsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsProductsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opsXgafv'
--
-- * 'opsUploadProtocol'
--
-- * 'opsAccessToken'
--
-- * 'opsUploadType'
--
-- * 'opsResource'
--
-- * 'opsQuery'
--
-- * 'opsPageToken'
--
-- * 'opsPageSize'
--
-- * 'opsCallback'
organizationsProductsSearch
    :: Text -- ^ 'opsResource'
    -> OrganizationsProductsSearch
organizationsProductsSearch pOpsResource_ =
  OrganizationsProductsSearch'
    { _opsXgafv = Nothing
    , _opsUploadProtocol = Nothing
    , _opsAccessToken = Nothing
    , _opsUploadType = Nothing
    , _opsResource = pOpsResource_
    , _opsQuery = Nothing
    , _opsPageToken = Nothing
    , _opsPageSize = Nothing
    , _opsCallback = Nothing
    }


-- | V1 error format.
opsXgafv :: Lens' OrganizationsProductsSearch (Maybe Xgafv)
opsXgafv = lens _opsXgafv (\ s a -> s{_opsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
opsUploadProtocol :: Lens' OrganizationsProductsSearch (Maybe Text)
opsUploadProtocol
  = lens _opsUploadProtocol
      (\ s a -> s{_opsUploadProtocol = a})

-- | OAuth access token.
opsAccessToken :: Lens' OrganizationsProductsSearch (Maybe Text)
opsAccessToken
  = lens _opsAccessToken
      (\ s a -> s{_opsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
opsUploadType :: Lens' OrganizationsProductsSearch (Maybe Text)
opsUploadType
  = lens _opsUploadType
      (\ s a -> s{_opsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
opsResource :: Lens' OrganizationsProductsSearch Text
opsResource
  = lens _opsResource (\ s a -> s{_opsResource = a})

-- | The query to filter the products. The supported queries are: * List
-- products of all catalogs: empty * List products under a catalog:
-- \`parent=catalogs\/{catalog_id}\` * Get a product by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\`
opsQuery :: Lens' OrganizationsProductsSearch (Maybe Text)
opsQuery = lens _opsQuery (\ s a -> s{_opsQuery = a})

-- | A pagination token returned from a previous call to SearchProducts that
-- indicates where this listing should continue from. This field is
-- optional.
opsPageToken :: Lens' OrganizationsProductsSearch (Maybe Text)
opsPageToken
  = lens _opsPageToken (\ s a -> s{_opsPageToken = a})

-- | The maximum number of entries that are requested.
opsPageSize :: Lens' OrganizationsProductsSearch (Maybe Int32)
opsPageSize
  = lens _opsPageSize (\ s a -> s{_opsPageSize = a}) .
      mapping _Coerce

-- | JSONP
opsCallback :: Lens' OrganizationsProductsSearch (Maybe Text)
opsCallback
  = lens _opsCallback (\ s a -> s{_opsCallback = a})

instance GoogleRequest OrganizationsProductsSearch
         where
        type Rs OrganizationsProductsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
        type Scopes OrganizationsProductsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsProductsSearch'{..}
          = go _opsResource _opsXgafv _opsUploadProtocol
              _opsAccessToken
              _opsUploadType
              _opsQuery
              _opsPageToken
              _opsPageSize
              _opsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsProductsSearchResource)
                      mempty
