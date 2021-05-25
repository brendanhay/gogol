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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a set of partition tokens that can be used to execute a query
-- operation in parallel. Each of the returned partition tokens can be used
-- by ExecuteStreamingSql to specify a subset of the query result to read.
-- The same session and read-only transaction must be used by the
-- PartitionQueryRequest used to create the partition tokens and the
-- ExecuteSqlRequests that use the partition tokens. Partition tokens
-- become invalid when the session used to create them is deleted, is idle
-- for too long, begins a new transaction, or becomes too old. When any of
-- these happen, it is not possible to resume the query, and the whole
-- operation must be restarted from the beginning.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.partitionQuery@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.PartitionQuery
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsPartitionQueryResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsPartitionQuery
    , ProjectsInstancesDatabasesSessionsPartitionQuery

    -- * Request Lenses
    , pidspqXgafv
    , pidspqUploadProtocol
    , pidspqAccessToken
    , pidspqUploadType
    , pidspqPayload
    , pidspqSession
    , pidspqCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.partitionQuery@ method which the
-- 'ProjectsInstancesDatabasesSessionsPartitionQuery' request conforms to.
type ProjectsInstancesDatabasesSessionsPartitionQueryResource
     =
     "v1" :>
       CaptureMode "session" "partitionQuery" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PartitionQueryRequest :>
                       Post '[JSON] PartitionResponse

-- | Creates a set of partition tokens that can be used to execute a query
-- operation in parallel. Each of the returned partition tokens can be used
-- by ExecuteStreamingSql to specify a subset of the query result to read.
-- The same session and read-only transaction must be used by the
-- PartitionQueryRequest used to create the partition tokens and the
-- ExecuteSqlRequests that use the partition tokens. Partition tokens
-- become invalid when the session used to create them is deleted, is idle
-- for too long, begins a new transaction, or becomes too old. When any of
-- these happen, it is not possible to resume the query, and the whole
-- operation must be restarted from the beginning.
--
-- /See:/ 'projectsInstancesDatabasesSessionsPartitionQuery' smart constructor.
data ProjectsInstancesDatabasesSessionsPartitionQuery =
  ProjectsInstancesDatabasesSessionsPartitionQuery'
    { _pidspqXgafv :: !(Maybe Xgafv)
    , _pidspqUploadProtocol :: !(Maybe Text)
    , _pidspqAccessToken :: !(Maybe Text)
    , _pidspqUploadType :: !(Maybe Text)
    , _pidspqPayload :: !PartitionQueryRequest
    , _pidspqSession :: !Text
    , _pidspqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsPartitionQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidspqXgafv'
--
-- * 'pidspqUploadProtocol'
--
-- * 'pidspqAccessToken'
--
-- * 'pidspqUploadType'
--
-- * 'pidspqPayload'
--
-- * 'pidspqSession'
--
-- * 'pidspqCallback'
projectsInstancesDatabasesSessionsPartitionQuery
    :: PartitionQueryRequest -- ^ 'pidspqPayload'
    -> Text -- ^ 'pidspqSession'
    -> ProjectsInstancesDatabasesSessionsPartitionQuery
projectsInstancesDatabasesSessionsPartitionQuery pPidspqPayload_ pPidspqSession_ =
  ProjectsInstancesDatabasesSessionsPartitionQuery'
    { _pidspqXgafv = Nothing
    , _pidspqUploadProtocol = Nothing
    , _pidspqAccessToken = Nothing
    , _pidspqUploadType = Nothing
    , _pidspqPayload = pPidspqPayload_
    , _pidspqSession = pPidspqSession_
    , _pidspqCallback = Nothing
    }


-- | V1 error format.
pidspqXgafv :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery (Maybe Xgafv)
pidspqXgafv
  = lens _pidspqXgafv (\ s a -> s{_pidspqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidspqUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery (Maybe Text)
pidspqUploadProtocol
  = lens _pidspqUploadProtocol
      (\ s a -> s{_pidspqUploadProtocol = a})

-- | OAuth access token.
pidspqAccessToken :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery (Maybe Text)
pidspqAccessToken
  = lens _pidspqAccessToken
      (\ s a -> s{_pidspqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidspqUploadType :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery (Maybe Text)
pidspqUploadType
  = lens _pidspqUploadType
      (\ s a -> s{_pidspqUploadType = a})

-- | Multipart request metadata.
pidspqPayload :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery PartitionQueryRequest
pidspqPayload
  = lens _pidspqPayload
      (\ s a -> s{_pidspqPayload = a})

-- | Required. The session used to create the partitions.
pidspqSession :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery Text
pidspqSession
  = lens _pidspqSession
      (\ s a -> s{_pidspqSession = a})

-- | JSONP
pidspqCallback :: Lens' ProjectsInstancesDatabasesSessionsPartitionQuery (Maybe Text)
pidspqCallback
  = lens _pidspqCallback
      (\ s a -> s{_pidspqCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsPartitionQuery
         where
        type Rs
               ProjectsInstancesDatabasesSessionsPartitionQuery
             = PartitionResponse
        type Scopes
               ProjectsInstancesDatabasesSessionsPartitionQuery
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsPartitionQuery'{..}
          = go _pidspqSession _pidspqXgafv
              _pidspqUploadProtocol
              _pidspqAccessToken
              _pidspqUploadType
              _pidspqCallback
              (Just AltJSON)
              _pidspqPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsPartitionQueryResource)
                      mempty
