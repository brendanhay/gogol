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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists supported data sources and returns their settings, which can be
-- used for UI rendering.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.dataSources.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.List
    (
    -- * REST Resource
      ProjectsDataSourcesListResource

    -- * Creating a Request
    , projectsDataSourcesList
    , ProjectsDataSourcesList

    -- * Request Lenses
    , pdslParent
    , pdslXgafv
    , pdslUploadProtocol
    , pdslAccessToken
    , pdslUploadType
    , pdslPageToken
    , pdslPageSize
    , pdslCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.dataSources.list@ method which the
-- 'ProjectsDataSourcesList' request conforms to.
type ProjectsDataSourcesListResource =
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
-- /See:/ 'projectsDataSourcesList' smart constructor.
data ProjectsDataSourcesList = ProjectsDataSourcesList'
    { _pdslParent         :: !Text
    , _pdslXgafv          :: !(Maybe Xgafv)
    , _pdslUploadProtocol :: !(Maybe Text)
    , _pdslAccessToken    :: !(Maybe Text)
    , _pdslUploadType     :: !(Maybe Text)
    , _pdslPageToken      :: !(Maybe Text)
    , _pdslPageSize       :: !(Maybe (Textual Int32))
    , _pdslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDataSourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdslParent'
--
-- * 'pdslXgafv'
--
-- * 'pdslUploadProtocol'
--
-- * 'pdslAccessToken'
--
-- * 'pdslUploadType'
--
-- * 'pdslPageToken'
--
-- * 'pdslPageSize'
--
-- * 'pdslCallback'
projectsDataSourcesList
    :: Text -- ^ 'pdslParent'
    -> ProjectsDataSourcesList
projectsDataSourcesList pPdslParent_ =
    ProjectsDataSourcesList'
    { _pdslParent = pPdslParent_
    , _pdslXgafv = Nothing
    , _pdslUploadProtocol = Nothing
    , _pdslAccessToken = Nothing
    , _pdslUploadType = Nothing
    , _pdslPageToken = Nothing
    , _pdslPageSize = Nothing
    , _pdslCallback = Nothing
    }

-- | The BigQuery project id for which data sources should be returned. Must
-- be in the form: \`projects\/{project_id}\`
pdslParent :: Lens' ProjectsDataSourcesList Text
pdslParent
  = lens _pdslParent (\ s a -> s{_pdslParent = a})

-- | V1 error format.
pdslXgafv :: Lens' ProjectsDataSourcesList (Maybe Xgafv)
pdslXgafv
  = lens _pdslXgafv (\ s a -> s{_pdslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdslUploadProtocol :: Lens' ProjectsDataSourcesList (Maybe Text)
pdslUploadProtocol
  = lens _pdslUploadProtocol
      (\ s a -> s{_pdslUploadProtocol = a})

-- | OAuth access token.
pdslAccessToken :: Lens' ProjectsDataSourcesList (Maybe Text)
pdslAccessToken
  = lens _pdslAccessToken
      (\ s a -> s{_pdslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdslUploadType :: Lens' ProjectsDataSourcesList (Maybe Text)
pdslUploadType
  = lens _pdslUploadType
      (\ s a -> s{_pdslUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListDataSourcesRequest\` list results. For multiple-page results,
-- \`ListDataSourcesResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
pdslPageToken :: Lens' ProjectsDataSourcesList (Maybe Text)
pdslPageToken
  = lens _pdslPageToken
      (\ s a -> s{_pdslPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
pdslPageSize :: Lens' ProjectsDataSourcesList (Maybe Int32)
pdslPageSize
  = lens _pdslPageSize (\ s a -> s{_pdslPageSize = a})
      . mapping _Coerce

-- | JSONP
pdslCallback :: Lens' ProjectsDataSourcesList (Maybe Text)
pdslCallback
  = lens _pdslCallback (\ s a -> s{_pdslCallback = a})

instance GoogleRequest ProjectsDataSourcesList where
        type Rs ProjectsDataSourcesList =
             ListDataSourcesResponse
        type Scopes ProjectsDataSourcesList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsDataSourcesList'{..}
          = go _pdslParent _pdslXgafv _pdslUploadProtocol
              _pdslAccessToken
              _pdslUploadType
              _pdslPageToken
              _pdslPageSize
              _pdslCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDataSourcesListResource)
                      mempty
