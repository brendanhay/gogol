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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proSession
    , proCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

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
data ProjectsInstancesDatabasesSessionsRollback = ProjectsInstancesDatabasesSessionsRollback'
    { _proXgafv          :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proPayload        :: !RollbackRequest
    , _proSession        :: !Text
    , _proCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesSessionsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proSession'
--
-- * 'proCallback'
projectsInstancesDatabasesSessionsRollback
    :: RollbackRequest -- ^ 'proPayload'
    -> Text -- ^ 'proSession'
    -> ProjectsInstancesDatabasesSessionsRollback
projectsInstancesDatabasesSessionsRollback pProPayload_ pProSession_ =
    ProjectsInstancesDatabasesSessionsRollback'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proSession = pProSession_
    , _proCallback = Nothing
    }

-- | V1 error format.
proXgafv :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsInstancesDatabasesSessionsRollback RollbackRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. The session in which the transaction to roll back is running.
proSession :: Lens' ProjectsInstancesDatabasesSessionsRollback Text
proSession
  = lens _proSession (\ s a -> s{_proSession = a})

-- | JSONP
proCallback :: Lens' ProjectsInstancesDatabasesSessionsRollback (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesSessionsRollback where
        type Rs ProjectsInstancesDatabasesSessionsRollback =
             Empty
        type Scopes
               ProjectsInstancesDatabasesSessionsRollback
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsRollback'{..}
          = go _proSession _proXgafv _proUploadProtocol
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
                           ProjectsInstancesDatabasesSessionsRollbackResource)
                      mempty
