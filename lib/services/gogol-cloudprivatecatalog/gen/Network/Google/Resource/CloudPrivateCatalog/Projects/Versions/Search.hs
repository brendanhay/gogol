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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Projects.Versions.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Version resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.projects.versions.search@.
module Network.Google.Resource.CloudPrivateCatalog.Projects.Versions.Search
    (
    -- * REST Resource
      ProjectsVersionsSearchResource

    -- * Creating a Request
    , projectsVersionsSearch
    , ProjectsVersionsSearch

    -- * Request Lenses
    , pvsXgafv
    , pvsUploadProtocol
    , pvsAccessToken
    , pvsUploadType
    , pvsResource
    , pvsQuery
    , pvsPageToken
    , pvsPageSize
    , pvsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.projects.versions.search@ method which the
-- 'ProjectsVersionsSearch' request conforms to.
type ProjectsVersionsSearchResource =
     "v1beta1" :>
       Capture "resource" Text :>
         "versions:search" :>
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
                               GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse

-- | Search Version resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ 'projectsVersionsSearch' smart constructor.
data ProjectsVersionsSearch =
  ProjectsVersionsSearch'
    { _pvsXgafv :: !(Maybe Xgafv)
    , _pvsUploadProtocol :: !(Maybe Text)
    , _pvsAccessToken :: !(Maybe Text)
    , _pvsUploadType :: !(Maybe Text)
    , _pvsResource :: !Text
    , _pvsQuery :: !(Maybe Text)
    , _pvsPageToken :: !(Maybe Text)
    , _pvsPageSize :: !(Maybe (Textual Int32))
    , _pvsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsVersionsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvsXgafv'
--
-- * 'pvsUploadProtocol'
--
-- * 'pvsAccessToken'
--
-- * 'pvsUploadType'
--
-- * 'pvsResource'
--
-- * 'pvsQuery'
--
-- * 'pvsPageToken'
--
-- * 'pvsPageSize'
--
-- * 'pvsCallback'
projectsVersionsSearch
    :: Text -- ^ 'pvsResource'
    -> ProjectsVersionsSearch
projectsVersionsSearch pPvsResource_ =
  ProjectsVersionsSearch'
    { _pvsXgafv = Nothing
    , _pvsUploadProtocol = Nothing
    , _pvsAccessToken = Nothing
    , _pvsUploadType = Nothing
    , _pvsResource = pPvsResource_
    , _pvsQuery = Nothing
    , _pvsPageToken = Nothing
    , _pvsPageSize = Nothing
    , _pvsCallback = Nothing
    }


-- | V1 error format.
pvsXgafv :: Lens' ProjectsVersionsSearch (Maybe Xgafv)
pvsXgafv = lens _pvsXgafv (\ s a -> s{_pvsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvsUploadProtocol :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsUploadProtocol
  = lens _pvsUploadProtocol
      (\ s a -> s{_pvsUploadProtocol = a})

-- | OAuth access token.
pvsAccessToken :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsAccessToken
  = lens _pvsAccessToken
      (\ s a -> s{_pvsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvsUploadType :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsUploadType
  = lens _pvsUploadType
      (\ s a -> s{_pvsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
pvsResource :: Lens' ProjectsVersionsSearch Text
pvsResource
  = lens _pvsResource (\ s a -> s{_pvsResource = a})

-- | The query to filter the versions. Required. The supported queries are: *
-- List versions under a product:
-- \`parent=catalogs\/{catalog_id}\/products\/{product_id}\` * Get a
-- version by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\/versions\/{version_id}\`
pvsQuery :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsQuery = lens _pvsQuery (\ s a -> s{_pvsQuery = a})

-- | A pagination token returned from a previous call to SearchVersions that
-- indicates where this listing should continue from. This field is
-- optional.
pvsPageToken :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsPageToken
  = lens _pvsPageToken (\ s a -> s{_pvsPageToken = a})

-- | The maximum number of entries that are requested.
pvsPageSize :: Lens' ProjectsVersionsSearch (Maybe Int32)
pvsPageSize
  = lens _pvsPageSize (\ s a -> s{_pvsPageSize = a}) .
      mapping _Coerce

-- | JSONP
pvsCallback :: Lens' ProjectsVersionsSearch (Maybe Text)
pvsCallback
  = lens _pvsCallback (\ s a -> s{_pvsCallback = a})

instance GoogleRequest ProjectsVersionsSearch where
        type Rs ProjectsVersionsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
        type Scopes ProjectsVersionsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsVersionsSearch'{..}
          = go _pvsResource _pvsXgafv _pvsUploadProtocol
              _pvsAccessToken
              _pvsUploadType
              _pvsQuery
              _pvsPageToken
              _pvsPageSize
              _pvsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsVersionsSearchResource)
                      mempty
