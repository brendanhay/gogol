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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.get@.
module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Get
    (
    -- * REST Resource
      ProjectsLocationsSnapshotsGetResource

    -- * Creating a Request
    , projectsLocationsSnapshotsGet
    , ProjectsLocationsSnapshotsGet

    -- * Request Lenses
    , plsgXgafv
    , plsgUploadProtocol
    , plsgLocation
    , plsgAccessToken
    , plsgUploadType
    , plsgProjectId
    , plsgCallback
    , plsgSnapshotId
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.snapshots.get@ method which the
-- 'ProjectsLocationsSnapshotsGet' request conforms to.
type ProjectsLocationsSnapshotsGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "snapshots" :>
                 Capture "snapshotId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Gets information about a snapshot.
--
-- /See:/ 'projectsLocationsSnapshotsGet' smart constructor.
data ProjectsLocationsSnapshotsGet =
  ProjectsLocationsSnapshotsGet'
    { _plsgXgafv :: !(Maybe Xgafv)
    , _plsgUploadProtocol :: !(Maybe Text)
    , _plsgLocation :: !Text
    , _plsgAccessToken :: !(Maybe Text)
    , _plsgUploadType :: !(Maybe Text)
    , _plsgProjectId :: !Text
    , _plsgCallback :: !(Maybe Text)
    , _plsgSnapshotId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSnapshotsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgXgafv'
--
-- * 'plsgUploadProtocol'
--
-- * 'plsgLocation'
--
-- * 'plsgAccessToken'
--
-- * 'plsgUploadType'
--
-- * 'plsgProjectId'
--
-- * 'plsgCallback'
--
-- * 'plsgSnapshotId'
projectsLocationsSnapshotsGet
    :: Text -- ^ 'plsgLocation'
    -> Text -- ^ 'plsgProjectId'
    -> Text -- ^ 'plsgSnapshotId'
    -> ProjectsLocationsSnapshotsGet
projectsLocationsSnapshotsGet pPlsgLocation_ pPlsgProjectId_ pPlsgSnapshotId_ =
  ProjectsLocationsSnapshotsGet'
    { _plsgXgafv = Nothing
    , _plsgUploadProtocol = Nothing
    , _plsgLocation = pPlsgLocation_
    , _plsgAccessToken = Nothing
    , _plsgUploadType = Nothing
    , _plsgProjectId = pPlsgProjectId_
    , _plsgCallback = Nothing
    , _plsgSnapshotId = pPlsgSnapshotId_
    }


-- | V1 error format.
plsgXgafv :: Lens' ProjectsLocationsSnapshotsGet (Maybe Xgafv)
plsgXgafv
  = lens _plsgXgafv (\ s a -> s{_plsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsgUploadProtocol :: Lens' ProjectsLocationsSnapshotsGet (Maybe Text)
plsgUploadProtocol
  = lens _plsgUploadProtocol
      (\ s a -> s{_plsgUploadProtocol = a})

-- | The location that contains this snapshot.
plsgLocation :: Lens' ProjectsLocationsSnapshotsGet Text
plsgLocation
  = lens _plsgLocation (\ s a -> s{_plsgLocation = a})

-- | OAuth access token.
plsgAccessToken :: Lens' ProjectsLocationsSnapshotsGet (Maybe Text)
plsgAccessToken
  = lens _plsgAccessToken
      (\ s a -> s{_plsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsgUploadType :: Lens' ProjectsLocationsSnapshotsGet (Maybe Text)
plsgUploadType
  = lens _plsgUploadType
      (\ s a -> s{_plsgUploadType = a})

-- | The ID of the Cloud Platform project that the snapshot belongs to.
plsgProjectId :: Lens' ProjectsLocationsSnapshotsGet Text
plsgProjectId
  = lens _plsgProjectId
      (\ s a -> s{_plsgProjectId = a})

-- | JSONP
plsgCallback :: Lens' ProjectsLocationsSnapshotsGet (Maybe Text)
plsgCallback
  = lens _plsgCallback (\ s a -> s{_plsgCallback = a})

-- | The ID of the snapshot.
plsgSnapshotId :: Lens' ProjectsLocationsSnapshotsGet Text
plsgSnapshotId
  = lens _plsgSnapshotId
      (\ s a -> s{_plsgSnapshotId = a})

instance GoogleRequest ProjectsLocationsSnapshotsGet
         where
        type Rs ProjectsLocationsSnapshotsGet = Snapshot
        type Scopes ProjectsLocationsSnapshotsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsSnapshotsGet'{..}
          = go _plsgProjectId _plsgLocation _plsgSnapshotId
              _plsgXgafv
              _plsgUploadProtocol
              _plsgAccessToken
              _plsgUploadType
              _plsgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSnapshotsGetResource)
                      mempty
