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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.snapshots.delete@.
module Network.Google.Resource.Dataflow.Projects.Locations.Snapshots.Delete
    (
    -- * REST Resource
      ProjectsLocationsSnapshotsDeleteResource

    -- * Creating a Request
    , projectsLocationsSnapshotsDelete
    , ProjectsLocationsSnapshotsDelete

    -- * Request Lenses
    , plsdXgafv
    , plsdUploadProtocol
    , plsdLocation
    , plsdAccessToken
    , plsdUploadType
    , plsdProjectId
    , plsdCallback
    , plsdSnapshotId
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.snapshots.delete@ method which the
-- 'ProjectsLocationsSnapshotsDelete' request conforms to.
type ProjectsLocationsSnapshotsDeleteResource =
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
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] DeleteSnapshotResponse

-- | Deletes a snapshot.
--
-- /See:/ 'projectsLocationsSnapshotsDelete' smart constructor.
data ProjectsLocationsSnapshotsDelete =
  ProjectsLocationsSnapshotsDelete'
    { _plsdXgafv :: !(Maybe Xgafv)
    , _plsdUploadProtocol :: !(Maybe Text)
    , _plsdLocation :: !Text
    , _plsdAccessToken :: !(Maybe Text)
    , _plsdUploadType :: !(Maybe Text)
    , _plsdProjectId :: !Text
    , _plsdCallback :: !(Maybe Text)
    , _plsdSnapshotId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSnapshotsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsdXgafv'
--
-- * 'plsdUploadProtocol'
--
-- * 'plsdLocation'
--
-- * 'plsdAccessToken'
--
-- * 'plsdUploadType'
--
-- * 'plsdProjectId'
--
-- * 'plsdCallback'
--
-- * 'plsdSnapshotId'
projectsLocationsSnapshotsDelete
    :: Text -- ^ 'plsdLocation'
    -> Text -- ^ 'plsdProjectId'
    -> Text -- ^ 'plsdSnapshotId'
    -> ProjectsLocationsSnapshotsDelete
projectsLocationsSnapshotsDelete pPlsdLocation_ pPlsdProjectId_ pPlsdSnapshotId_ =
  ProjectsLocationsSnapshotsDelete'
    { _plsdXgafv = Nothing
    , _plsdUploadProtocol = Nothing
    , _plsdLocation = pPlsdLocation_
    , _plsdAccessToken = Nothing
    , _plsdUploadType = Nothing
    , _plsdProjectId = pPlsdProjectId_
    , _plsdCallback = Nothing
    , _plsdSnapshotId = pPlsdSnapshotId_
    }


-- | V1 error format.
plsdXgafv :: Lens' ProjectsLocationsSnapshotsDelete (Maybe Xgafv)
plsdXgafv
  = lens _plsdXgafv (\ s a -> s{_plsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsdUploadProtocol :: Lens' ProjectsLocationsSnapshotsDelete (Maybe Text)
plsdUploadProtocol
  = lens _plsdUploadProtocol
      (\ s a -> s{_plsdUploadProtocol = a})

-- | The location that contains this snapshot.
plsdLocation :: Lens' ProjectsLocationsSnapshotsDelete Text
plsdLocation
  = lens _plsdLocation (\ s a -> s{_plsdLocation = a})

-- | OAuth access token.
plsdAccessToken :: Lens' ProjectsLocationsSnapshotsDelete (Maybe Text)
plsdAccessToken
  = lens _plsdAccessToken
      (\ s a -> s{_plsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsdUploadType :: Lens' ProjectsLocationsSnapshotsDelete (Maybe Text)
plsdUploadType
  = lens _plsdUploadType
      (\ s a -> s{_plsdUploadType = a})

-- | The ID of the Cloud Platform project that the snapshot belongs to.
plsdProjectId :: Lens' ProjectsLocationsSnapshotsDelete Text
plsdProjectId
  = lens _plsdProjectId
      (\ s a -> s{_plsdProjectId = a})

-- | JSONP
plsdCallback :: Lens' ProjectsLocationsSnapshotsDelete (Maybe Text)
plsdCallback
  = lens _plsdCallback (\ s a -> s{_plsdCallback = a})

-- | The ID of the snapshot.
plsdSnapshotId :: Lens' ProjectsLocationsSnapshotsDelete Text
plsdSnapshotId
  = lens _plsdSnapshotId
      (\ s a -> s{_plsdSnapshotId = a})

instance GoogleRequest
           ProjectsLocationsSnapshotsDelete
         where
        type Rs ProjectsLocationsSnapshotsDelete =
             DeleteSnapshotResponse
        type Scopes ProjectsLocationsSnapshotsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsSnapshotsDelete'{..}
          = go _plsdProjectId _plsdLocation _plsdSnapshotId
              _plsdXgafv
              _plsdUploadProtocol
              _plsdAccessToken
              _plsdUploadType
              _plsdCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSnapshotsDeleteResource)
                      mempty
