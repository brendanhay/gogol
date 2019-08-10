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
-- Module      : Network.Google.Resource.Dataflow.Projects.Snapshots.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.snapshots.get@.
module Network.Google.Resource.Dataflow.Projects.Snapshots.Get
    (
    -- * REST Resource
      ProjectsSnapshotsGetResource

    -- * Creating a Request
    , projectsSnapshotsGet
    , ProjectsSnapshotsGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgLocation
    , psgAccessToken
    , psgUploadType
    , psgProjectId
    , psgCallback
    , psgSnapshotId
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.snapshots.get@ method which the
-- 'ProjectsSnapshotsGet' request conforms to.
type ProjectsSnapshotsGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "snapshots" :>
             Capture "snapshotId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "location" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Snapshot

-- | Gets information about a snapshot.
--
-- /See:/ 'projectsSnapshotsGet' smart constructor.
data ProjectsSnapshotsGet =
  ProjectsSnapshotsGet'
    { _psgXgafv          :: !(Maybe Xgafv)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgLocation       :: !(Maybe Text)
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgProjectId      :: !Text
    , _psgCallback       :: !(Maybe Text)
    , _psgSnapshotId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgLocation'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgProjectId'
--
-- * 'psgCallback'
--
-- * 'psgSnapshotId'
projectsSnapshotsGet
    :: Text -- ^ 'psgProjectId'
    -> Text -- ^ 'psgSnapshotId'
    -> ProjectsSnapshotsGet
projectsSnapshotsGet pPsgProjectId_ pPsgSnapshotId_ =
  ProjectsSnapshotsGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgLocation = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgProjectId = pPsgProjectId_
    , _psgCallback = Nothing
    , _psgSnapshotId = pPsgSnapshotId_
    }


-- | V1 error format.
psgXgafv :: Lens' ProjectsSnapshotsGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSnapshotsGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | The location that contains this snapshot.
psgLocation :: Lens' ProjectsSnapshotsGet (Maybe Text)
psgLocation
  = lens _psgLocation (\ s a -> s{_psgLocation = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSnapshotsGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSnapshotsGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | The ID of the Cloud Platform project that the snapshot belongs to.
psgProjectId :: Lens' ProjectsSnapshotsGet Text
psgProjectId
  = lens _psgProjectId (\ s a -> s{_psgProjectId = a})

-- | JSONP
psgCallback :: Lens' ProjectsSnapshotsGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

-- | The ID of the snapshot.
psgSnapshotId :: Lens' ProjectsSnapshotsGet Text
psgSnapshotId
  = lens _psgSnapshotId
      (\ s a -> s{_psgSnapshotId = a})

instance GoogleRequest ProjectsSnapshotsGet where
        type Rs ProjectsSnapshotsGet = Snapshot
        type Scopes ProjectsSnapshotsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsSnapshotsGet'{..}
          = go _psgProjectId _psgSnapshotId _psgXgafv
              _psgUploadProtocol
              _psgLocation
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSnapshotsGetResource)
                      mempty
