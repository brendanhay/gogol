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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Folders.Catalogs.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog API Reference> for @cloudprivatecatalog.folders.catalogs.search@.
module Network.Google.Resource.CloudPrivateCatalog.Folders.Catalogs.Search
    (
    -- * REST Resource
      FoldersCatalogsSearchResource

    -- * Creating a Request
    , foldersCatalogsSearch
    , FoldersCatalogsSearch

    -- * Request Lenses
    , fcsXgafv
    , fcsUploadProtocol
    , fcsAccessToken
    , fcsUploadType
    , fcsResource
    , fcsQuery
    , fcsPageToken
    , fcsPageSize
    , fcsCallback
    ) where

import Network.Google.CloudPrivateCatalog.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.folders.catalogs.search@ method which the
-- 'FoldersCatalogsSearch' request conforms to.
type FoldersCatalogsSearchResource =
     "v1beta1" :>
       Capture "resource" Text :>
         "catalogs:search" :>
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
                               GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse

-- | Search Catalog resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ 'foldersCatalogsSearch' smart constructor.
data FoldersCatalogsSearch =
  FoldersCatalogsSearch'
    { _fcsXgafv :: !(Maybe Xgafv)
    , _fcsUploadProtocol :: !(Maybe Text)
    , _fcsAccessToken :: !(Maybe Text)
    , _fcsUploadType :: !(Maybe Text)
    , _fcsResource :: !Text
    , _fcsQuery :: !(Maybe Text)
    , _fcsPageToken :: !(Maybe Text)
    , _fcsPageSize :: !(Maybe (Textual Int32))
    , _fcsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersCatalogsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcsXgafv'
--
-- * 'fcsUploadProtocol'
--
-- * 'fcsAccessToken'
--
-- * 'fcsUploadType'
--
-- * 'fcsResource'
--
-- * 'fcsQuery'
--
-- * 'fcsPageToken'
--
-- * 'fcsPageSize'
--
-- * 'fcsCallback'
foldersCatalogsSearch
    :: Text -- ^ 'fcsResource'
    -> FoldersCatalogsSearch
foldersCatalogsSearch pFcsResource_ =
  FoldersCatalogsSearch'
    { _fcsXgafv = Nothing
    , _fcsUploadProtocol = Nothing
    , _fcsAccessToken = Nothing
    , _fcsUploadType = Nothing
    , _fcsResource = pFcsResource_
    , _fcsQuery = Nothing
    , _fcsPageToken = Nothing
    , _fcsPageSize = Nothing
    , _fcsCallback = Nothing
    }


-- | V1 error format.
fcsXgafv :: Lens' FoldersCatalogsSearch (Maybe Xgafv)
fcsXgafv = lens _fcsXgafv (\ s a -> s{_fcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fcsUploadProtocol :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsUploadProtocol
  = lens _fcsUploadProtocol
      (\ s a -> s{_fcsUploadProtocol = a})

-- | OAuth access token.
fcsAccessToken :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsAccessToken
  = lens _fcsAccessToken
      (\ s a -> s{_fcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fcsUploadType :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsUploadType
  = lens _fcsUploadType
      (\ s a -> s{_fcsUploadType = a})

-- | Required. The name of the resource context. It can be in following
-- formats: * \`projects\/{project_id}\` * \`folders\/{folder_id}\` *
-- \`organizations\/{organization_id}\`
fcsResource :: Lens' FoldersCatalogsSearch Text
fcsResource
  = lens _fcsResource (\ s a -> s{_fcsResource = a})

-- | The query to filter the catalogs. The supported queries are: * Get a
-- single catalog: \`name=catalogs\/{catalog_id}\`
fcsQuery :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsQuery = lens _fcsQuery (\ s a -> s{_fcsQuery = a})

-- | A pagination token returned from a previous call to SearchCatalogs that
-- indicates where this listing should continue from. This field is
-- optional.
fcsPageToken :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsPageToken
  = lens _fcsPageToken (\ s a -> s{_fcsPageToken = a})

-- | The maximum number of entries that are requested.
fcsPageSize :: Lens' FoldersCatalogsSearch (Maybe Int32)
fcsPageSize
  = lens _fcsPageSize (\ s a -> s{_fcsPageSize = a}) .
      mapping _Coerce

-- | JSONP
fcsCallback :: Lens' FoldersCatalogsSearch (Maybe Text)
fcsCallback
  = lens _fcsCallback (\ s a -> s{_fcsCallback = a})

instance GoogleRequest FoldersCatalogsSearch where
        type Rs FoldersCatalogsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
        type Scopes FoldersCatalogsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersCatalogsSearch'{..}
          = go _fcsResource _fcsXgafv _fcsUploadProtocol
              _fcsAccessToken
              _fcsUploadType
              _fcsQuery
              _fcsPageToken
              _fcsPageSize
              _fcsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersCatalogsSearchResource)
                      mempty
