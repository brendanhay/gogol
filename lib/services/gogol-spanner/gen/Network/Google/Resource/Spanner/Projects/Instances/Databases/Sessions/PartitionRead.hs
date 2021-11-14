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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionRead
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a set of partition tokens that can be used to execute a read
-- operation in parallel. Each of the returned partition tokens can be used
-- by StreamingRead to specify a subset of the read result to read. The
-- same session and read-only transaction must be used by the
-- PartitionReadRequest used to create the partition tokens and the
-- ReadRequests that use the partition tokens. There are no ordering
-- guarantees on rows returned among the returned partition tokens, or even
-- within each individual StreamingRead call issued with a partition_token.
-- Partition tokens become invalid when the session used to create them is
-- deleted, is idle for too long, begins a new transaction, or becomes too
-- old. When any of these happen, it is not possible to resume the read,
-- and the whole operation must be restarted from the beginning.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.partitionRead@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionRead
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsPartitionReadResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsPartitionRead
    , ProjectsInstancesDatabasesSessionsPartitionRead

    -- * Request Lenses
    , pidsprXgafv
    , pidsprUploadProtocol
    , pidsprAccessToken
    , pidsprUploadType
    , pidsprPayload
    , pidsprSession
    , pidsprCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.partitionRead@ method which the
-- 'ProjectsInstancesDatabasesSessionsPartitionRead' request conforms to.
type ProjectsInstancesDatabasesSessionsPartitionReadResource
     =
     "v1" :>
       CaptureMode "session" "partitionRead" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PartitionReadRequest :>
                       Post '[JSON] PartitionResponse

-- | Creates a set of partition tokens that can be used to execute a read
-- operation in parallel. Each of the returned partition tokens can be used
-- by StreamingRead to specify a subset of the read result to read. The
-- same session and read-only transaction must be used by the
-- PartitionReadRequest used to create the partition tokens and the
-- ReadRequests that use the partition tokens. There are no ordering
-- guarantees on rows returned among the returned partition tokens, or even
-- within each individual StreamingRead call issued with a partition_token.
-- Partition tokens become invalid when the session used to create them is
-- deleted, is idle for too long, begins a new transaction, or becomes too
-- old. When any of these happen, it is not possible to resume the read,
-- and the whole operation must be restarted from the beginning.
--
-- /See:/ 'projectsInstancesDatabasesSessionsPartitionRead' smart constructor.
data ProjectsInstancesDatabasesSessionsPartitionRead =
  ProjectsInstancesDatabasesSessionsPartitionRead'
    { _pidsprXgafv :: !(Maybe Xgafv)
    , _pidsprUploadProtocol :: !(Maybe Text)
    , _pidsprAccessToken :: !(Maybe Text)
    , _pidsprUploadType :: !(Maybe Text)
    , _pidsprPayload :: !PartitionReadRequest
    , _pidsprSession :: !Text
    , _pidsprCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsPartitionRead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsprXgafv'
--
-- * 'pidsprUploadProtocol'
--
-- * 'pidsprAccessToken'
--
-- * 'pidsprUploadType'
--
-- * 'pidsprPayload'
--
-- * 'pidsprSession'
--
-- * 'pidsprCallback'
projectsInstancesDatabasesSessionsPartitionRead
    :: PartitionReadRequest -- ^ 'pidsprPayload'
    -> Text -- ^ 'pidsprSession'
    -> ProjectsInstancesDatabasesSessionsPartitionRead
projectsInstancesDatabasesSessionsPartitionRead pPidsprPayload_ pPidsprSession_ =
  ProjectsInstancesDatabasesSessionsPartitionRead'
    { _pidsprXgafv = Nothing
    , _pidsprUploadProtocol = Nothing
    , _pidsprAccessToken = Nothing
    , _pidsprUploadType = Nothing
    , _pidsprPayload = pPidsprPayload_
    , _pidsprSession = pPidsprSession_
    , _pidsprCallback = Nothing
    }


-- | V1 error format.
pidsprXgafv :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead (Maybe Xgafv)
pidsprXgafv
  = lens _pidsprXgafv (\ s a -> s{_pidsprXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsprUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead (Maybe Text)
pidsprUploadProtocol
  = lens _pidsprUploadProtocol
      (\ s a -> s{_pidsprUploadProtocol = a})

-- | OAuth access token.
pidsprAccessToken :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead (Maybe Text)
pidsprAccessToken
  = lens _pidsprAccessToken
      (\ s a -> s{_pidsprAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsprUploadType :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead (Maybe Text)
pidsprUploadType
  = lens _pidsprUploadType
      (\ s a -> s{_pidsprUploadType = a})

-- | Multipart request metadata.
pidsprPayload :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead PartitionReadRequest
pidsprPayload
  = lens _pidsprPayload
      (\ s a -> s{_pidsprPayload = a})

-- | Required. The session used to create the partitions.
pidsprSession :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead Text
pidsprSession
  = lens _pidsprSession
      (\ s a -> s{_pidsprSession = a})

-- | JSONP
pidsprCallback :: Lens' ProjectsInstancesDatabasesSessionsPartitionRead (Maybe Text)
pidsprCallback
  = lens _pidsprCallback
      (\ s a -> s{_pidsprCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsPartitionRead
         where
        type Rs
               ProjectsInstancesDatabasesSessionsPartitionRead
             = PartitionResponse
        type Scopes
               ProjectsInstancesDatabasesSessionsPartitionRead
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsPartitionRead'{..}
          = go _pidsprSession _pidsprXgafv
              _pidsprUploadProtocol
              _pidsprAccessToken
              _pidsprUploadType
              _pidsprCallback
              (Just AltJSON)
              _pidsprPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsPartitionReadResource)
                      mempty
