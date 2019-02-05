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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- toward the one transaction limit. Cloud Spanner limits the number of
-- sessions that can exist at any given time; thus, it is a good idea to
-- delete idle and\/or unneeded sessions. Aside from explicit deletes,
-- Cloud Spanner can delete sessions for which no operations are sent for
-- more than an hour. If a session is deleted, requests to it return
-- \`NOT_FOUND\`. Idle sessions can be kept alive by sending a trivial SQL
-- query periodically, e.g., \`\"SELECT 1\"\`.
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
    , pXgafv
    , pUploadProtocol
    , pDatabase
    , pAccessToken
    , pUploadType
    , pPayload
    , pCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

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
-- toward the one transaction limit. Cloud Spanner limits the number of
-- sessions that can exist at any given time; thus, it is a good idea to
-- delete idle and\/or unneeded sessions. Aside from explicit deletes,
-- Cloud Spanner can delete sessions for which no operations are sent for
-- more than an hour. If a session is deleted, requests to it return
-- \`NOT_FOUND\`. Idle sessions can be kept alive by sending a trivial SQL
-- query periodically, e.g., \`\"SELECT 1\"\`.
--
-- /See:/ 'projectsInstancesDatabasesSessionsCreate' smart constructor.
data ProjectsInstancesDatabasesSessionsCreate = ProjectsInstancesDatabasesSessionsCreate'
    { _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pDatabase       :: !Text
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !CreateSessionRequest
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesSessionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pDatabase'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pCallback'
projectsInstancesDatabasesSessionsCreate
    :: Text -- ^ 'pDatabase'
    -> CreateSessionRequest -- ^ 'pPayload'
    -> ProjectsInstancesDatabasesSessionsCreate
projectsInstancesDatabasesSessionsCreate pPDatabase_ pPPayload_ =
    ProjectsInstancesDatabasesSessionsCreate'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pDatabase = pPDatabase_
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pCallback = Nothing
    }

-- | V1 error format.
pXgafv :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Required. The database in which the new session is created.
pDatabase :: Lens' ProjectsInstancesDatabasesSessionsCreate Text
pDatabase
  = lens _pDatabase (\ s a -> s{_pDatabase = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsInstancesDatabasesSessionsCreate CreateSessionRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | JSONP
pCallback :: Lens' ProjectsInstancesDatabasesSessionsCreate (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesSessionsCreate where
        type Rs ProjectsInstancesDatabasesSessionsCreate =
             Session
        type Scopes ProjectsInstancesDatabasesSessionsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsCreate'{..}
          = go _pDatabase _pXgafv _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsCreateResource)
                      mempty
