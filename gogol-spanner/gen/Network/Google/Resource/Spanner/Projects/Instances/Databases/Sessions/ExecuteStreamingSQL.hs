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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSQL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Like ExecuteSql, except returns the result set as a stream. Unlike
-- ExecuteSql, there is no limit on the size of the returned result set.
-- However, no individual row in the result set can exceed 100 MiB, and no
-- column value can exceed 10 MiB.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeStreamingSql@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteStreamingSQL
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsExecuteStreamingSQLResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsExecuteStreamingSQL
    , ProjectsInstancesDatabasesSessionsExecuteStreamingSQL

    -- * Request Lenses
    , pidsessqlXgafv
    , pidsessqlUploadProtocol
    , pidsessqlAccessToken
    , pidsessqlUploadType
    , pidsessqlPayload
    , pidsessqlSession
    , pidsessqlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeStreamingSql@ method which the
-- 'ProjectsInstancesDatabasesSessionsExecuteStreamingSQL' request conforms to.
type ProjectsInstancesDatabasesSessionsExecuteStreamingSQLResource
     =
     "v1" :>
       CaptureMode "session" "executeStreamingSql" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExecuteSQLRequest :>
                       Post '[JSON] PartialResultSet

-- | Like ExecuteSql, except returns the result set as a stream. Unlike
-- ExecuteSql, there is no limit on the size of the returned result set.
-- However, no individual row in the result set can exceed 100 MiB, and no
-- column value can exceed 10 MiB.
--
-- /See:/ 'projectsInstancesDatabasesSessionsExecuteStreamingSQL' smart constructor.
data ProjectsInstancesDatabasesSessionsExecuteStreamingSQL =
  ProjectsInstancesDatabasesSessionsExecuteStreamingSQL'
    { _pidsessqlXgafv          :: !(Maybe Xgafv)
    , _pidsessqlUploadProtocol :: !(Maybe Text)
    , _pidsessqlAccessToken    :: !(Maybe Text)
    , _pidsessqlUploadType     :: !(Maybe Text)
    , _pidsessqlPayload        :: !ExecuteSQLRequest
    , _pidsessqlSession        :: !Text
    , _pidsessqlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsExecuteStreamingSQL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsessqlXgafv'
--
-- * 'pidsessqlUploadProtocol'
--
-- * 'pidsessqlAccessToken'
--
-- * 'pidsessqlUploadType'
--
-- * 'pidsessqlPayload'
--
-- * 'pidsessqlSession'
--
-- * 'pidsessqlCallback'
projectsInstancesDatabasesSessionsExecuteStreamingSQL
    :: ExecuteSQLRequest -- ^ 'pidsessqlPayload'
    -> Text -- ^ 'pidsessqlSession'
    -> ProjectsInstancesDatabasesSessionsExecuteStreamingSQL
projectsInstancesDatabasesSessionsExecuteStreamingSQL pPidsessqlPayload_ pPidsessqlSession_ =
  ProjectsInstancesDatabasesSessionsExecuteStreamingSQL'
    { _pidsessqlXgafv = Nothing
    , _pidsessqlUploadProtocol = Nothing
    , _pidsessqlAccessToken = Nothing
    , _pidsessqlUploadType = Nothing
    , _pidsessqlPayload = pPidsessqlPayload_
    , _pidsessqlSession = pPidsessqlSession_
    , _pidsessqlCallback = Nothing
    }


-- | V1 error format.
pidsessqlXgafv :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL (Maybe Xgafv)
pidsessqlXgafv
  = lens _pidsessqlXgafv
      (\ s a -> s{_pidsessqlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsessqlUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL (Maybe Text)
pidsessqlUploadProtocol
  = lens _pidsessqlUploadProtocol
      (\ s a -> s{_pidsessqlUploadProtocol = a})

-- | OAuth access token.
pidsessqlAccessToken :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL (Maybe Text)
pidsessqlAccessToken
  = lens _pidsessqlAccessToken
      (\ s a -> s{_pidsessqlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsessqlUploadType :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL (Maybe Text)
pidsessqlUploadType
  = lens _pidsessqlUploadType
      (\ s a -> s{_pidsessqlUploadType = a})

-- | Multipart request metadata.
pidsessqlPayload :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL ExecuteSQLRequest
pidsessqlPayload
  = lens _pidsessqlPayload
      (\ s a -> s{_pidsessqlPayload = a})

-- | Required. The session in which the SQL query should be performed.
pidsessqlSession :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL Text
pidsessqlSession
  = lens _pidsessqlSession
      (\ s a -> s{_pidsessqlSession = a})

-- | JSONP
pidsessqlCallback :: Lens' ProjectsInstancesDatabasesSessionsExecuteStreamingSQL (Maybe Text)
pidsessqlCallback
  = lens _pidsessqlCallback
      (\ s a -> s{_pidsessqlCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsExecuteStreamingSQL
         where
        type Rs
               ProjectsInstancesDatabasesSessionsExecuteStreamingSQL
             = PartialResultSet
        type Scopes
               ProjectsInstancesDatabasesSessionsExecuteStreamingSQL
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsExecuteStreamingSQL'{..}
          = go _pidsessqlSession _pidsessqlXgafv
              _pidsessqlUploadProtocol
              _pidsessqlAccessToken
              _pidsessqlUploadType
              _pidsessqlCallback
              (Just AltJSON)
              _pidsessqlPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsExecuteStreamingSQLResource)
                      mempty
