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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates transfer runs for a time range [start_time, end_time]. For each
-- date - or whatever granularity the data source supports - in the range,
-- one transfer run is created. Note that runs are created per UTC time in
-- the time range.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.scheduleRuns@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.ScheduleRuns
    (
    -- * REST Resource
      ProjectsTransferConfigsScheduleRunsResource

    -- * Creating a Request
    , projectsTransferConfigsScheduleRuns
    , ProjectsTransferConfigsScheduleRuns

    -- * Request Lenses
    , ptcsrParent
    , ptcsrXgafv
    , ptcsrUploadProtocol
    , ptcsrAccessToken
    , ptcsrUploadType
    , ptcsrPayload
    , ptcsrCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.scheduleRuns@ method which the
-- 'ProjectsTransferConfigsScheduleRuns' request conforms to.
type ProjectsTransferConfigsScheduleRunsResource =
     "v1" :>
       CaptureMode "parent" "scheduleRuns" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ScheduleTransferRunsRequest :>
                       Post '[JSON] ScheduleTransferRunsResponse

-- | Creates transfer runs for a time range [start_time, end_time]. For each
-- date - or whatever granularity the data source supports - in the range,
-- one transfer run is created. Note that runs are created per UTC time in
-- the time range.
--
-- /See:/ 'projectsTransferConfigsScheduleRuns' smart constructor.
data ProjectsTransferConfigsScheduleRuns =
  ProjectsTransferConfigsScheduleRuns'
    { _ptcsrParent         :: !Text
    , _ptcsrXgafv          :: !(Maybe Xgafv)
    , _ptcsrUploadProtocol :: !(Maybe Text)
    , _ptcsrAccessToken    :: !(Maybe Text)
    , _ptcsrUploadType     :: !(Maybe Text)
    , _ptcsrPayload        :: !ScheduleTransferRunsRequest
    , _ptcsrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsTransferConfigsScheduleRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcsrParent'
--
-- * 'ptcsrXgafv'
--
-- * 'ptcsrUploadProtocol'
--
-- * 'ptcsrAccessToken'
--
-- * 'ptcsrUploadType'
--
-- * 'ptcsrPayload'
--
-- * 'ptcsrCallback'
projectsTransferConfigsScheduleRuns
    :: Text -- ^ 'ptcsrParent'
    -> ScheduleTransferRunsRequest -- ^ 'ptcsrPayload'
    -> ProjectsTransferConfigsScheduleRuns
projectsTransferConfigsScheduleRuns pPtcsrParent_ pPtcsrPayload_ =
  ProjectsTransferConfigsScheduleRuns'
    { _ptcsrParent = pPtcsrParent_
    , _ptcsrXgafv = Nothing
    , _ptcsrUploadProtocol = Nothing
    , _ptcsrAccessToken = Nothing
    , _ptcsrUploadType = Nothing
    , _ptcsrPayload = pPtcsrPayload_
    , _ptcsrCallback = Nothing
    }

-- | Transfer configuration name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
ptcsrParent :: Lens' ProjectsTransferConfigsScheduleRuns Text
ptcsrParent
  = lens _ptcsrParent (\ s a -> s{_ptcsrParent = a})

-- | V1 error format.
ptcsrXgafv :: Lens' ProjectsTransferConfigsScheduleRuns (Maybe Xgafv)
ptcsrXgafv
  = lens _ptcsrXgafv (\ s a -> s{_ptcsrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcsrUploadProtocol :: Lens' ProjectsTransferConfigsScheduleRuns (Maybe Text)
ptcsrUploadProtocol
  = lens _ptcsrUploadProtocol
      (\ s a -> s{_ptcsrUploadProtocol = a})

-- | OAuth access token.
ptcsrAccessToken :: Lens' ProjectsTransferConfigsScheduleRuns (Maybe Text)
ptcsrAccessToken
  = lens _ptcsrAccessToken
      (\ s a -> s{_ptcsrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcsrUploadType :: Lens' ProjectsTransferConfigsScheduleRuns (Maybe Text)
ptcsrUploadType
  = lens _ptcsrUploadType
      (\ s a -> s{_ptcsrUploadType = a})

-- | Multipart request metadata.
ptcsrPayload :: Lens' ProjectsTransferConfigsScheduleRuns ScheduleTransferRunsRequest
ptcsrPayload
  = lens _ptcsrPayload (\ s a -> s{_ptcsrPayload = a})

-- | JSONP
ptcsrCallback :: Lens' ProjectsTransferConfigsScheduleRuns (Maybe Text)
ptcsrCallback
  = lens _ptcsrCallback
      (\ s a -> s{_ptcsrCallback = a})

instance GoogleRequest
           ProjectsTransferConfigsScheduleRuns
         where
        type Rs ProjectsTransferConfigsScheduleRuns =
             ScheduleTransferRunsResponse
        type Scopes ProjectsTransferConfigsScheduleRuns =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsTransferConfigsScheduleRuns'{..}
          = go _ptcsrParent _ptcsrXgafv _ptcsrUploadProtocol
              _ptcsrAccessToken
              _ptcsrUploadType
              _ptcsrCallback
              (Just AltJSON)
              _ptcsrPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsScheduleRunsResource)
                      mempty
