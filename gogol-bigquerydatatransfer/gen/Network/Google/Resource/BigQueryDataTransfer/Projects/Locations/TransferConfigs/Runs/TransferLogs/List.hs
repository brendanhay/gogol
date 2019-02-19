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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns user facing log messages for the data transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.TransferLogs.List
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsRunsTransferLogsListResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsRunsTransferLogsList
    , ProjectsLocationsTransferConfigsRunsTransferLogsList

    -- * Request Lenses
    , pltcrtllParent
    , pltcrtllXgafv
    , pltcrtllUploadProtocol
    , pltcrtllMessageTypes
    , pltcrtllAccessToken
    , pltcrtllUploadType
    , pltcrtllPageToken
    , pltcrtllPageSize
    , pltcrtllCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list@ method which the
-- 'ProjectsLocationsTransferConfigsRunsTransferLogsList' request conforms to.
type ProjectsLocationsTransferConfigsRunsTransferLogsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "transferLogs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParams "messageTypes" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTransferLogsResponse

-- | Returns user facing log messages for the data transfer run.
--
-- /See:/ 'projectsLocationsTransferConfigsRunsTransferLogsList' smart constructor.
data ProjectsLocationsTransferConfigsRunsTransferLogsList =
  ProjectsLocationsTransferConfigsRunsTransferLogsList'
    { _pltcrtllParent         :: !Text
    , _pltcrtllXgafv          :: !(Maybe Xgafv)
    , _pltcrtllUploadProtocol :: !(Maybe Text)
    , _pltcrtllMessageTypes   :: !(Maybe [Text])
    , _pltcrtllAccessToken    :: !(Maybe Text)
    , _pltcrtllUploadType     :: !(Maybe Text)
    , _pltcrtllPageToken      :: !(Maybe Text)
    , _pltcrtllPageSize       :: !(Maybe (Textual Int32))
    , _pltcrtllCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsTransferConfigsRunsTransferLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcrtllParent'
--
-- * 'pltcrtllXgafv'
--
-- * 'pltcrtllUploadProtocol'
--
-- * 'pltcrtllMessageTypes'
--
-- * 'pltcrtllAccessToken'
--
-- * 'pltcrtllUploadType'
--
-- * 'pltcrtllPageToken'
--
-- * 'pltcrtllPageSize'
--
-- * 'pltcrtllCallback'
projectsLocationsTransferConfigsRunsTransferLogsList
    :: Text -- ^ 'pltcrtllParent'
    -> ProjectsLocationsTransferConfigsRunsTransferLogsList
projectsLocationsTransferConfigsRunsTransferLogsList pPltcrtllParent_ =
  ProjectsLocationsTransferConfigsRunsTransferLogsList'
    { _pltcrtllParent = pPltcrtllParent_
    , _pltcrtllXgafv = Nothing
    , _pltcrtllUploadProtocol = Nothing
    , _pltcrtllMessageTypes = Nothing
    , _pltcrtllAccessToken = Nothing
    , _pltcrtllUploadType = Nothing
    , _pltcrtllPageToken = Nothing
    , _pltcrtllPageSize = Nothing
    , _pltcrtllCallback = Nothing
    }

-- | Transfer run name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_Id}\/runs\/{run_id}\`.
pltcrtllParent :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList Text
pltcrtllParent
  = lens _pltcrtllParent
      (\ s a -> s{_pltcrtllParent = a})

-- | V1 error format.
pltcrtllXgafv :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Xgafv)
pltcrtllXgafv
  = lens _pltcrtllXgafv
      (\ s a -> s{_pltcrtllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcrtllUploadProtocol :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Text)
pltcrtllUploadProtocol
  = lens _pltcrtllUploadProtocol
      (\ s a -> s{_pltcrtllUploadProtocol = a})

-- | Message types to return. If not populated - INFO, WARNING and ERROR
-- messages are returned.
pltcrtllMessageTypes :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList [Text]
pltcrtllMessageTypes
  = lens _pltcrtllMessageTypes
      (\ s a -> s{_pltcrtllMessageTypes = a})
      . _Default
      . _Coerce

-- | OAuth access token.
pltcrtllAccessToken :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Text)
pltcrtllAccessToken
  = lens _pltcrtllAccessToken
      (\ s a -> s{_pltcrtllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcrtllUploadType :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Text)
pltcrtllUploadType
  = lens _pltcrtllUploadType
      (\ s a -> s{_pltcrtllUploadType = a})

-- | Pagination token, which can be used to request a specific page of
-- \`ListTransferLogsRequest\` list results. For multiple-page results,
-- \`ListTransferLogsResponse\` outputs a \`next_page\` token, which can be
-- used as the \`page_token\` value to request the next page of list
-- results.
pltcrtllPageToken :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Text)
pltcrtllPageToken
  = lens _pltcrtllPageToken
      (\ s a -> s{_pltcrtllPageToken = a})

-- | Page size. The default page size is the maximum value of 1000 results.
pltcrtllPageSize :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Int32)
pltcrtllPageSize
  = lens _pltcrtllPageSize
      (\ s a -> s{_pltcrtllPageSize = a})
      . mapping _Coerce

-- | JSONP
pltcrtllCallback :: Lens' ProjectsLocationsTransferConfigsRunsTransferLogsList (Maybe Text)
pltcrtllCallback
  = lens _pltcrtllCallback
      (\ s a -> s{_pltcrtllCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsRunsTransferLogsList
         where
        type Rs
               ProjectsLocationsTransferConfigsRunsTransferLogsList
             = ListTransferLogsResponse
        type Scopes
               ProjectsLocationsTransferConfigsRunsTransferLogsList
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsTransferConfigsRunsTransferLogsList'{..}
          = go _pltcrtllParent _pltcrtllXgafv
              _pltcrtllUploadProtocol
              (_pltcrtllMessageTypes ^. _Default)
              _pltcrtllAccessToken
              _pltcrtllUploadType
              _pltcrtllPageToken
              _pltcrtllPageSize
              _pltcrtllCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsRunsTransferLogsListResource)
                      mempty
