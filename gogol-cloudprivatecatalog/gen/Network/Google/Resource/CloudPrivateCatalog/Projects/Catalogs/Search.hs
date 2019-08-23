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
-- Module      : Network.Google.Resource.CloudPrivateCatalog.Projects.Catalogs.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search Catalog resources that consumers have access to, within the scope
-- of the consumer cloud resource hierarchy context.
--
-- /See:/ <https://sites.google.com/corp/google.com/cloudprivatecatalog Cloud Private Catalog API Reference> for @cloudprivatecatalog.projects.catalogs.search@.
module Network.Google.Resource.CloudPrivateCatalog.Projects.Catalogs.Search
    (
    -- * REST Resource
      ProjectsCatalogsSearchResource

    -- * Creating a Request
    , projectsCatalogsSearch
    , ProjectsCatalogsSearch

    -- * Request Lenses
    , pcsXgafv
    , pcsUploadProtocol
    , pcsAccessToken
    , pcsUploadType
    , pcsResource
    , pcsQuery
    , pcsPageToken
    , pcsPageSize
    , pcsCallback
    ) where

import           Network.Google.CloudPrivateCatalog.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprivatecatalog.projects.catalogs.search@ method which the
-- 'ProjectsCatalogsSearch' request conforms to.
type ProjectsCatalogsSearchResource =
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
-- /See:/ 'projectsCatalogsSearch' smart constructor.
data ProjectsCatalogsSearch =
  ProjectsCatalogsSearch'
    { _pcsXgafv          :: !(Maybe Xgafv)
    , _pcsUploadProtocol :: !(Maybe Text)
    , _pcsAccessToken    :: !(Maybe Text)
    , _pcsUploadType     :: !(Maybe Text)
    , _pcsResource       :: !Text
    , _pcsQuery          :: !(Maybe Text)
    , _pcsPageToken      :: !(Maybe Text)
    , _pcsPageSize       :: !(Maybe (Textual Int32))
    , _pcsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcsXgafv'
--
-- * 'pcsUploadProtocol'
--
-- * 'pcsAccessToken'
--
-- * 'pcsUploadType'
--
-- * 'pcsResource'
--
-- * 'pcsQuery'
--
-- * 'pcsPageToken'
--
-- * 'pcsPageSize'
--
-- * 'pcsCallback'
projectsCatalogsSearch
    :: Text -- ^ 'pcsResource'
    -> ProjectsCatalogsSearch
projectsCatalogsSearch pPcsResource_ =
  ProjectsCatalogsSearch'
    { _pcsXgafv = Nothing
    , _pcsUploadProtocol = Nothing
    , _pcsAccessToken = Nothing
    , _pcsUploadType = Nothing
    , _pcsResource = pPcsResource_
    , _pcsQuery = Nothing
    , _pcsPageToken = Nothing
    , _pcsPageSize = Nothing
    , _pcsCallback = Nothing
    }


-- | V1 error format.
pcsXgafv :: Lens' ProjectsCatalogsSearch (Maybe Xgafv)
pcsXgafv = lens _pcsXgafv (\ s a -> s{_pcsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcsUploadProtocol :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsUploadProtocol
  = lens _pcsUploadProtocol
      (\ s a -> s{_pcsUploadProtocol = a})

-- | OAuth access token.
pcsAccessToken :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsAccessToken
  = lens _pcsAccessToken
      (\ s a -> s{_pcsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcsUploadType :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsUploadType
  = lens _pcsUploadType
      (\ s a -> s{_pcsUploadType = a})

-- | Required. The name of the resource context. It can be in following
-- formats: * \`projects\/{project_id}\` * \`folders\/{folder_id}\` *
-- \`organizations\/{organization_id}\`
pcsResource :: Lens' ProjectsCatalogsSearch Text
pcsResource
  = lens _pcsResource (\ s a -> s{_pcsResource = a})

-- | The query to filter the catalogs. The supported queries are: * Get a
-- single catalog: \`name=catalogs\/{catalog_id}\`
pcsQuery :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsQuery = lens _pcsQuery (\ s a -> s{_pcsQuery = a})

-- | A pagination token returned from a previous call to SearchCatalogs that
-- indicates where this listing should continue from. This field is
-- optional.
pcsPageToken :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsPageToken
  = lens _pcsPageToken (\ s a -> s{_pcsPageToken = a})

-- | The maximum number of entries that are requested.
pcsPageSize :: Lens' ProjectsCatalogsSearch (Maybe Int32)
pcsPageSize
  = lens _pcsPageSize (\ s a -> s{_pcsPageSize = a}) .
      mapping _Coerce

-- | JSONP
pcsCallback :: Lens' ProjectsCatalogsSearch (Maybe Text)
pcsCallback
  = lens _pcsCallback (\ s a -> s{_pcsCallback = a})

instance GoogleRequest ProjectsCatalogsSearch where
        type Rs ProjectsCatalogsSearch =
             GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
        type Scopes ProjectsCatalogsSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsCatalogsSearch'{..}
          = go _pcsResource _pcsXgafv _pcsUploadProtocol
              _pcsAccessToken
              _pcsUploadType
              _pcsQuery
              _pcsPageToken
              _pcsPageSize
              _pcsCallback
              (Just AltJSON)
              cloudPrivateCatalogService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCatalogsSearchResource)
                      mempty
