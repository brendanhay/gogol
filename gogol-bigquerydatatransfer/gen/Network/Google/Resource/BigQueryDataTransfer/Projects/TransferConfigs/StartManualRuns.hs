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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.StartManualRuns
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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.startManualRuns@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.StartManualRuns
    (
    -- * REST Resource
      ProjectsTransferConfigsStartManualRunsResource

    -- * Creating a Request
    , projectsTransferConfigsStartManualRuns
    , ProjectsTransferConfigsStartManualRuns

    -- * Request Lenses
    , ptcsmrParent
    , ptcsmrXgafv
    , ptcsmrUploadProtocol
    , ptcsmrAccessToken
    , ptcsmrUploadType
    , ptcsmrPayload
    , ptcsmrCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.startManualRuns@ method which the
-- 'ProjectsTransferConfigsStartManualRuns' request conforms to.
type ProjectsTransferConfigsStartManualRunsResource =
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
-- /See:/ 'projectsTransferConfigsStartManualRuns' smart constructor.
data ProjectsTransferConfigsStartManualRuns =
  ProjectsTransferConfigsStartManualRuns'
    { _ptcsmrParent         :: !Text
    , _ptcsmrXgafv          :: !(Maybe Xgafv)
    , _ptcsmrUploadProtocol :: !(Maybe Text)
    , _ptcsmrAccessToken    :: !(Maybe Text)
    , _ptcsmrUploadType     :: !(Maybe Text)
    , _ptcsmrPayload        :: !StartManualTransferRunsRequest
    , _ptcsmrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsStartManualRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcsmrParent'
--
-- * 'ptcsmrXgafv'
--
-- * 'ptcsmrUploadProtocol'
--
-- * 'ptcsmrAccessToken'
--
-- * 'ptcsmrUploadType'
--
-- * 'ptcsmrPayload'
--
-- * 'ptcsmrCallback'
projectsTransferConfigsStartManualRuns
    :: Text -- ^ 'ptcsmrParent'
    -> StartManualTransferRunsRequest -- ^ 'ptcsmrPayload'
    -> ProjectsTransferConfigsStartManualRuns
projectsTransferConfigsStartManualRuns pPtcsmrParent_ pPtcsmrPayload_ =
  ProjectsTransferConfigsStartManualRuns'
    { _ptcsmrParent = pPtcsmrParent_
    , _ptcsmrXgafv = Nothing
    , _ptcsmrUploadProtocol = Nothing
    , _ptcsmrAccessToken = Nothing
    , _ptcsmrUploadType = Nothing
    , _ptcsmrPayload = pPtcsmrPayload_
    , _ptcsmrCallback = Nothing
    }


-- | Transfer configuration name in the form:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\`.
ptcsmrParent :: Lens' ProjectsTransferConfigsStartManualRuns Text
ptcsmrParent
  = lens _ptcsmrParent (\ s a -> s{_ptcsmrParent = a})

-- | V1 error format.
ptcsmrXgafv :: Lens' ProjectsTransferConfigsStartManualRuns (Maybe Xgafv)
ptcsmrXgafv
  = lens _ptcsmrXgafv (\ s a -> s{_ptcsmrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcsmrUploadProtocol :: Lens' ProjectsTransferConfigsStartManualRuns (Maybe Text)
ptcsmrUploadProtocol
  = lens _ptcsmrUploadProtocol
      (\ s a -> s{_ptcsmrUploadProtocol = a})

-- | OAuth access token.
ptcsmrAccessToken :: Lens' ProjectsTransferConfigsStartManualRuns (Maybe Text)
ptcsmrAccessToken
  = lens _ptcsmrAccessToken
      (\ s a -> s{_ptcsmrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcsmrUploadType :: Lens' ProjectsTransferConfigsStartManualRuns (Maybe Text)
ptcsmrUploadType
  = lens _ptcsmrUploadType
      (\ s a -> s{_ptcsmrUploadType = a})

-- | Multipart request metadata.
ptcsmrPayload :: Lens' ProjectsTransferConfigsStartManualRuns StartManualTransferRunsRequest
ptcsmrPayload
  = lens _ptcsmrPayload
      (\ s a -> s{_ptcsmrPayload = a})

-- | JSONP
ptcsmrCallback :: Lens' ProjectsTransferConfigsStartManualRuns (Maybe Text)
ptcsmrCallback
  = lens _ptcsmrCallback
      (\ s a -> s{_ptcsmrCallback = a})

instance GoogleRequest
           ProjectsTransferConfigsStartManualRuns
         where
        type Rs ProjectsTransferConfigsStartManualRuns =
             StartManualTransferRunsResponse
        type Scopes ProjectsTransferConfigsStartManualRuns =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsTransferConfigsStartManualRuns'{..}
          = go _ptcsmrParent _ptcsmrXgafv _ptcsmrUploadProtocol
              _ptcsmrAccessToken
              _ptcsmrUploadType
              _ptcsmrCallback
              (Just AltJSON)
              _ptcsmrPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsStartManualRunsResource)
                      mempty
