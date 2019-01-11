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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists supported data sources and returns their settings, which can be
-- used for UI rendering.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.dataSources.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.List
    (
    -- * REST Resource
      ProjectsLocationsDataSourcesListResource

    -- * Creating a Request
    , projectsLocationsDataSourcesList
    , ProjectsLocationsDataSourcesList

    -- * Request Lenses
    , pldslParent
    , pldslXgafv
    , pldslUploadProtocol
    , pldslAccessToken
    , pldslUploadType
    , pldslPageToken
    , pldslPageSize
    , pldslCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.dataSources.list@ method which the
-- 'ProjectsLocationsDataSourcesList' request conforms to.
type ProjectsLocationsDataSourcesListResource =
     "v1" :>
       Capture "parent" Text :>
         "dataSources" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDataSourcesResponse

-- | Lists supported data sources and returns their settings, which can be
-- used for UI rendering.
--
-- /See:/ 'projectsLocationsDataSourcesList' smart constructor.
data ProjectsLocationsDataSourcesList = ProjectsLocationsDataSourcesList'
    { _pldslParent         :: !Text
    , _pldslXgafv          :: !(Maybe Xgafv)
    , _pldslUploadProtocol :: !(Maybe Text)
    , _pldslAccessToken    :: !(Maybe Text)
    , _pldslUploadType     :: !(Maybe Text)
    , _pldslPageToken      :: !(Maybe Text)
    , _pldslPageSize       :: !(Maybe (Textual Int32))
    , _pldslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsDataSourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldslParent'
--
-- * 'pldslXgafv'
--
-- * 'pldslUploadProtocol'
--
-- * 'pldslAccessToken'
--
-- * 'pldslUploadType'
--
-- * 'pldslPageToken'
--
-- * 'pldslPageSize'
--
-- * 'pldslCallback'
projectsLocationsDataSourcesList
    :: Text -- ^ 'pldslParent'
    -> ProjectsLocationsDataSourcesList
projectsLocationsDataSourcesList pPldslParent_ =
    ProjectsLocationsDataSourcesList'
    { _pldslParent = pPldslParent_
    , _pldslXgafv = Nothing
    , _pldslUploadProtocol = Nothing
    , _pldslAccessToken = Nothing
    , _pldslUploadType = Nothing
    , _pldslPageToken = Nothing
    , _pldslPageSize = Nothing
    , _pldslCallback = Nothing
    }

-- | The BigQuery project id for which data sources should be returned. Must
-- be in the form: \`projects\/{project_id}\`
pldslParent :: Lens' ProjectsLocationsDataSourcesList Text
pldslParent
  = lens _pldslParent (\ s a -> s{_pldslParent = a})

-- | V1 error format.
pldslXgafv :: Lens' ProjectsLocationsDataSourcesList (Maybe Xgafv)
pldslXgafv
  = lens _pldslXgafv (\ s a -> s{_pldslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldslUploadProtocol :: Lens' ProjectsLocationsDataSourcesList (Maybe Text)
pldslUploadProtocol
  = lens _pldslUploadProtocol
      (\ s a -> s{_pldslUploadProtocol = a})

-- | OAuth access token.
pldslAccessToken :: Lens' ProjectsLocationsDataSourcesList (Maybe Text)
pldslAccessToken
  = lens _pldslAccessToken
      (\ s a -> s{_pldslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldslUploadType :: Lens' ProjectsLocationsDataSourcesList (Maybe Text)
pldslUploadType
  = lens _pldslUploadType
      (\ s a -> s{_pldslUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListDataSourcesRequest\` list results. For multiple-page results,
-- \`ListDataSourcesResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
pldslPageToken :: Lens' ProjectsLocationsDataSourcesList (Maybe Text)
pldslPageToken
  = lens _pldslPageToken
      (\ s a -> s{_pldslPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
pldslPageSize :: Lens' ProjectsLocationsDataSourcesList (Maybe Int32)
pldslPageSize
  = lens _pldslPageSize
      (\ s a -> s{_pldslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldslCallback :: Lens' ProjectsLocationsDataSourcesList (Maybe Text)
pldslCallback
  = lens _pldslCallback
      (\ s a -> s{_pldslCallback = a})

instance GoogleRequest
         ProjectsLocationsDataSourcesList where
        type Rs ProjectsLocationsDataSourcesList =
             ListDataSourcesResponse
        type Scopes ProjectsLocationsDataSourcesList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsLocationsDataSourcesList'{..}
          = go _pldslParent _pldslXgafv _pldslUploadProtocol
              _pldslAccessToken
              _pldslUploadType
              _pldslPageToken
              _pldslPageSize
              _pldslCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSourcesListResource)
                      mempty
