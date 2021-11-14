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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates multiple new sessions. This API can be used to initialize a
-- session cache on the clients. See https:\/\/goo.gl\/TgSFN2 for best
-- practices on session cache management.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.batchCreate@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BatchCreate
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsBatchCreateResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsBatchCreate
    , ProjectsInstancesDatabasesSessionsBatchCreate

    -- * Request Lenses
    , pidsbcXgafv
    , pidsbcUploadProtocol
    , pidsbcDatabase
    , pidsbcAccessToken
    , pidsbcUploadType
    , pidsbcPayload
    , pidsbcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.batchCreate@ method which the
-- 'ProjectsInstancesDatabasesSessionsBatchCreate' request conforms to.
type ProjectsInstancesDatabasesSessionsBatchCreateResource
     =
     "v1" :>
       Capture "database" Text :>
         "sessions:batchCreate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchCreateSessionsRequest :>
                         Post '[JSON] BatchCreateSessionsResponse

-- | Creates multiple new sessions. This API can be used to initialize a
-- session cache on the clients. See https:\/\/goo.gl\/TgSFN2 for best
-- practices on session cache management.
--
-- /See:/ 'projectsInstancesDatabasesSessionsBatchCreate' smart constructor.
data ProjectsInstancesDatabasesSessionsBatchCreate =
  ProjectsInstancesDatabasesSessionsBatchCreate'
    { _pidsbcXgafv :: !(Maybe Xgafv)
    , _pidsbcUploadProtocol :: !(Maybe Text)
    , _pidsbcDatabase :: !Text
    , _pidsbcAccessToken :: !(Maybe Text)
    , _pidsbcUploadType :: !(Maybe Text)
    , _pidsbcPayload :: !BatchCreateSessionsRequest
    , _pidsbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsbcXgafv'
--
-- * 'pidsbcUploadProtocol'
--
-- * 'pidsbcDatabase'
--
-- * 'pidsbcAccessToken'
--
-- * 'pidsbcUploadType'
--
-- * 'pidsbcPayload'
--
-- * 'pidsbcCallback'
projectsInstancesDatabasesSessionsBatchCreate
    :: Text -- ^ 'pidsbcDatabase'
    -> BatchCreateSessionsRequest -- ^ 'pidsbcPayload'
    -> ProjectsInstancesDatabasesSessionsBatchCreate
projectsInstancesDatabasesSessionsBatchCreate pPidsbcDatabase_ pPidsbcPayload_ =
  ProjectsInstancesDatabasesSessionsBatchCreate'
    { _pidsbcXgafv = Nothing
    , _pidsbcUploadProtocol = Nothing
    , _pidsbcDatabase = pPidsbcDatabase_
    , _pidsbcAccessToken = Nothing
    , _pidsbcUploadType = Nothing
    , _pidsbcPayload = pPidsbcPayload_
    , _pidsbcCallback = Nothing
    }


-- | V1 error format.
pidsbcXgafv :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate (Maybe Xgafv)
pidsbcXgafv
  = lens _pidsbcXgafv (\ s a -> s{_pidsbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsbcUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate (Maybe Text)
pidsbcUploadProtocol
  = lens _pidsbcUploadProtocol
      (\ s a -> s{_pidsbcUploadProtocol = a})

-- | Required. The database in which the new sessions are created.
pidsbcDatabase :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate Text
pidsbcDatabase
  = lens _pidsbcDatabase
      (\ s a -> s{_pidsbcDatabase = a})

-- | OAuth access token.
pidsbcAccessToken :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate (Maybe Text)
pidsbcAccessToken
  = lens _pidsbcAccessToken
      (\ s a -> s{_pidsbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsbcUploadType :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate (Maybe Text)
pidsbcUploadType
  = lens _pidsbcUploadType
      (\ s a -> s{_pidsbcUploadType = a})

-- | Multipart request metadata.
pidsbcPayload :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate BatchCreateSessionsRequest
pidsbcPayload
  = lens _pidsbcPayload
      (\ s a -> s{_pidsbcPayload = a})

-- | JSONP
pidsbcCallback :: Lens' ProjectsInstancesDatabasesSessionsBatchCreate (Maybe Text)
pidsbcCallback
  = lens _pidsbcCallback
      (\ s a -> s{_pidsbcCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsBatchCreate
         where
        type Rs ProjectsInstancesDatabasesSessionsBatchCreate
             = BatchCreateSessionsResponse
        type Scopes
               ProjectsInstancesDatabasesSessionsBatchCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsBatchCreate'{..}
          = go _pidsbcDatabase _pidsbcXgafv
              _pidsbcUploadProtocol
              _pidsbcAccessToken
              _pidsbcUploadType
              _pidsbcCallback
              (Just AltJSON)
              _pidsbcPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsBatchCreateResource)
                      mempty
