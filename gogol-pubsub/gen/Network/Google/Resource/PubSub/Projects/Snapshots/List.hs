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
-- Module      : Network.Google.Resource.PubSub.Projects.Snapshots.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing snapshots. Snapshots are used in
-- <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations,
-- which allow you to manage message acknowledgments in bulk. That is, you
-- can set the acknowledgment state of messages in an existing subscription
-- to the state captured by a snapshot.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.snapshots.list@.
module Network.Google.Resource.PubSub.Projects.Snapshots.List
    (
    -- * REST Resource
      ProjectsSnapshotsListResource

    -- * Creating a Request
    , projectsSnapshotsList
    , ProjectsSnapshotsList

    -- * Request Lenses
    , pslsXgafv
    , pslsUploadProtocol
    , pslsProject
    , pslsAccessToken
    , pslsUploadType
    , pslsPageToken
    , pslsPageSize
    , pslsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.snapshots.list@ method which the
-- 'ProjectsSnapshotsList' request conforms to.
type ProjectsSnapshotsListResource =
     "v1" :>
       Capture "project" Text :>
         "snapshots" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSnapshotsResponse

-- | Lists the existing snapshots. Snapshots are used in
-- <https://cloud.google.com/pubsub/docs/replay-overview Seek> operations,
-- which allow you to manage message acknowledgments in bulk. That is, you
-- can set the acknowledgment state of messages in an existing subscription
-- to the state captured by a snapshot.
--
-- /See:/ 'projectsSnapshotsList' smart constructor.
data ProjectsSnapshotsList =
  ProjectsSnapshotsList'
    { _pslsXgafv          :: !(Maybe Xgafv)
    , _pslsUploadProtocol :: !(Maybe Text)
    , _pslsProject        :: !Text
    , _pslsAccessToken    :: !(Maybe Text)
    , _pslsUploadType     :: !(Maybe Text)
    , _pslsPageToken      :: !(Maybe Text)
    , _pslsPageSize       :: !(Maybe (Textual Int32))
    , _pslsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslsXgafv'
--
-- * 'pslsUploadProtocol'
--
-- * 'pslsProject'
--
-- * 'pslsAccessToken'
--
-- * 'pslsUploadType'
--
-- * 'pslsPageToken'
--
-- * 'pslsPageSize'
--
-- * 'pslsCallback'
projectsSnapshotsList
    :: Text -- ^ 'pslsProject'
    -> ProjectsSnapshotsList
projectsSnapshotsList pPslsProject_ =
  ProjectsSnapshotsList'
    { _pslsXgafv = Nothing
    , _pslsUploadProtocol = Nothing
    , _pslsProject = pPslsProject_
    , _pslsAccessToken = Nothing
    , _pslsUploadType = Nothing
    , _pslsPageToken = Nothing
    , _pslsPageSize = Nothing
    , _pslsCallback = Nothing
    }


-- | V1 error format.
pslsXgafv :: Lens' ProjectsSnapshotsList (Maybe Xgafv)
pslsXgafv
  = lens _pslsXgafv (\ s a -> s{_pslsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslsUploadProtocol :: Lens' ProjectsSnapshotsList (Maybe Text)
pslsUploadProtocol
  = lens _pslsUploadProtocol
      (\ s a -> s{_pslsUploadProtocol = a})

-- | The name of the project in which to list snapshots. Format is
-- \`projects\/{project-id}\`.
pslsProject :: Lens' ProjectsSnapshotsList Text
pslsProject
  = lens _pslsProject (\ s a -> s{_pslsProject = a})

-- | OAuth access token.
pslsAccessToken :: Lens' ProjectsSnapshotsList (Maybe Text)
pslsAccessToken
  = lens _pslsAccessToken
      (\ s a -> s{_pslsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslsUploadType :: Lens' ProjectsSnapshotsList (Maybe Text)
pslsUploadType
  = lens _pslsUploadType
      (\ s a -> s{_pslsUploadType = a})

-- | The value returned by the last \`ListSnapshotsResponse\`; indicates that
-- this is a continuation of a prior \`ListSnapshots\` call, and that the
-- system should return the next page of data.
pslsPageToken :: Lens' ProjectsSnapshotsList (Maybe Text)
pslsPageToken
  = lens _pslsPageToken
      (\ s a -> s{_pslsPageToken = a})

-- | Maximum number of snapshots to return.
pslsPageSize :: Lens' ProjectsSnapshotsList (Maybe Int32)
pslsPageSize
  = lens _pslsPageSize (\ s a -> s{_pslsPageSize = a})
      . mapping _Coerce

-- | JSONP
pslsCallback :: Lens' ProjectsSnapshotsList (Maybe Text)
pslsCallback
  = lens _pslsCallback (\ s a -> s{_pslsCallback = a})

instance GoogleRequest ProjectsSnapshotsList where
        type Rs ProjectsSnapshotsList = ListSnapshotsResponse
        type Scopes ProjectsSnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSnapshotsList'{..}
          = go _pslsProject _pslsXgafv _pslsUploadProtocol
              _pslsAccessToken
              _pslsUploadType
              _pslsPageToken
              _pslsPageSize
              _pslsCallback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSnapshotsListResource)
                      mempty
