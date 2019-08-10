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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.StartManualRuns
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start manual transfer runs to be executed now with schedule_time equal
-- to current time. The transfer runs can be created for a time range where
-- the run_time is between start_time (inclusive) and end_time (exclusive),
-- or for a specific run_time.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.StartManualRuns
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsStartManualRunsResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsStartManualRuns
    , ProjectsLocationsTransferConfigsStartManualRuns

    -- * Request Lenses
    , pltcsmrParent
    , pltcsmrXgafv
    , pltcsmrUploadProtocol
    , pltcsmrAccessToken
    , pltcsmrUploadType
    , pltcsmrPayload
    , pltcsmrCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns@ method which the
-- 'ProjectsLocationsTransferConfigsStartManualRuns' request conforms to.
type ProjectsLocationsTransferConfigsStartManualRunsResource
     =
     "v1" :>
       CaptureMode "parent" "startManualRuns" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StartManualTransferRunsRequest :>
                       Post '[JSON] StartManualTransferRunsResponse

-- | Start manual transfer runs to be executed now with schedule_time equal
-- to current time. The transfer runs can be created for a time range where
-- the run_time is between start_time (inclusive) and end_time (exclusive),
-- or for a specific run_time.
--
-- /See:/ 'projectsLocationsTransferConfigsStartManualRuns' smart constructor.
data ProjectsLocationsTransferConfigsStartManualRuns =
  ProjectsLocationsTransferConfigsStartManualRuns'
    { _pltcsmrParent         :: !Text
    , _pltcsmrXgafv          :: !(Maybe Xgafv)
    , _pltcsmrUploadProtocol :: !(Maybe Text)
    , _pltcsmrAccessToken    :: !(Maybe Text)
    , _pltcsmrUploadType     :: !(Maybe Text)
    , _pltcsmrPayload        :: !StartManualTransferRunsRequest
    , _pltcsmrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsStartManualRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcsmrParent'
--
-- * 'pltcsmrXgafv'
--
-- * 'pltcsmrUploadProtocol'
--
-- * 'pltcsmrAccessToken'
--
-- * 'pltcsmrUploadType'
--
-- * 'pltcsmrPayload'
--
-- * 'pltcsmrCallback'
projectsLocationsTransferConfigsStartManualRuns
    :: Text -- ^ 'pltcsmrParent'
    -> StartManualTransferRunsRequest -- ^ 'pltcsmrPayload'
    -> ProjectsLocationsTransferConfigsStartManualRuns
projectsLocationsTransferConfigsStartManualRuns pPltcsmrParent_ pPltcsmrPayload_ =
  ProjectsLocationsTransferConfigsStartManualRuns'
    { _pltcsmrParent = pPltcsmrParent_
    , _pltcsmrXgafv = Nothing
    , _pltcsmrUploadProtocol = Nothing
    , _pltcsmrAccessToken = Nothing
    , _pltcsmrUploadType = Nothing
    , _pltcsmrPayload = pPltcsmrPayload_
    , _pltcsmrCallback = Nothing
    }


-- | Transfer configuration name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
pltcsmrParent :: Lens' ProjectsLocationsTransferConfigsStartManualRuns Text
pltcsmrParent
  = lens _pltcsmrParent
      (\ s a -> s{_pltcsmrParent = a})

-- | V1 error format.
pltcsmrXgafv :: Lens' ProjectsLocationsTransferConfigsStartManualRuns (Maybe Xgafv)
pltcsmrXgafv
  = lens _pltcsmrXgafv (\ s a -> s{_pltcsmrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcsmrUploadProtocol :: Lens' ProjectsLocationsTransferConfigsStartManualRuns (Maybe Text)
pltcsmrUploadProtocol
  = lens _pltcsmrUploadProtocol
      (\ s a -> s{_pltcsmrUploadProtocol = a})

-- | OAuth access token.
pltcsmrAccessToken :: Lens' ProjectsLocationsTransferConfigsStartManualRuns (Maybe Text)
pltcsmrAccessToken
  = lens _pltcsmrAccessToken
      (\ s a -> s{_pltcsmrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcsmrUploadType :: Lens' ProjectsLocationsTransferConfigsStartManualRuns (Maybe Text)
pltcsmrUploadType
  = lens _pltcsmrUploadType
      (\ s a -> s{_pltcsmrUploadType = a})

-- | Multipart request metadata.
pltcsmrPayload :: Lens' ProjectsLocationsTransferConfigsStartManualRuns StartManualTransferRunsRequest
pltcsmrPayload
  = lens _pltcsmrPayload
      (\ s a -> s{_pltcsmrPayload = a})

-- | JSONP
pltcsmrCallback :: Lens' ProjectsLocationsTransferConfigsStartManualRuns (Maybe Text)
pltcsmrCallback
  = lens _pltcsmrCallback
      (\ s a -> s{_pltcsmrCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsStartManualRuns
         where
        type Rs
               ProjectsLocationsTransferConfigsStartManualRuns
             = StartManualTransferRunsResponse
        type Scopes
               ProjectsLocationsTransferConfigsStartManualRuns
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsStartManualRuns'{..}
          = go _pltcsmrParent _pltcsmrXgafv
              _pltcsmrUploadProtocol
              _pltcsmrAccessToken
              _pltcsmrUploadType
              _pltcsmrCallback
              (Just AltJSON)
              _pltcsmrPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsStartManualRunsResource)
                      mempty
