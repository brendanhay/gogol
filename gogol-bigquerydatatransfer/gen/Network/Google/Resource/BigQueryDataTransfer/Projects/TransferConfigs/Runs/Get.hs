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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the particular transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.runs.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Runs.Get
    (
    -- * REST Resource
      ProjectsTransferConfigsRunsGetResource

    -- * Creating a Request
    , projectsTransferConfigsRunsGet
    , ProjectsTransferConfigsRunsGet

    -- * Request Lenses
    , ptcrgXgafv
    , ptcrgUploadProtocol
    , ptcrgAccessToken
    , ptcrgUploadType
    , ptcrgName
    , ptcrgCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.runs.get@ method which the
-- 'ProjectsTransferConfigsRunsGet' request conforms to.
type ProjectsTransferConfigsRunsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TransferRun

-- | Returns information about the particular transfer run.
--
-- /See:/ 'projectsTransferConfigsRunsGet' smart constructor.
data ProjectsTransferConfigsRunsGet =
  ProjectsTransferConfigsRunsGet'
    { _ptcrgXgafv :: !(Maybe Xgafv)
    , _ptcrgUploadProtocol :: !(Maybe Text)
    , _ptcrgAccessToken :: !(Maybe Text)
    , _ptcrgUploadType :: !(Maybe Text)
    , _ptcrgName :: !Text
    , _ptcrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsRunsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcrgXgafv'
--
-- * 'ptcrgUploadProtocol'
--
-- * 'ptcrgAccessToken'
--
-- * 'ptcrgUploadType'
--
-- * 'ptcrgName'
--
-- * 'ptcrgCallback'
projectsTransferConfigsRunsGet
    :: Text -- ^ 'ptcrgName'
    -> ProjectsTransferConfigsRunsGet
projectsTransferConfigsRunsGet pPtcrgName_ =
  ProjectsTransferConfigsRunsGet'
    { _ptcrgXgafv = Nothing
    , _ptcrgUploadProtocol = Nothing
    , _ptcrgAccessToken = Nothing
    , _ptcrgUploadType = Nothing
    , _ptcrgName = pPtcrgName_
    , _ptcrgCallback = Nothing
    }


-- | V1 error format.
ptcrgXgafv :: Lens' ProjectsTransferConfigsRunsGet (Maybe Xgafv)
ptcrgXgafv
  = lens _ptcrgXgafv (\ s a -> s{_ptcrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcrgUploadProtocol :: Lens' ProjectsTransferConfigsRunsGet (Maybe Text)
ptcrgUploadProtocol
  = lens _ptcrgUploadProtocol
      (\ s a -> s{_ptcrgUploadProtocol = a})

-- | OAuth access token.
ptcrgAccessToken :: Lens' ProjectsTransferConfigsRunsGet (Maybe Text)
ptcrgAccessToken
  = lens _ptcrgAccessToken
      (\ s a -> s{_ptcrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcrgUploadType :: Lens' ProjectsTransferConfigsRunsGet (Maybe Text)
ptcrgUploadType
  = lens _ptcrgUploadType
      (\ s a -> s{_ptcrgUploadType = a})

-- | Required. The field will contain name of the resource requested, for
-- example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
-- or
-- \`projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
ptcrgName :: Lens' ProjectsTransferConfigsRunsGet Text
ptcrgName
  = lens _ptcrgName (\ s a -> s{_ptcrgName = a})

-- | JSONP
ptcrgCallback :: Lens' ProjectsTransferConfigsRunsGet (Maybe Text)
ptcrgCallback
  = lens _ptcrgCallback
      (\ s a -> s{_ptcrgCallback = a})

instance GoogleRequest ProjectsTransferConfigsRunsGet
         where
        type Rs ProjectsTransferConfigsRunsGet = TransferRun
        type Scopes ProjectsTransferConfigsRunsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsTransferConfigsRunsGet'{..}
          = go _ptcrgName _ptcrgXgafv _ptcrgUploadProtocol
              _ptcrgAccessToken
              _ptcrgUploadType
              _ptcrgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsRunsGetResource)
                      mempty
