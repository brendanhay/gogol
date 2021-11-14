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
-- Module      : Network.Google.Resource.Dataflow.Projects.Snapshots.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.snapshots.list@.
module Network.Google.Resource.Dataflow.Projects.Snapshots.List
    (
    -- * REST Resource
      ProjectsSnapshotsListResource

    -- * Creating a Request
    , projectsSnapshotsList
    , ProjectsSnapshotsList

    -- * Request Lenses
    , pslXgafv
    , pslJobId
    , pslUploadProtocol
    , pslLocation
    , pslAccessToken
    , pslUploadType
    , pslProjectId
    , pslCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.snapshots.list@ method which the
-- 'ProjectsSnapshotsList' request conforms to.
type ProjectsSnapshotsListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "snapshots" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "jobId" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "location" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'projectsSnapshotsList' smart constructor.
data ProjectsSnapshotsList =
  ProjectsSnapshotsList'
    { _pslXgafv :: !(Maybe Xgafv)
    , _pslJobId :: !(Maybe Text)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslLocation :: !(Maybe Text)
    , _pslAccessToken :: !(Maybe Text)
    , _pslUploadType :: !(Maybe Text)
    , _pslProjectId :: !Text
    , _pslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslJobId'
--
-- * 'pslUploadProtocol'
--
-- * 'pslLocation'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslProjectId'
--
-- * 'pslCallback'
projectsSnapshotsList
    :: Text -- ^ 'pslProjectId'
    -> ProjectsSnapshotsList
projectsSnapshotsList pPslProjectId_ =
  ProjectsSnapshotsList'
    { _pslXgafv = Nothing
    , _pslJobId = Nothing
    , _pslUploadProtocol = Nothing
    , _pslLocation = Nothing
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslProjectId = pPslProjectId_
    , _pslCallback = Nothing
    }


-- | V1 error format.
pslXgafv :: Lens' ProjectsSnapshotsList (Maybe Xgafv)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | If specified, list snapshots created from this job.
pslJobId :: Lens' ProjectsSnapshotsList (Maybe Text)
pslJobId = lens _pslJobId (\ s a -> s{_pslJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSnapshotsList (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | The location to list snapshots in.
pslLocation :: Lens' ProjectsSnapshotsList (Maybe Text)
pslLocation
  = lens _pslLocation (\ s a -> s{_pslLocation = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSnapshotsList (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSnapshotsList (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | The project ID to list snapshots for.
pslProjectId :: Lens' ProjectsSnapshotsList Text
pslProjectId
  = lens _pslProjectId (\ s a -> s{_pslProjectId = a})

-- | JSONP
pslCallback :: Lens' ProjectsSnapshotsList (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSnapshotsList where
        type Rs ProjectsSnapshotsList = ListSnapshotsResponse
        type Scopes ProjectsSnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsSnapshotsList'{..}
          = go _pslProjectId _pslXgafv _pslJobId
              _pslUploadProtocol
              _pslLocation
              _pslAccessToken
              _pslUploadType
              _pslCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSnapshotsListResource)
                      mempty
