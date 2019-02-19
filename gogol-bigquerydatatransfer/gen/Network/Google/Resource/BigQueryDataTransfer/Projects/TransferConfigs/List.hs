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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all data transfers in the project.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.List
    (
    -- * REST Resource
      ProjectsTransferConfigsListResource

    -- * Creating a Request
    , projectsTransferConfigsList
    , ProjectsTransferConfigsList

    -- * Request Lenses
    , ptclParent
    , ptclXgafv
    , ptclUploadProtocol
    , ptclAccessToken
    , ptclUploadType
    , ptclPageToken
    , ptclDataSourceIds
    , ptclPageSize
    , ptclCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.list@ method which the
-- 'ProjectsTransferConfigsList' request conforms to.
type ProjectsTransferConfigsListResource =
     "v1" :>
       Capture "parent" Text :>
         "transferConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParams "dataSourceIds" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTransferConfigsResponse

-- | Returns information about all data transfers in the project.
--
-- /See:/ 'projectsTransferConfigsList' smart constructor.
data ProjectsTransferConfigsList =
  ProjectsTransferConfigsList'
    { _ptclParent         :: !Text
    , _ptclXgafv          :: !(Maybe Xgafv)
    , _ptclUploadProtocol :: !(Maybe Text)
    , _ptclAccessToken    :: !(Maybe Text)
    , _ptclUploadType     :: !(Maybe Text)
    , _ptclPageToken      :: !(Maybe Text)
    , _ptclDataSourceIds  :: !(Maybe [Text])
    , _ptclPageSize       :: !(Maybe (Textual Int32))
    , _ptclCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsTransferConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptclParent'
--
-- * 'ptclXgafv'
--
-- * 'ptclUploadProtocol'
--
-- * 'ptclAccessToken'
--
-- * 'ptclUploadType'
--
-- * 'ptclPageToken'
--
-- * 'ptclDataSourceIds'
--
-- * 'ptclPageSize'
--
-- * 'ptclCallback'
projectsTransferConfigsList
    :: Text -- ^ 'ptclParent'
    -> ProjectsTransferConfigsList
projectsTransferConfigsList pPtclParent_ =
  ProjectsTransferConfigsList'
    { _ptclParent = pPtclParent_
    , _ptclXgafv = Nothing
    , _ptclUploadProtocol = Nothing
    , _ptclAccessToken = Nothing
    , _ptclUploadType = Nothing
    , _ptclPageToken = Nothing
    , _ptclDataSourceIds = Nothing
    , _ptclPageSize = Nothing
    , _ptclCallback = Nothing
    }

-- | The BigQuery project id for which data sources should be returned:
-- \`projects\/{project_id}\`.
ptclParent :: Lens' ProjectsTransferConfigsList Text
ptclParent
  = lens _ptclParent (\ s a -> s{_ptclParent = a})

-- | V1 error format.
ptclXgafv :: Lens' ProjectsTransferConfigsList (Maybe Xgafv)
ptclXgafv
  = lens _ptclXgafv (\ s a -> s{_ptclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptclUploadProtocol :: Lens' ProjectsTransferConfigsList (Maybe Text)
ptclUploadProtocol
  = lens _ptclUploadProtocol
      (\ s a -> s{_ptclUploadProtocol = a})

-- | OAuth access token.
ptclAccessToken :: Lens' ProjectsTransferConfigsList (Maybe Text)
ptclAccessToken
  = lens _ptclAccessToken
      (\ s a -> s{_ptclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptclUploadType :: Lens' ProjectsTransferConfigsList (Maybe Text)
ptclUploadType
  = lens _ptclUploadType
      (\ s a -> s{_ptclUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransfersRequest\` list results. For multiple-page results,
-- \`ListTransfersResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
ptclPageToken :: Lens' ProjectsTransferConfigsList (Maybe Text)
ptclPageToken
  = lens _ptclPageToken
      (\ s a -> s{_ptclPageToken = a})

-- | When specified, only configurations of requested data sources are
-- returned.
ptclDataSourceIds :: Lens' ProjectsTransferConfigsList [Text]
ptclDataSourceIds
  = lens _ptclDataSourceIds
      (\ s a -> s{_ptclDataSourceIds = a})
      . _Default
      . _Coerce

-- | Page size. The default page size is the maximum value of 1000 results.
ptclPageSize :: Lens' ProjectsTransferConfigsList (Maybe Int32)
ptclPageSize
  = lens _ptclPageSize (\ s a -> s{_ptclPageSize = a})
      . mapping _Coerce

-- | JSONP
ptclCallback :: Lens' ProjectsTransferConfigsList (Maybe Text)
ptclCallback
  = lens _ptclCallback (\ s a -> s{_ptclCallback = a})

instance GoogleRequest ProjectsTransferConfigsList
         where
        type Rs ProjectsTransferConfigsList =
             ListTransferConfigsResponse
        type Scopes ProjectsTransferConfigsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTransferConfigsList'{..}
          = go _ptclParent _ptclXgafv _ptclUploadProtocol
              _ptclAccessToken
              _ptclUploadType
              _ptclPageToken
              (_ptclDataSourceIds ^. _Default)
              _ptclPageSize
              _ptclCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTransferConfigsListResource)
                      mempty
