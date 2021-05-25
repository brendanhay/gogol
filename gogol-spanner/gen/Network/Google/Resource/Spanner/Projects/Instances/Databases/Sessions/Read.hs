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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Read
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads rows from the database using key lookups and scans, as a simple
-- key\/value style alternative to ExecuteSql. This method cannot be used
-- to return a result set larger than 10 MiB; if the read matches more data
-- than that, the read fails with a \`FAILED_PRECONDITION\` error. Reads
-- inside read-write transactions might return \`ABORTED\`. If this occurs,
-- the application should restart the transaction from the beginning. See
-- Transaction for more details. Larger result sets can be yielded in
-- streaming fashion by calling StreamingRead instead.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.read@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Read
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsReadResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsRead
    , ProjectsInstancesDatabasesSessionsRead

    -- * Request Lenses
    , pidsrXgafv
    , pidsrUploadProtocol
    , pidsrAccessToken
    , pidsrUploadType
    , pidsrPayload
    , pidsrSession
    , pidsrCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.read@ method which the
-- 'ProjectsInstancesDatabasesSessionsRead' request conforms to.
type ProjectsInstancesDatabasesSessionsReadResource =
     "v1" :>
       CaptureMode "session" "read" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ReadRequest :> Post '[JSON] ResultSet

-- | Reads rows from the database using key lookups and scans, as a simple
-- key\/value style alternative to ExecuteSql. This method cannot be used
-- to return a result set larger than 10 MiB; if the read matches more data
-- than that, the read fails with a \`FAILED_PRECONDITION\` error. Reads
-- inside read-write transactions might return \`ABORTED\`. If this occurs,
-- the application should restart the transaction from the beginning. See
-- Transaction for more details. Larger result sets can be yielded in
-- streaming fashion by calling StreamingRead instead.
--
-- /See:/ 'projectsInstancesDatabasesSessionsRead' smart constructor.
data ProjectsInstancesDatabasesSessionsRead =
  ProjectsInstancesDatabasesSessionsRead'
    { _pidsrXgafv :: !(Maybe Xgafv)
    , _pidsrUploadProtocol :: !(Maybe Text)
    , _pidsrAccessToken :: !(Maybe Text)
    , _pidsrUploadType :: !(Maybe Text)
    , _pidsrPayload :: !ReadRequest
    , _pidsrSession :: !Text
    , _pidsrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsRead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsrXgafv'
--
-- * 'pidsrUploadProtocol'
--
-- * 'pidsrAccessToken'
--
-- * 'pidsrUploadType'
--
-- * 'pidsrPayload'
--
-- * 'pidsrSession'
--
-- * 'pidsrCallback'
projectsInstancesDatabasesSessionsRead
    :: ReadRequest -- ^ 'pidsrPayload'
    -> Text -- ^ 'pidsrSession'
    -> ProjectsInstancesDatabasesSessionsRead
projectsInstancesDatabasesSessionsRead pPidsrPayload_ pPidsrSession_ =
  ProjectsInstancesDatabasesSessionsRead'
    { _pidsrXgafv = Nothing
    , _pidsrUploadProtocol = Nothing
    , _pidsrAccessToken = Nothing
    , _pidsrUploadType = Nothing
    , _pidsrPayload = pPidsrPayload_
    , _pidsrSession = pPidsrSession_
    , _pidsrCallback = Nothing
    }


-- | V1 error format.
pidsrXgafv :: Lens' ProjectsInstancesDatabasesSessionsRead (Maybe Xgafv)
pidsrXgafv
  = lens _pidsrXgafv (\ s a -> s{_pidsrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsrUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsRead (Maybe Text)
pidsrUploadProtocol
  = lens _pidsrUploadProtocol
      (\ s a -> s{_pidsrUploadProtocol = a})

-- | OAuth access token.
pidsrAccessToken :: Lens' ProjectsInstancesDatabasesSessionsRead (Maybe Text)
pidsrAccessToken
  = lens _pidsrAccessToken
      (\ s a -> s{_pidsrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsrUploadType :: Lens' ProjectsInstancesDatabasesSessionsRead (Maybe Text)
pidsrUploadType
  = lens _pidsrUploadType
      (\ s a -> s{_pidsrUploadType = a})

-- | Multipart request metadata.
pidsrPayload :: Lens' ProjectsInstancesDatabasesSessionsRead ReadRequest
pidsrPayload
  = lens _pidsrPayload (\ s a -> s{_pidsrPayload = a})

-- | Required. The session in which the read should be performed.
pidsrSession :: Lens' ProjectsInstancesDatabasesSessionsRead Text
pidsrSession
  = lens _pidsrSession (\ s a -> s{_pidsrSession = a})

-- | JSONP
pidsrCallback :: Lens' ProjectsInstancesDatabasesSessionsRead (Maybe Text)
pidsrCallback
  = lens _pidsrCallback
      (\ s a -> s{_pidsrCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsRead
         where
        type Rs ProjectsInstancesDatabasesSessionsRead =
             ResultSet
        type Scopes ProjectsInstancesDatabasesSessionsRead =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsRead'{..}
          = go _pidsrSession _pidsrXgafv _pidsrUploadProtocol
              _pidsrAccessToken
              _pidsrUploadType
              _pidsrCallback
              (Just AltJSON)
              _pidsrPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesSessionsReadResource)
                      mempty
