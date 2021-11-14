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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a batch of SQL DML statements. This method allows many
-- statements to be run with lower latency than submitting them
-- sequentially with ExecuteSql. Statements are executed in sequential
-- order. A request can succeed even if a statement fails. The
-- ExecuteBatchDmlResponse.status field in the response provides
-- information about the statement that failed. Clients must inspect this
-- field to determine whether an error occurred. Execution stops after the
-- first failed statement; the remaining statements are not executed.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.executeBatchDml@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.ExecuteBatchDml
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsExecuteBatchDmlResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsExecuteBatchDml
    , ProjectsInstancesDatabasesSessionsExecuteBatchDml

    -- * Request Lenses
    , pidsebdXgafv
    , pidsebdUploadProtocol
    , pidsebdAccessToken
    , pidsebdUploadType
    , pidsebdPayload
    , pidsebdSession
    , pidsebdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.executeBatchDml@ method which the
-- 'ProjectsInstancesDatabasesSessionsExecuteBatchDml' request conforms to.
type ProjectsInstancesDatabasesSessionsExecuteBatchDmlResource
     =
     "v1" :>
       CaptureMode "session" "executeBatchDml" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExecuteBatchDmlRequest :>
                       Post '[JSON] ExecuteBatchDmlResponse

-- | Executes a batch of SQL DML statements. This method allows many
-- statements to be run with lower latency than submitting them
-- sequentially with ExecuteSql. Statements are executed in sequential
-- order. A request can succeed even if a statement fails. The
-- ExecuteBatchDmlResponse.status field in the response provides
-- information about the statement that failed. Clients must inspect this
-- field to determine whether an error occurred. Execution stops after the
-- first failed statement; the remaining statements are not executed.
--
-- /See:/ 'projectsInstancesDatabasesSessionsExecuteBatchDml' smart constructor.
data ProjectsInstancesDatabasesSessionsExecuteBatchDml =
  ProjectsInstancesDatabasesSessionsExecuteBatchDml'
    { _pidsebdXgafv :: !(Maybe Xgafv)
    , _pidsebdUploadProtocol :: !(Maybe Text)
    , _pidsebdAccessToken :: !(Maybe Text)
    , _pidsebdUploadType :: !(Maybe Text)
    , _pidsebdPayload :: !ExecuteBatchDmlRequest
    , _pidsebdSession :: !Text
    , _pidsebdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsExecuteBatchDml' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsebdXgafv'
--
-- * 'pidsebdUploadProtocol'
--
-- * 'pidsebdAccessToken'
--
-- * 'pidsebdUploadType'
--
-- * 'pidsebdPayload'
--
-- * 'pidsebdSession'
--
-- * 'pidsebdCallback'
projectsInstancesDatabasesSessionsExecuteBatchDml
    :: ExecuteBatchDmlRequest -- ^ 'pidsebdPayload'
    -> Text -- ^ 'pidsebdSession'
    -> ProjectsInstancesDatabasesSessionsExecuteBatchDml
projectsInstancesDatabasesSessionsExecuteBatchDml pPidsebdPayload_ pPidsebdSession_ =
  ProjectsInstancesDatabasesSessionsExecuteBatchDml'
    { _pidsebdXgafv = Nothing
    , _pidsebdUploadProtocol = Nothing
    , _pidsebdAccessToken = Nothing
    , _pidsebdUploadType = Nothing
    , _pidsebdPayload = pPidsebdPayload_
    , _pidsebdSession = pPidsebdSession_
    , _pidsebdCallback = Nothing
    }


-- | V1 error format.
pidsebdXgafv :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml (Maybe Xgafv)
pidsebdXgafv
  = lens _pidsebdXgafv (\ s a -> s{_pidsebdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsebdUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml (Maybe Text)
pidsebdUploadProtocol
  = lens _pidsebdUploadProtocol
      (\ s a -> s{_pidsebdUploadProtocol = a})

-- | OAuth access token.
pidsebdAccessToken :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml (Maybe Text)
pidsebdAccessToken
  = lens _pidsebdAccessToken
      (\ s a -> s{_pidsebdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsebdUploadType :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml (Maybe Text)
pidsebdUploadType
  = lens _pidsebdUploadType
      (\ s a -> s{_pidsebdUploadType = a})

-- | Multipart request metadata.
pidsebdPayload :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml ExecuteBatchDmlRequest
pidsebdPayload
  = lens _pidsebdPayload
      (\ s a -> s{_pidsebdPayload = a})

-- | Required. The session in which the DML statements should be performed.
pidsebdSession :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml Text
pidsebdSession
  = lens _pidsebdSession
      (\ s a -> s{_pidsebdSession = a})

-- | JSONP
pidsebdCallback :: Lens' ProjectsInstancesDatabasesSessionsExecuteBatchDml (Maybe Text)
pidsebdCallback
  = lens _pidsebdCallback
      (\ s a -> s{_pidsebdCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsExecuteBatchDml
         where
        type Rs
               ProjectsInstancesDatabasesSessionsExecuteBatchDml
             = ExecuteBatchDmlResponse
        type Scopes
               ProjectsInstancesDatabasesSessionsExecuteBatchDml
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsExecuteBatchDml'{..}
          = go _pidsebdSession _pidsebdXgafv
              _pidsebdUploadProtocol
              _pidsebdAccessToken
              _pidsebdUploadType
              _pidsebdCallback
              (Just AltJSON)
              _pidsebdPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsExecuteBatchDmlResource)
                      mempty
