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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new session. A session can be used to perform transactions
-- that read and\/or modify data in a Cloud Spanner database. Sessions are
-- meant to be reused for many consecutive transactions. Sessions can only
-- execute one transaction at a time. To execute multiple concurrent
-- read-write\/write-only transactions, create multiple sessions. Note that
-- standalone reads and queries use a transaction internally, and count
-- toward the one transaction limit. Active sessions use additional server
-- resources, so it is a good idea to delete idle and unneeded sessions.
-- Aside from explicit deletes, Cloud Spanner may delete sessions for which
-- no operations are sent for more than an hour. If a session is deleted,
-- requests to it return \`NOT_FOUND\`. Idle sessions can be kept alive by
-- sending a trivial SQL query periodically, e.g., \`\"SELECT 1\"\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.create@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Create
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsCreateResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsCreate
    , ProjectsInstancesDatabasesSessionsCreate

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proDatabase
    , proAccessToken
    , proUploadType
    , proPayload
    , proCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.create@ method which the
-- 'ProjectsInstancesDatabasesSessionsCreate' request conforms to.
type ProjectsInstancesDatabasesSessionsCreateResource
     =
     "v1" :>
       Capture "database" Text :>
         "sessions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateSessionRequest :>
                         Post '[JSON] Session

-- | Creates a new session. A session can be used to perform transactions
-- that read and\/or modify data in a Cloud Spanner database. Sessions are
-- meant to be reused for many consecutive transactions. Sessions can only
-- execute one transaction at a time. To execute multiple concurrent
-- read-write\/write-only transactions, create multiple sessions. Note that
-- standalone reads and queries use a transaction internally, and count
-- toward the one transaction limit. Active sessions use additional server
-- resources, so it is a good idea to delete idle and unneeded sessions.
-- Aside from explicit deletes, Cloud Spanner may delete sessions for which
-- no operations are sent for more than an hour. If a session is deleted,
-- requests to it return \`NOT_FOUND\`. Idle sessions can be kept alive by
-- sending a trivial SQL query periodically, e.g., \`\"SELECT 1\"\`.
--
-- /See:/ 'projectsInstancesDatabasesSessionsCreate' smart constructor.
data ProjectsInstancesDatabasesSessionsCreate =
  ProjectsInstancesDatabasesSessionsCreate'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proDatabase :: !Text
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !CreateSessionRequest
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proDatabase'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proCallback'
projectsInstancesDatabasesSessionsCreate
    :: Text -- ^ 'proDatabase'
    -> CreateSessionRequest -- ^ 'proPayload'
    -> ProjectsInstancesDatabasesSessionsCreate
projectsInstancesDatabasesSessionsCreate pProDatabase_ pProPayload_ =
  ProjectsInstancesDatabasesSessionsCreate'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proDatabase = pProDatabase_
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Required. The database in which the new session is created.
proDatabase :: Lens' ProjectsInstancesDatabasesSessionsCreate Text
proDatabase
  = lens _proDatabase (\ s a -> s{_proDatabase = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsInstancesDatabasesSessionsCreate CreateSessionRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | JSONP
proCallback :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsCreate
         where
        type Rs ProjectsInstancesDatabasesSessionsCreate =
             Session
        type Scopes ProjectsInstancesDatabasesSessionsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsCreate'{..}
          = go _proDatabase _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsCreateResource)
                      mempty
