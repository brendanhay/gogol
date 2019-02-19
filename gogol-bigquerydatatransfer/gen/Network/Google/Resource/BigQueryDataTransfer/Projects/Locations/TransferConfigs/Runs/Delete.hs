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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified transfer run.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.runs.delete@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Runs.Delete
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsRunsDeleteResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsRunsDelete
    , ProjectsLocationsTransferConfigsRunsDelete

    -- * Request Lenses
    , pltcrdXgafv
    , pltcrdUploadProtocol
    , pltcrdAccessToken
    , pltcrdUploadType
    , pltcrdName
    , pltcrdCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.runs.delete@ method which the
-- 'ProjectsLocationsTransferConfigsRunsDelete' request conforms to.
type ProjectsLocationsTransferConfigsRunsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified transfer run.
--
-- /See:/ 'projectsLocationsTransferConfigsRunsDelete' smart constructor.
data ProjectsLocationsTransferConfigsRunsDelete =
  ProjectsLocationsTransferConfigsRunsDelete'
    { _pltcrdXgafv          :: !(Maybe Xgafv)
    , _pltcrdUploadProtocol :: !(Maybe Text)
    , _pltcrdAccessToken    :: !(Maybe Text)
    , _pltcrdUploadType     :: !(Maybe Text)
    , _pltcrdName           :: !Text
    , _pltcrdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsTransferConfigsRunsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcrdXgafv'
--
-- * 'pltcrdUploadProtocol'
--
-- * 'pltcrdAccessToken'
--
-- * 'pltcrdUploadType'
--
-- * 'pltcrdName'
--
-- * 'pltcrdCallback'
projectsLocationsTransferConfigsRunsDelete
    :: Text -- ^ 'pltcrdName'
    -> ProjectsLocationsTransferConfigsRunsDelete
projectsLocationsTransferConfigsRunsDelete pPltcrdName_ =
  ProjectsLocationsTransferConfigsRunsDelete'
    { _pltcrdXgafv = Nothing
    , _pltcrdUploadProtocol = Nothing
    , _pltcrdAccessToken = Nothing
    , _pltcrdUploadType = Nothing
    , _pltcrdName = pPltcrdName_
    , _pltcrdCallback = Nothing
    }

-- | V1 error format.
pltcrdXgafv :: Lens' ProjectsLocationsTransferConfigsRunsDelete (Maybe Xgafv)
pltcrdXgafv
  = lens _pltcrdXgafv (\ s a -> s{_pltcrdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcrdUploadProtocol :: Lens' ProjectsLocationsTransferConfigsRunsDelete (Maybe Text)
pltcrdUploadProtocol
  = lens _pltcrdUploadProtocol
      (\ s a -> s{_pltcrdUploadProtocol = a})

-- | OAuth access token.
pltcrdAccessToken :: Lens' ProjectsLocationsTransferConfigsRunsDelete (Maybe Text)
pltcrdAccessToken
  = lens _pltcrdAccessToken
      (\ s a -> s{_pltcrdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcrdUploadType :: Lens' ProjectsLocationsTransferConfigsRunsDelete (Maybe Text)
pltcrdUploadType
  = lens _pltcrdUploadType
      (\ s a -> s{_pltcrdUploadType = a})

-- | The field will contain name of the resource requested, for example:
-- \`projects\/{project_id}\/transferConfigs\/{config_id}\/runs\/{run_id}\`
pltcrdName :: Lens' ProjectsLocationsTransferConfigsRunsDelete Text
pltcrdName
  = lens _pltcrdName (\ s a -> s{_pltcrdName = a})

-- | JSONP
pltcrdCallback :: Lens' ProjectsLocationsTransferConfigsRunsDelete (Maybe Text)
pltcrdCallback
  = lens _pltcrdCallback
      (\ s a -> s{_pltcrdCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsRunsDelete
         where
        type Rs ProjectsLocationsTransferConfigsRunsDelete =
             Empty
        type Scopes
               ProjectsLocationsTransferConfigsRunsDelete
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsRunsDelete'{..}
          = go _pltcrdName _pltcrdXgafv _pltcrdUploadProtocol
              _pltcrdAccessToken
              _pltcrdUploadType
              _pltcrdCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsTransferConfigsRunsDeleteResource)
                      mempty
