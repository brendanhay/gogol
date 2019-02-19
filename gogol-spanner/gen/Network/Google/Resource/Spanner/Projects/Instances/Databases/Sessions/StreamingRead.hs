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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Like Read, except returns the result set as a stream. Unlike Read, there
-- is no limit on the size of the returned result set. However, no
-- individual row in the result set can exceed 100 MiB, and no column value
-- can exceed 10 MiB.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.streamingRead@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.StreamingRead
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsStreamingReadResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsStreamingRead
    , ProjectsInstancesDatabasesSessionsStreamingRead

    -- * Request Lenses
    , pidssrXgafv
    , pidssrUploadProtocol
    , pidssrAccessToken
    , pidssrUploadType
    , pidssrPayload
    , pidssrSession
    , pidssrCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.streamingRead@ method which the
-- 'ProjectsInstancesDatabasesSessionsStreamingRead' request conforms to.
type ProjectsInstancesDatabasesSessionsStreamingReadResource
     =
     "v1" :>
       CaptureMode "session" "streamingRead" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ReadRequest :>
                       Post '[JSON] PartialResultSet

-- | Like Read, except returns the result set as a stream. Unlike Read, there
-- is no limit on the size of the returned result set. However, no
-- individual row in the result set can exceed 100 MiB, and no column value
-- can exceed 10 MiB.
--
-- /See:/ 'projectsInstancesDatabasesSessionsStreamingRead' smart constructor.
data ProjectsInstancesDatabasesSessionsStreamingRead =
  ProjectsInstancesDatabasesSessionsStreamingRead'
    { _pidssrXgafv          :: !(Maybe Xgafv)
    , _pidssrUploadProtocol :: !(Maybe Text)
    , _pidssrAccessToken    :: !(Maybe Text)
    , _pidssrUploadType     :: !(Maybe Text)
    , _pidssrPayload        :: !ReadRequest
    , _pidssrSession        :: !Text
    , _pidssrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsStreamingRead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidssrXgafv'
--
-- * 'pidssrUploadProtocol'
--
-- * 'pidssrAccessToken'
--
-- * 'pidssrUploadType'
--
-- * 'pidssrPayload'
--
-- * 'pidssrSession'
--
-- * 'pidssrCallback'
projectsInstancesDatabasesSessionsStreamingRead
    :: ReadRequest -- ^ 'pidssrPayload'
    -> Text -- ^ 'pidssrSession'
    -> ProjectsInstancesDatabasesSessionsStreamingRead
projectsInstancesDatabasesSessionsStreamingRead pPidssrPayload_ pPidssrSession_ =
  ProjectsInstancesDatabasesSessionsStreamingRead'
    { _pidssrXgafv = Nothing
    , _pidssrUploadProtocol = Nothing
    , _pidssrAccessToken = Nothing
    , _pidssrUploadType = Nothing
    , _pidssrPayload = pPidssrPayload_
    , _pidssrSession = pPidssrSession_
    , _pidssrCallback = Nothing
    }


-- | V1 error format.
pidssrXgafv :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead (Maybe Xgafv)
pidssrXgafv
  = lens _pidssrXgafv (\ s a -> s{_pidssrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidssrUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead (Maybe Text)
pidssrUploadProtocol
  = lens _pidssrUploadProtocol
      (\ s a -> s{_pidssrUploadProtocol = a})

-- | OAuth access token.
pidssrAccessToken :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead (Maybe Text)
pidssrAccessToken
  = lens _pidssrAccessToken
      (\ s a -> s{_pidssrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidssrUploadType :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead (Maybe Text)
pidssrUploadType
  = lens _pidssrUploadType
      (\ s a -> s{_pidssrUploadType = a})

-- | Multipart request metadata.
pidssrPayload :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead ReadRequest
pidssrPayload
  = lens _pidssrPayload
      (\ s a -> s{_pidssrPayload = a})

-- | Required. The session in which the read should be performed.
pidssrSession :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead Text
pidssrSession
  = lens _pidssrSession
      (\ s a -> s{_pidssrSession = a})

-- | JSONP
pidssrCallback :: Lens' ProjectsInstancesDatabasesSessionsStreamingRead (Maybe Text)
pidssrCallback
  = lens _pidssrCallback
      (\ s a -> s{_pidssrCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsStreamingRead
         where
        type Rs
               ProjectsInstancesDatabasesSessionsStreamingRead
             = PartialResultSet
        type Scopes
               ProjectsInstancesDatabasesSessionsStreamingRead
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsStreamingRead'{..}
          = go _pidssrSession _pidssrXgafv
              _pidssrUploadProtocol
              _pidssrAccessToken
              _pidssrUploadType
              _pidssrCallback
              (Just AltJSON)
              _pidssrPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsStreamingReadResource)
                      mempty
