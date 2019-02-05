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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction. The request includes the mutations to be applied
-- to rows in the database. \`Commit\` might return an \`ABORTED\` error.
-- This can occur at any time; commonly, the cause is conflicts with
-- concurrent transactions. However, it can also happen for a variety of
-- other reasons. If \`Commit\` returns \`ABORTED\`, the caller should
-- re-attempt the transaction from the beginning, re-using the same
-- session.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.commit@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Commit
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsCommitResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsCommit
    , ProjectsInstancesDatabasesSessionsCommit

    -- * Request Lenses
    , pidscXgafv
    , pidscUploadProtocol
    , pidscAccessToken
    , pidscUploadType
    , pidscPayload
    , pidscSession
    , pidscCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.commit@ method which the
-- 'ProjectsInstancesDatabasesSessionsCommit' request conforms to.
type ProjectsInstancesDatabasesSessionsCommitResource
     =
     "v1" :>
       CaptureMode "session" "commit" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CommitRequest :>
                       Post '[JSON] CommitResponse

-- | Commits a transaction. The request includes the mutations to be applied
-- to rows in the database. \`Commit\` might return an \`ABORTED\` error.
-- This can occur at any time; commonly, the cause is conflicts with
-- concurrent transactions. However, it can also happen for a variety of
-- other reasons. If \`Commit\` returns \`ABORTED\`, the caller should
-- re-attempt the transaction from the beginning, re-using the same
-- session.
--
-- /See:/ 'projectsInstancesDatabasesSessionsCommit' smart constructor.
data ProjectsInstancesDatabasesSessionsCommit = ProjectsInstancesDatabasesSessionsCommit'
    { _pidscXgafv          :: !(Maybe Xgafv)
    , _pidscUploadProtocol :: !(Maybe Text)
    , _pidscAccessToken    :: !(Maybe Text)
    , _pidscUploadType     :: !(Maybe Text)
    , _pidscPayload        :: !CommitRequest
    , _pidscSession        :: !Text
    , _pidscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesSessionsCommit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidscXgafv'
--
-- * 'pidscUploadProtocol'
--
-- * 'pidscAccessToken'
--
-- * 'pidscUploadType'
--
-- * 'pidscPayload'
--
-- * 'pidscSession'
--
-- * 'pidscCallback'
projectsInstancesDatabasesSessionsCommit
    :: CommitRequest -- ^ 'pidscPayload'
    -> Text -- ^ 'pidscSession'
    -> ProjectsInstancesDatabasesSessionsCommit
projectsInstancesDatabasesSessionsCommit pPidscPayload_ pPidscSession_ =
    ProjectsInstancesDatabasesSessionsCommit'
    { _pidscXgafv = Nothing
    , _pidscUploadProtocol = Nothing
    , _pidscAccessToken = Nothing
    , _pidscUploadType = Nothing
    , _pidscPayload = pPidscPayload_
    , _pidscSession = pPidscSession_
    , _pidscCallback = Nothing
    }

-- | V1 error format.
pidscXgafv :: Lens' ProjectsInstancesDatabasesSessionsCommit (Maybe Xgafv)
pidscXgafv
  = lens _pidscXgafv (\ s a -> s{_pidscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidscUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsCommit (Maybe Text)
pidscUploadProtocol
  = lens _pidscUploadProtocol
      (\ s a -> s{_pidscUploadProtocol = a})

-- | OAuth access token.
pidscAccessToken :: Lens' ProjectsInstancesDatabasesSessionsCommit (Maybe Text)
pidscAccessToken
  = lens _pidscAccessToken
      (\ s a -> s{_pidscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidscUploadType :: Lens' ProjectsInstancesDatabasesSessionsCommit (Maybe Text)
pidscUploadType
  = lens _pidscUploadType
      (\ s a -> s{_pidscUploadType = a})

-- | Multipart request metadata.
pidscPayload :: Lens' ProjectsInstancesDatabasesSessionsCommit CommitRequest
pidscPayload
  = lens _pidscPayload (\ s a -> s{_pidscPayload = a})

-- | Required. The session in which the transaction to be committed is
-- running.
pidscSession :: Lens' ProjectsInstancesDatabasesSessionsCommit Text
pidscSession
  = lens _pidscSession (\ s a -> s{_pidscSession = a})

-- | JSONP
pidscCallback :: Lens' ProjectsInstancesDatabasesSessionsCommit (Maybe Text)
pidscCallback
  = lens _pidscCallback
      (\ s a -> s{_pidscCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesSessionsCommit where
        type Rs ProjectsInstancesDatabasesSessionsCommit =
             CommitResponse
        type Scopes ProjectsInstancesDatabasesSessionsCommit
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsCommit'{..}
          = go _pidscSession _pidscXgafv _pidscUploadProtocol
              _pidscAccessToken
              _pidscUploadType
              _pidscCallback
              (Just AltJSON)
              _pidscPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsCommitResource)
                      mempty
