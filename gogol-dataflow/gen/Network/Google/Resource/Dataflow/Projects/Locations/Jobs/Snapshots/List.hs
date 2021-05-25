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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshots.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.snapshots.list@.
module Network.Google.Resource.Dataflow.Projects.Locations.Jobs.Snapshots.List
    (
    -- * REST Resource
      ProjectsLocationsJobsSnapshotsListResource

    -- * Creating a Request
    , projectsLocationsJobsSnapshotsList
    , ProjectsLocationsJobsSnapshotsList

    -- * Request Lenses
    , pljslXgafv
    , pljslJobId
    , pljslUploadProtocol
    , pljslLocation
    , pljslAccessToken
    , pljslUploadType
    , pljslProjectId
    , pljslCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.jobs.snapshots.list@ method which the
-- 'ProjectsLocationsJobsSnapshotsList' request conforms to.
type ProjectsLocationsJobsSnapshotsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "jobs" :>
                 Capture "jobId" Text :>
                   "snapshots" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'projectsLocationsJobsSnapshotsList' smart constructor.
data ProjectsLocationsJobsSnapshotsList =
  ProjectsLocationsJobsSnapshotsList'
    { _pljslXgafv :: !(Maybe Xgafv)
    , _pljslJobId :: !Text
    , _pljslUploadProtocol :: !(Maybe Text)
    , _pljslLocation :: !Text
    , _pljslAccessToken :: !(Maybe Text)
    , _pljslUploadType :: !(Maybe Text)
    , _pljslProjectId :: !Text
    , _pljslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobsSnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljslXgafv'
--
-- * 'pljslJobId'
--
-- * 'pljslUploadProtocol'
--
-- * 'pljslLocation'
--
-- * 'pljslAccessToken'
--
-- * 'pljslUploadType'
--
-- * 'pljslProjectId'
--
-- * 'pljslCallback'
projectsLocationsJobsSnapshotsList
    :: Text -- ^ 'pljslJobId'
    -> Text -- ^ 'pljslLocation'
    -> Text -- ^ 'pljslProjectId'
    -> ProjectsLocationsJobsSnapshotsList
projectsLocationsJobsSnapshotsList pPljslJobId_ pPljslLocation_ pPljslProjectId_ =
  ProjectsLocationsJobsSnapshotsList'
    { _pljslXgafv = Nothing
    , _pljslJobId = pPljslJobId_
    , _pljslUploadProtocol = Nothing
    , _pljslLocation = pPljslLocation_
    , _pljslAccessToken = Nothing
    , _pljslUploadType = Nothing
    , _pljslProjectId = pPljslProjectId_
    , _pljslCallback = Nothing
    }


-- | V1 error format.
pljslXgafv :: Lens' ProjectsLocationsJobsSnapshotsList (Maybe Xgafv)
pljslXgafv
  = lens _pljslXgafv (\ s a -> s{_pljslXgafv = a})

-- | If specified, list snapshots created from this job.
pljslJobId :: Lens' ProjectsLocationsJobsSnapshotsList Text
pljslJobId
  = lens _pljslJobId (\ s a -> s{_pljslJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljslUploadProtocol :: Lens' ProjectsLocationsJobsSnapshotsList (Maybe Text)
pljslUploadProtocol
  = lens _pljslUploadProtocol
      (\ s a -> s{_pljslUploadProtocol = a})

-- | The location to list snapshots in.
pljslLocation :: Lens' ProjectsLocationsJobsSnapshotsList Text
pljslLocation
  = lens _pljslLocation
      (\ s a -> s{_pljslLocation = a})

-- | OAuth access token.
pljslAccessToken :: Lens' ProjectsLocationsJobsSnapshotsList (Maybe Text)
pljslAccessToken
  = lens _pljslAccessToken
      (\ s a -> s{_pljslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljslUploadType :: Lens' ProjectsLocationsJobsSnapshotsList (Maybe Text)
pljslUploadType
  = lens _pljslUploadType
      (\ s a -> s{_pljslUploadType = a})

-- | The project ID to list snapshots for.
pljslProjectId :: Lens' ProjectsLocationsJobsSnapshotsList Text
pljslProjectId
  = lens _pljslProjectId
      (\ s a -> s{_pljslProjectId = a})

-- | JSONP
pljslCallback :: Lens' ProjectsLocationsJobsSnapshotsList (Maybe Text)
pljslCallback
  = lens _pljslCallback
      (\ s a -> s{_pljslCallback = a})

instance GoogleRequest
           ProjectsLocationsJobsSnapshotsList
         where
        type Rs ProjectsLocationsJobsSnapshotsList =
             ListSnapshotsResponse
        type Scopes ProjectsLocationsJobsSnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsJobsSnapshotsList'{..}
          = go _pljslProjectId _pljslLocation _pljslJobId
              _pljslXgafv
              _pljslUploadProtocol
              _pljslAccessToken
              _pljslUploadType
              _pljslCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobsSnapshotsListResource)
                      mempty
