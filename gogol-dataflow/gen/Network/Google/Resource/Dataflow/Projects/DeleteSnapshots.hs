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
-- Module      : Network.Google.Resource.Dataflow.Projects.DeleteSnapshots
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a snapshot.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.deleteSnapshots@.
module Network.Google.Resource.Dataflow.Projects.DeleteSnapshots
    (
    -- * REST Resource
      ProjectsDeleteSnapshotsResource

    -- * Creating a Request
    , projectsDeleteSnapshots
    , ProjectsDeleteSnapshots

    -- * Request Lenses
    , pdsXgafv
    , pdsUploadProtocol
    , pdsLocation
    , pdsAccessToken
    , pdsUploadType
    , pdsProjectId
    , pdsCallback
    , pdsSnapshotId
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.deleteSnapshots@ method which the
-- 'ProjectsDeleteSnapshots' request conforms to.
type ProjectsDeleteSnapshotsResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "snapshots" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "location" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "snapshotId" Text :>
                           QueryParam "alt" AltJSON :>
                             Delete '[JSON] DeleteSnapshotResponse

-- | Deletes a snapshot.
--
-- /See:/ 'projectsDeleteSnapshots' smart constructor.
data ProjectsDeleteSnapshots =
  ProjectsDeleteSnapshots'
    { _pdsXgafv          :: !(Maybe Xgafv)
    , _pdsUploadProtocol :: !(Maybe Text)
    , _pdsLocation       :: !(Maybe Text)
    , _pdsAccessToken    :: !(Maybe Text)
    , _pdsUploadType     :: !(Maybe Text)
    , _pdsProjectId      :: !Text
    , _pdsCallback       :: !(Maybe Text)
    , _pdsSnapshotId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeleteSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdsXgafv'
--
-- * 'pdsUploadProtocol'
--
-- * 'pdsLocation'
--
-- * 'pdsAccessToken'
--
-- * 'pdsUploadType'
--
-- * 'pdsProjectId'
--
-- * 'pdsCallback'
--
-- * 'pdsSnapshotId'
projectsDeleteSnapshots
    :: Text -- ^ 'pdsProjectId'
    -> ProjectsDeleteSnapshots
projectsDeleteSnapshots pPdsProjectId_ =
  ProjectsDeleteSnapshots'
    { _pdsXgafv = Nothing
    , _pdsUploadProtocol = Nothing
    , _pdsLocation = Nothing
    , _pdsAccessToken = Nothing
    , _pdsUploadType = Nothing
    , _pdsProjectId = pPdsProjectId_
    , _pdsCallback = Nothing
    , _pdsSnapshotId = Nothing
    }


-- | V1 error format.
pdsXgafv :: Lens' ProjectsDeleteSnapshots (Maybe Xgafv)
pdsXgafv = lens _pdsXgafv (\ s a -> s{_pdsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdsUploadProtocol :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsUploadProtocol
  = lens _pdsUploadProtocol
      (\ s a -> s{_pdsUploadProtocol = a})

-- | The location that contains this snapshot.
pdsLocation :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsLocation
  = lens _pdsLocation (\ s a -> s{_pdsLocation = a})

-- | OAuth access token.
pdsAccessToken :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsAccessToken
  = lens _pdsAccessToken
      (\ s a -> s{_pdsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdsUploadType :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsUploadType
  = lens _pdsUploadType
      (\ s a -> s{_pdsUploadType = a})

-- | The ID of the Cloud Platform project that the snapshot belongs to.
pdsProjectId :: Lens' ProjectsDeleteSnapshots Text
pdsProjectId
  = lens _pdsProjectId (\ s a -> s{_pdsProjectId = a})

-- | JSONP
pdsCallback :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsCallback
  = lens _pdsCallback (\ s a -> s{_pdsCallback = a})

-- | The ID of the snapshot.
pdsSnapshotId :: Lens' ProjectsDeleteSnapshots (Maybe Text)
pdsSnapshotId
  = lens _pdsSnapshotId
      (\ s a -> s{_pdsSnapshotId = a})

instance GoogleRequest ProjectsDeleteSnapshots where
        type Rs ProjectsDeleteSnapshots =
             DeleteSnapshotResponse
        type Scopes ProjectsDeleteSnapshots =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsDeleteSnapshots'{..}
          = go _pdsProjectId _pdsXgafv _pdsUploadProtocol
              _pdsLocation
              _pdsAccessToken
              _pdsUploadType
              _pdsCallback
              _pdsSnapshotId
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeleteSnapshotsResource)
                      mempty
