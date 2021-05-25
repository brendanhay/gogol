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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.list@.
module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.List
    (
    -- * REST Resource
      ProjectsLocationsSnapshotsListResource

    -- * Creating a Request
    , projectsLocationsSnapshotsList
    , ProjectsLocationsSnapshotsList

    -- * Request Lenses
    , plslXgafv
    , plslJobId
    , plslUploadProtocol
    , plslLocation
    , plslAccessToken
    , plslUploadType
    , plslProjectId
    , plslCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.snapshots.list@ method which the
-- 'ProjectsLocationsSnapshotsList' request conforms to.
type ProjectsLocationsSnapshotsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "snapshots" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "jobId" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'projectsLocationsSnapshotsList' smart constructor.
data ProjectsLocationsSnapshotsList =
  ProjectsLocationsSnapshotsList'
    { _plslXgafv :: !(Maybe Xgafv)
    , _plslJobId :: !(Maybe Text)
    , _plslUploadProtocol :: !(Maybe Text)
    , _plslLocation :: !Text
    , _plslAccessToken :: !(Maybe Text)
    , _plslUploadType :: !(Maybe Text)
    , _plslProjectId :: !Text
    , _plslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslXgafv'
--
-- * 'plslJobId'
--
-- * 'plslUploadProtocol'
--
-- * 'plslLocation'
--
-- * 'plslAccessToken'
--
-- * 'plslUploadType'
--
-- * 'plslProjectId'
--
-- * 'plslCallback'
projectsLocationsSnapshotsList
    :: Text -- ^ 'plslLocation'
    -> Text -- ^ 'plslProjectId'
    -> ProjectsLocationsSnapshotsList
projectsLocationsSnapshotsList pPlslLocation_ pPlslProjectId_ =
  ProjectsLocationsSnapshotsList'
    { _plslXgafv = Nothing
    , _plslJobId = Nothing
    , _plslUploadProtocol = Nothing
    , _plslLocation = pPlslLocation_
    , _plslAccessToken = Nothing
    , _plslUploadType = Nothing
    , _plslProjectId = pPlslProjectId_
    , _plslCallback = Nothing
    }


-- | V1 error format.
plslXgafv :: Lens' ProjectsLocationsSnapshotsList (Maybe Xgafv)
plslXgafv
  = lens _plslXgafv (\ s a -> s{_plslXgafv = a})

-- | If specified, list snapshots created from this job.
plslJobId :: Lens' ProjectsLocationsSnapshotsList (Maybe Text)
plslJobId
  = lens _plslJobId (\ s a -> s{_plslJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plslUploadProtocol :: Lens' ProjectsLocationsSnapshotsList (Maybe Text)
plslUploadProtocol
  = lens _plslUploadProtocol
      (\ s a -> s{_plslUploadProtocol = a})

-- | The location to list snapshots in.
plslLocation :: Lens' ProjectsLocationsSnapshotsList Text
plslLocation
  = lens _plslLocation (\ s a -> s{_plslLocation = a})

-- | OAuth access token.
plslAccessToken :: Lens' ProjectsLocationsSnapshotsList (Maybe Text)
plslAccessToken
  = lens _plslAccessToken
      (\ s a -> s{_plslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plslUploadType :: Lens' ProjectsLocationsSnapshotsList (Maybe Text)
plslUploadType
  = lens _plslUploadType
      (\ s a -> s{_plslUploadType = a})

-- | The project ID to list snapshots for.
plslProjectId :: Lens' ProjectsLocationsSnapshotsList Text
plslProjectId
  = lens _plslProjectId
      (\ s a -> s{_plslProjectId = a})

-- | JSONP
plslCallback :: Lens' ProjectsLocationsSnapshotsList (Maybe Text)
plslCallback
  = lens _plslCallback (\ s a -> s{_plslCallback = a})

instance GoogleRequest ProjectsLocationsSnapshotsList
         where
        type Rs ProjectsLocationsSnapshotsList =
             ListSnapshotsResponse
        type Scopes ProjectsLocationsSnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsSnapshotsList'{..}
          = go _plslProjectId _plslLocation _plslXgafv
              _plslJobId
              _plslUploadProtocol
              _plslAccessToken
              _plslUploadType
              _plslCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSnapshotsListResource)
                      mempty
