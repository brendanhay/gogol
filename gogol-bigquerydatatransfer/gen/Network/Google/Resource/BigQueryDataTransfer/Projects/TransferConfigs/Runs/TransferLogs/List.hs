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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.TransferLogs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns user facing log messages for the data transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.TransferLogs.List
    (
    -- * REST Resource
      ProjectsTransferConfigsRunsTransferLogsListResource

    -- * Creating a Request
    , projectsTransferConfigsRunsTransferLogsList
    , ProjectsTransferConfigsRunsTransferLogsList

    -- * Request Lenses
    , ptcrtllParent
    , ptcrtllXgafv
    , ptcrtllUploadProtocol
    , ptcrtllMessageTypes
    , ptcrtllAccessToken
    , ptcrtllUploadType
    , ptcrtllPageToken
    , ptcrtllPageSize
    , ptcrtllCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list@ method which the
-- 'ProjectsTransferConfigsRunsTransferLogsList' request conforms to.
type ProjectsTransferConfigsRunsTransferLogsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "transferLogs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParams "messageTypes"
                 ProjectsTransferConfigsRunsTransferLogsListMessageTypes
                 :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTransferLogsResponse

-- | Returns user facing log messages for the data transfer run.
--
-- /See:/ 'projectsTransferConfigsRunsTransferLogsList' smart constructor.
data ProjectsTransferConfigsRunsTransferLogsList =
  ProjectsTransferConfigsRunsTransferLogsList'
    { _ptcrtllParent :: !Text
    , _ptcrtllXgafv :: !(Maybe Xgafv)
    , _ptcrtllUploadProtocol :: !(Maybe Text)
    , _ptcrtllMessageTypes :: !(Maybe [ProjectsTransferConfigsRunsTransferLogsListMessageTypes])
    , _ptcrtllAccessToken :: !(Maybe Text)
    , _ptcrtllUploadType :: !(Maybe Text)
    , _ptcrtllPageToken :: !(Maybe Text)
    , _ptcrtllPageSize :: !(Maybe (Textual Int32))
    , _ptcrtllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsRunsTransferLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcrtllParent'
--
-- * 'ptcrtllXgafv'
--
-- * 'ptcrtllUploadProtocol'
--
-- * 'ptcrtllMessageTypes'
--
-- * 'ptcrtllAccessToken'
--
-- * 'ptcrtllUploadType'
--
-- * 'ptcrtllPageToken'
--
-- * 'ptcrtllPageSize'
--
-- * 'ptcrtllCallback'
projectsTransferConfigsRunsTransferLogsList
    :: Text -- ^ 'ptcrtllParent'
    -> ProjectsTransferConfigsRunsTransferLogsList
projectsTransferConfigsRunsTransferLogsList pPtcrtllParent_ =
  ProjectsTransferConfigsRunsTransferLogsList'
    { _ptcrtllParent = pPtcrtllParent_
    , _ptcrtllXgafv = Nothing
    , _ptcrtllUploadProtocol = Nothing
    , _ptcrtllMessageTypes = Nothing
    , _ptcrtllAccessToken = Nothing
    , _ptcrtllUploadType = Nothing
    , _ptcrtllPageToken = Nothing
    , _ptcrtllPageSize = Nothing
    , _ptcrtllCallback = Nothing
    }


-- | Required. Transfer run name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
-- or
-- \`projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
ptcrtllParent :: Lens' ProjectsTransferConfigsRunsTransferLogsList Text
ptcrtllParent
  = lens _ptcrtllParent
      (\ s a -> s{_ptcrtllParent = a})

-- | V1 error format.
ptcrtllXgafv :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Xgafv)
ptcrtllXgafv
  = lens _ptcrtllXgafv (\ s a -> s{_ptcrtllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcrtllUploadProtocol :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Text)
ptcrtllUploadProtocol
  = lens _ptcrtllUploadProtocol
      (\ s a -> s{_ptcrtllUploadProtocol = a})

-- | Message types to return. If not populated - INFO, WARNING and ERROR
-- messages are returned.
ptcrtllMessageTypes :: Lens' ProjectsTransferConfigsRunsTransferLogsList [ProjectsTransferConfigsRunsTransferLogsListMessageTypes]
ptcrtllMessageTypes
  = lens _ptcrtllMessageTypes
      (\ s a -> s{_ptcrtllMessageTypes = a})
      . _Default
      . _Coerce

-- | OAuth access token.
ptcrtllAccessToken :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Text)
ptcrtllAccessToken
  = lens _ptcrtllAccessToken
      (\ s a -> s{_ptcrtllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcrtllUploadType :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Text)
ptcrtllUploadType
  = lens _ptcrtllUploadType
      (\ s a -> s{_ptcrtllUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransferLogsRequest\` list results. For multiple-page results,
-- \`ListTransferLogsResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
ptcrtllPageToken :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Text)
ptcrtllPageToken
  = lens _ptcrtllPageToken
      (\ s a -> s{_ptcrtllPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
ptcrtllPageSize :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Int32)
ptcrtllPageSize
  = lens _ptcrtllPageSize
      (\ s a -> s{_ptcrtllPageSize = a})
      . mapping _Coerce

-- | JSONP
ptcrtllCallback :: Lens' ProjectsTransferConfigsRunsTransferLogsList (Maybe Text)
ptcrtllCallback
  = lens _ptcrtllCallback
      (\ s a -> s{_ptcrtllCallback = a})

instance GoogleRequest
           ProjectsTransferConfigsRunsTransferLogsList
         where
        type Rs ProjectsTransferConfigsRunsTransferLogsList =
             ListTransferLogsResponse
        type Scopes
               ProjectsTransferConfigsRunsTransferLogsList
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsTransferConfigsRunsTransferLogsList'{..}
          = go _ptcrtllParent _ptcrtllXgafv
              _ptcrtllUploadProtocol
              (_ptcrtllMessageTypes ^. _Default)
              _ptcrtllAccessToken
              _ptcrtllUploadType
              _ptcrtllPageToken
              _ptcrtllPageSize
              _ptcrtllCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsTransferConfigsRunsTransferLogsListResource)
                      mempty
