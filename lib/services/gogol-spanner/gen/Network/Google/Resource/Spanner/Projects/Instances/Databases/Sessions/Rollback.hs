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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Rollback
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a transaction, releasing any locks it holds. It is a good
-- idea to call this for any transaction that includes one or more Read or
-- ExecuteSql requests and ultimately decides not to commit. \`Rollback\`
-- returns \`OK\` if it successfully aborts the transaction, the
-- transaction was already aborted, or the transaction is not found.
-- \`Rollback\` never returns \`ABORTED\`.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.rollback@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Rollback
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsRollbackResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsRollback
    , ProjectsInstancesDatabasesSessionsRollback

    -- * Request Lenses
    , pidsriXgafv
    , pidsriUploadProtocol
    , pidsriAccessToken
    , pidsriUploadType
    , pidsriPayload
    , pidsriSession
    , pidsriCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.rollback@ method which the
-- 'ProjectsInstancesDatabasesSessionsRollback' request conforms to.
type ProjectsInstancesDatabasesSessionsRollbackResource
     =
     "v1" :>
       CaptureMode "session" "rollback" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RollbackRequest :> Post '[JSON] Empty

-- | Rolls back a transaction, releasing any locks it holds. It is a good
-- idea to call this for any transaction that includes one or more Read or
-- ExecuteSql requests and ultimately decides not to commit. \`Rollback\`
-- returns \`OK\` if it successfully aborts the transaction, the
-- transaction was already aborted, or the transaction is not found.
-- \`Rollback\` never returns \`ABORTED\`.
--
-- /See:/ 'projectsInstancesDatabasesSessionsRollback' smart constructor.
data ProjectsInstancesDatabasesSessionsRollback =
  ProjectsInstancesDatabasesSessionsRollback'
    { _pidsriXgafv :: !(Maybe Xgafv)
    , _pidsriUploadProtocol :: !(Maybe Text)
    , _pidsriAccessToken :: !(Maybe Text)
    , _pidsriUploadType :: !(Maybe Text)
    , _pidsriPayload :: !RollbackRequest
    , _pidsriSession :: !Text
    , _pidsriCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsriXgafv'
--
-- * 'pidsriUploadProtocol'
--
-- * 'pidsriAccessToken'
--
-- * 'pidsriUploadType'
--
-- * 'pidsriPayload'
--
-- * 'pidsriSession'
--
-- * 'pidsriCallback'
projectsInstancesDatabasesSessionsRollback
    :: RollbackRequest -- ^ 'pidsriPayload'
    -> Text -- ^ 'pidsriSession'
    -> ProjectsInstancesDatabasesSessionsRollback
projectsInstancesDatabasesSessionsRollback pPidsriPayload_ pPidsriSession_ =
  ProjectsInstancesDatabasesSessionsRollback'
    { _pidsriXgafv = Nothing
    , _pidsriUploadProtocol = Nothing
    , _pidsriAccessToken = Nothing
    , _pidsriUploadType = Nothing
    , _pidsriPayload = pPidsriPayload_
    , _pidsriSession = pPidsriSession_
    , _pidsriCallback = Nothing
    }


-- | V1 error format.
pidsriXgafv :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Xgafv)
pidsriXgafv
  = lens _pidsriXgafv (\ s a -> s{_pidsriXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsriUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
pidsriUploadProtocol
  = lens _pidsriUploadProtocol
      (\ s a -> s{_pidsriUploadProtocol = a})

-- | OAuth access token.
pidsriAccessToken :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
pidsriAccessToken
  = lens _pidsriAccessToken
      (\ s a -> s{_pidsriAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsriUploadType :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
pidsriUploadType
  = lens _pidsriUploadType
      (\ s a -> s{_pidsriUploadType = a})

-- | Multipart request metadata.
pidsriPayload :: Lens' ProjectsInstancesDatabasesSessionsRollback RollbackRequest
pidsriPayload
  = lens _pidsriPayload
      (\ s a -> s{_pidsriPayload = a})

-- | Required. The session in which the transaction to roll back is running.
pidsriSession :: Lens' ProjectsInstancesDatabasesSessionsRollback Text
pidsriSession
  = lens _pidsriSession
      (\ s a -> s{_pidsriSession = a})

-- | JSONP
pidsriCallback :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
pidsriCallback
  = lens _pidsriCallback
      (\ s a -> s{_pidsriCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsRollback
         where
        type Rs ProjectsInstancesDatabasesSessionsRollback =
             Empty
        type Scopes
               ProjectsInstancesDatabasesSessionsRollback
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsRollback'{..}
          = go _pidsriSession _pidsriXgafv
              _pidsriUploadProtocol
              _pidsriAccessToken
              _pidsriUploadType
              _pidsriCallback
              (Just AltJSON)
              _pidsriPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsRollbackResource)
                      mempty
