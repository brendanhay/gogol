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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Folders.Versions.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Version resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog API Reference> for @cloudprivatecatalog.folders.versions.search@.
module Network.Google.Resource.CloudPrivateCatalog.Folders.Versions.Search
    (
    -- * REST Resource
      FoldersVersionsSearchResource

    -- * Creating a Request
    , foldersVersionsSearch
    , FoldersVersionsSearch

    -- * Request Lenses
    , fvsXgafv
    , fvsUploadProtocol
    , fvsAccessToken
    , fvsUploadType
    , fvsResource
    , fvsQuery
    , fvsPageToken
    , fvsPageSize
    , fvsCallback
    ) where

import           Network.Google.CloudPrivateCatalog.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.folders.versions.search@ method which the
-- 'FoldersVersionsSearch' request conforms to.
type FoldersVersionsSearchResource =
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
-- /See:/ 'foldersVersionsSearch' smart constructor.
data FoldersVersionsSearch =
  FoldersVersionsSearch'
    { _fvsXgafv          :: !(Maybe Xgafv)
    , _fvsUploadProtocol :: !(Maybe Text)
    , _fvsAccessToken    :: !(Maybe Text)
    , _fvsUploadType     :: !(Maybe Text)
    , _fvsResource       :: !Text
    , _fvsQuery          :: !(Maybe Text)
    , _fvsPageToken      :: !(Maybe Text)
    , _fvsPageSize       :: !(Maybe (Textual Int32))
    , _fvsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersVersionsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvsXgafv'
--
-- * 'fvsUploadProtocol'
--
-- * 'fvsAccessToken'
--
-- * 'fvsUploadType'
--
-- * 'fvsResource'
--
-- * 'fvsQuery'
--
-- * 'fvsPageToken'
--
-- * 'fvsPageSize'
--
-- * 'fvsCallback'
foldersVersionsSearch
    :: Text -- ^ 'fvsResource'
    -> FoldersVersionsSearch
foldersVersionsSearch pFvsResource_ =
  FoldersVersionsSearch'
    { _fvsXgafv = Nothing
    , _fvsUploadProtocol = Nothing
    , _fvsAccessToken = Nothing
    , _fvsUploadType = Nothing
    , _fvsResource = pFvsResource_
    , _fvsQuery = Nothing
    , _fvsPageToken = Nothing
    , _fvsPageSize = Nothing
    , _fvsCallback = Nothing
    }


-- | V1 error format.
fvsXgafv :: Lens' FoldersVersionsSearch (Maybe Xgafv)
fvsXgafv = lens _fvsXgafv (\ s a -> s{_fvsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fvsUploadProtocol :: Lens' FoldersVersionsSearch (Maybe Text)
fvsUploadProtocol
  = lens _fvsUploadProtocol
      (\ s a -> s{_fvsUploadProtocol = a})

-- | OAuth access token.
fvsAccessToken :: Lens' FoldersVersionsSearch (Maybe Text)
fvsAccessToken
  = lens _fvsAccessToken
      (\ s a -> s{_fvsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fvsUploadType :: Lens' FoldersVersionsSearch (Maybe Text)
fvsUploadType
  = lens _fvsUploadType
      (\ s a -> s{_fvsUploadType = a})

-- | Required. The name of the resource context. See
-- SearchCatalogsRequest.resource for details.
fvsResource :: Lens' FoldersVersionsSearch Text
fvsResource
  = lens _fvsResource (\ s a -> s{_fvsResource = a})

-- | The query to filter the versions. Required. The supported queries are: *
-- List versions under a product:
-- \`parent=catalogs\/{catalog_id}\/products\/{product_id}\` * Get a
-- version by name:
-- \`name=catalogs\/{catalog_id}\/products\/{product_id}\/versions\/{version_id}\`
fvsQuery :: Lens' FoldersVersionsSearch (Maybe Text)
fvsQuery = lens _fvsQuery (\ s a -> s{_fvsQuery = a})

-- | A pagination token returned from a previous call to SearchVersions that
-- indicates where this listing should continue from. This field is
-- optional.
fvsPageToken :: Lens' FoldersVersionsSearch (Maybe Text)
fvsPageToken
  = lens _fvsPageToken (\ s a -> s{_fvsPageToken = a})

-- | The maximum number of entries that are requested.
fvsPageSize :: Lens' FoldersVersionsSearch (Maybe Int32)
fvsPageSize
  = lens _fvsPageSize (\ s a -> s{_fvsPageSize = a}) .
      mapping _Coerce

-- | JSONP
fvsCallback :: Lens' FoldersVersionsSearch (Maybe Text)
fvsCallback
  = lens _fvsCallback (\ s a -> s{_fvsCallback = a})

instance GoogleRequest FoldersVersionsSearch where
        type Rs FoldersVersionsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
        type Scopes FoldersVersionsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersVersionsSearch'{..}
          = go _fvsResource _fvsXgafv _fvsUploadProtocol
              _fvsAccessToken
              _fvsUploadType
              _fvsQuery
              _fvsPageToken
              _fvsPageSize
              _fvsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersVersionsSearchResource)
                      mempty
