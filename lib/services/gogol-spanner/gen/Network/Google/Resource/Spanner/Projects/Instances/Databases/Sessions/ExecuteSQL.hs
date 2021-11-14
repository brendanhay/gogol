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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteSQL
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes an SQL statement, returning all results in a single reply. This
-- method cannot be used to return a result set larger than 10 MiB; if the
-- query yields more data than that, the query fails with a
-- \`FAILED_PRECONDITION\` error. Operations inside read-write transactions
-- might return \`ABORTED\`. If this occurs, the application should restart
-- the transaction from the beginning. See Transaction for more details.
-- Larger result sets can be fetched in streaming fashion by calling
-- ExecuteStreamingSql instead.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeSql@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteSQL
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsExecuteSQLResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsExecuteSQL
    , ProjectsInstancesDatabasesSessionsExecuteSQL

    -- * Request Lenses
    , pidsesqlXgafv
    , pidsesqlUploadProtocol
    , pidsesqlAccessToken
    , pidsesqlUploadType
    , pidsesqlPayload
    , pidsesqlSession
    , pidsesqlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeSql@ method which the
-- 'ProjectsInstancesDatabasesSessionsExecuteSQL' request conforms to.
type ProjectsInstancesDatabasesSessionsExecuteSQLResource
     =
     "v1" :>
       CaptureMode "session" "executeSql" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExecuteSQLRequest :>
                       Post '[JSON] ResultSet

-- | Executes an SQL statement, returning all results in a single reply. This
-- method cannot be used to return a result set larger than 10 MiB; if the
-- query yields more data than that, the query fails with a
-- \`FAILED_PRECONDITION\` error. Operations inside read-write transactions
-- might return \`ABORTED\`. If this occurs, the application should restart
-- the transaction from the beginning. See Transaction for more details.
-- Larger result sets can be fetched in streaming fashion by calling
-- ExecuteStreamingSql instead.
--
-- /See:/ 'projectsInstancesDatabasesSessionsExecuteSQL' smart constructor.
data ProjectsInstancesDatabasesSessionsExecuteSQL =
  ProjectsInstancesDatabasesSessionsExecuteSQL'
    { _pidsesqlXgafv :: !(Maybe Xgafv)
    , _pidsesqlUploadProtocol :: !(Maybe Text)
    , _pidsesqlAccessToken :: !(Maybe Text)
    , _pidsesqlUploadType :: !(Maybe Text)
    , _pidsesqlPayload :: !ExecuteSQLRequest
    , _pidsesqlSession :: !Text
    , _pidsesqlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsExecuteSQL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsesqlXgafv'
--
-- * 'pidsesqlUploadProtocol'
--
-- * 'pidsesqlAccessToken'
--
-- * 'pidsesqlUploadType'
--
-- * 'pidsesqlPayload'
--
-- * 'pidsesqlSession'
--
-- * 'pidsesqlCallback'
projectsInstancesDatabasesSessionsExecuteSQL
    :: ExecuteSQLRequest -- ^ 'pidsesqlPayload'
    -> Text -- ^ 'pidsesqlSession'
    -> ProjectsInstancesDatabasesSessionsExecuteSQL
projectsInstancesDatabasesSessionsExecuteSQL pPidsesqlPayload_ pPidsesqlSession_ =
  ProjectsInstancesDatabasesSessionsExecuteSQL'
    { _pidsesqlXgafv = Nothing
    , _pidsesqlUploadProtocol = Nothing
    , _pidsesqlAccessToken = Nothing
    , _pidsesqlUploadType = Nothing
    , _pidsesqlPayload = pPidsesqlPayload_
    , _pidsesqlSession = pPidsesqlSession_
    , _pidsesqlCallback = Nothing
    }


-- | V1 error format.
pidsesqlXgafv :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL (Maybe Xgafv)
pidsesqlXgafv
  = lens _pidsesqlXgafv
      (\ s a -> s{_pidsesqlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsesqlUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL (Maybe Text)
pidsesqlUploadProtocol
  = lens _pidsesqlUploadProtocol
      (\ s a -> s{_pidsesqlUploadProtocol = a})

-- | OAuth access token.
pidsesqlAccessToken :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL (Maybe Text)
pidsesqlAccessToken
  = lens _pidsesqlAccessToken
      (\ s a -> s{_pidsesqlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsesqlUploadType :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL (Maybe Text)
pidsesqlUploadType
  = lens _pidsesqlUploadType
      (\ s a -> s{_pidsesqlUploadType = a})

-- | Multipart request metadata.
pidsesqlPayload :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL ExecuteSQLRequest
pidsesqlPayload
  = lens _pidsesqlPayload
      (\ s a -> s{_pidsesqlPayload = a})

-- | Required. The session in which the SQL query should be performed.
pidsesqlSession :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL Text
pidsesqlSession
  = lens _pidsesqlSession
      (\ s a -> s{_pidsesqlSession = a})

-- | JSONP
pidsesqlCallback :: Lens' ProjectsInstancesDatabasesSessionsExecuteSQL (Maybe Text)
pidsesqlCallback
  = lens _pidsesqlCallback
      (\ s a -> s{_pidsesqlCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsExecuteSQL
         where
        type Rs ProjectsInstancesDatabasesSessionsExecuteSQL
             = ResultSet
        type Scopes
               ProjectsInstancesDatabasesSessionsExecuteSQL
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsExecuteSQL'{..}
          = go _pidsesqlSession _pidsesqlXgafv
              _pidsesqlUploadProtocol
              _pidsesqlAccessToken
              _pidsesqlUploadType
              _pidsesqlCallback
              (Just AltJSON)
              _pidsesqlPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsExecuteSQLResource)
                      mempty
