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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.ScheduleRuns
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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.ScheduleRuns
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsScheduleRunsResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsScheduleRuns
    , ProjectsLocationsTransferConfigsScheduleRuns

    -- * Request Lenses
    , pltcsrParent
    , pltcsrXgafv
    , pltcsrUploadProtocol
    , pltcsrAccessToken
    , pltcsrUploadType
    , pltcsrPayload
    , pltcsrCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns@ method which the
-- 'ProjectsLocationsTransferConfigsScheduleRuns' request conforms to.
type ProjectsLocationsTransferConfigsScheduleRunsResource
     =
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
-- /See:/ 'projectsLocationsTransferConfigsScheduleRuns' smart constructor.
data ProjectsLocationsTransferConfigsScheduleRuns =
  ProjectsLocationsTransferConfigsScheduleRuns'
    { _pltcsrParent         :: !Text
    , _pltcsrXgafv          :: !(Maybe Xgafv)
    , _pltcsrUploadProtocol :: !(Maybe Text)
    , _pltcsrAccessToken    :: !(Maybe Text)
    , _pltcsrUploadType     :: !(Maybe Text)
    , _pltcsrPayload        :: !ScheduleTransferRunsRequest
    , _pltcsrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsScheduleRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcsrParent'
--
-- * 'pltcsrXgafv'
--
-- * 'pltcsrUploadProtocol'
--
-- * 'pltcsrAccessToken'
--
-- * 'pltcsrUploadType'
--
-- * 'pltcsrPayload'
--
-- * 'pltcsrCallback'
projectsLocationsTransferConfigsScheduleRuns
    :: Text -- ^ 'pltcsrParent'
    -> ScheduleTransferRunsRequest -- ^ 'pltcsrPayload'
    -> ProjectsLocationsTransferConfigsScheduleRuns
projectsLocationsTransferConfigsScheduleRuns pPltcsrParent_ pPltcsrPayload_ =
  ProjectsLocationsTransferConfigsScheduleRuns'
    { _pltcsrParent = pPltcsrParent_
    , _pltcsrXgafv = Nothing
    , _pltcsrUploadProtocol = Nothing
    , _pltcsrAccessToken = Nothing
    , _pltcsrUploadType = Nothing
    , _pltcsrPayload = pPltcsrPayload_
    , _pltcsrCallback = Nothing
    }


-- | Transfer configuration name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
pltcsrParent :: Lens' ProjectsLocationsTransferConfigsScheduleRuns Text
pltcsrParent
  = lens _pltcsrParent (\ s a -> s{_pltcsrParent = a})

-- | V1 error format.
pltcsrXgafv :: Lens' ProjectsLocationsTransferConfigsScheduleRuns (Maybe Xgafv)
pltcsrXgafv
  = lens _pltcsrXgafv (\ s a -> s{_pltcsrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcsrUploadProtocol :: Lens' ProjectsLocationsTransferConfigsScheduleRuns (Maybe Text)
pltcsrUploadProtocol
  = lens _pltcsrUploadProtocol
      (\ s a -> s{_pltcsrUploadProtocol = a})

-- | OAuth access token.
pltcsrAccessToken :: Lens' ProjectsLocationsTransferConfigsScheduleRuns (Maybe Text)
pltcsrAccessToken
  = lens _pltcsrAccessToken
      (\ s a -> s{_pltcsrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcsrUploadType :: Lens' ProjectsLocationsTransferConfigsScheduleRuns (Maybe Text)
pltcsrUploadType
  = lens _pltcsrUploadType
      (\ s a -> s{_pltcsrUploadType = a})

-- | Multipart request metadata.
pltcsrPayload :: Lens' ProjectsLocationsTransferConfigsScheduleRuns ScheduleTransferRunsRequest
pltcsrPayload
  = lens _pltcsrPayload
      (\ s a -> s{_pltcsrPayload = a})

-- | JSONP
pltcsrCallback :: Lens' ProjectsLocationsTransferConfigsScheduleRuns (Maybe Text)
pltcsrCallback
  = lens _pltcsrCallback
      (\ s a -> s{_pltcsrCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsScheduleRuns
         where
        type Rs ProjectsLocationsTransferConfigsScheduleRuns
             = ScheduleTransferRunsResponse
        type Scopes
               ProjectsLocationsTransferConfigsScheduleRuns
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsScheduleRuns'{..}
          = go _pltcsrParent _pltcsrXgafv _pltcsrUploadProtocol
              _pltcsrAccessToken
              _pltcsrUploadType
              _pltcsrCallback
              (Just AltJSON)
              _pltcsrPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsScheduleRunsResource)
                      mempty
