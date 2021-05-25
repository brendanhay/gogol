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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the particular transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Get
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsRunsGetResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsRunsGet
    , ProjectsLocationsTransferConfigsRunsGet

    -- * Request Lenses
    , pltcrgXgafv
    , pltcrgUploadProtocol
    , pltcrgAccessToken
    , pltcrgUploadType
    , pltcrgName
    , pltcrgCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.get@ method which the
-- 'ProjectsLocationsTransferConfigsRunsGet' request conforms to.
type ProjectsLocationsTransferConfigsRunsGetResource
     =
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
-- /See:/ 'projectsLocationsTransferConfigsRunsGet' smart constructor.
data ProjectsLocationsTransferConfigsRunsGet =
  ProjectsLocationsTransferConfigsRunsGet'
    { _pltcrgXgafv :: !(Maybe Xgafv)
    , _pltcrgUploadProtocol :: !(Maybe Text)
    , _pltcrgAccessToken :: !(Maybe Text)
    , _pltcrgUploadType :: !(Maybe Text)
    , _pltcrgName :: !Text
    , _pltcrgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsRunsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcrgXgafv'
--
-- * 'pltcrgUploadProtocol'
--
-- * 'pltcrgAccessToken'
--
-- * 'pltcrgUploadType'
--
-- * 'pltcrgName'
--
-- * 'pltcrgCallback'
projectsLocationsTransferConfigsRunsGet
    :: Text -- ^ 'pltcrgName'
    -> ProjectsLocationsTransferConfigsRunsGet
projectsLocationsTransferConfigsRunsGet pPltcrgName_ =
  ProjectsLocationsTransferConfigsRunsGet'
    { _pltcrgXgafv = Nothing
    , _pltcrgUploadProtocol = Nothing
    , _pltcrgAccessToken = Nothing
    , _pltcrgUploadType = Nothing
    , _pltcrgName = pPltcrgName_
    , _pltcrgCallback = Nothing
    }


-- | V1 error format.
pltcrgXgafv :: Lens' ProjectsLocationsTransferConfigsRunsGet (Maybe Xgafv)
pltcrgXgafv
  = lens _pltcrgXgafv (\ s a -> s{_pltcrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcrgUploadProtocol :: Lens' ProjectsLocationsTransferConfigsRunsGet (Maybe Text)
pltcrgUploadProtocol
  = lens _pltcrgUploadProtocol
      (\ s a -> s{_pltcrgUploadProtocol = a})

-- | OAuth access token.
pltcrgAccessToken :: Lens' ProjectsLocationsTransferConfigsRunsGet (Maybe Text)
pltcrgAccessToken
  = lens _pltcrgAccessToken
      (\ s a -> s{_pltcrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcrgUploadType :: Lens' ProjectsLocationsTransferConfigsRunsGet (Maybe Text)
pltcrgUploadType
  = lens _pltcrgUploadType
      (\ s a -> s{_pltcrgUploadType = a})

-- | Required. The field will contain name of the resource requested, for
-- example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
-- or
-- \`projects\/{project_id}\/locations\/{location_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
pltcrgName :: Lens' ProjectsLocationsTransferConfigsRunsGet Text
pltcrgName
  = lens _pltcrgName (\ s a -> s{_pltcrgName = a})

-- | JSONP
pltcrgCallback :: Lens' ProjectsLocationsTransferConfigsRunsGet (Maybe Text)
pltcrgCallback
  = lens _pltcrgCallback
      (\ s a -> s{_pltcrgCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsRunsGet
         where
        type Rs ProjectsLocationsTransferConfigsRunsGet =
             TransferRun
        type Scopes ProjectsLocationsTransferConfigsRunsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsTransferConfigsRunsGet'{..}
          = go _pltcrgName _pltcrgXgafv _pltcrgUploadProtocol
              _pltcrgAccessToken
              _pltcrgUploadType
              _pltcrgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsRunsGetResource)
                      mempty
