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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins a new transaction. This step can often be skipped: Read,
-- ExecuteSql and Commit can begin a new transaction as a side-effect.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.beginTransaction@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.BeginTransaction
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsBeginTransactionResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsBeginTransaction
    , ProjectsInstancesDatabasesSessionsBeginTransaction

    -- * Request Lenses
    , pidsbtXgafv
    , pidsbtUploadProtocol
    , pidsbtAccessToken
    , pidsbtUploadType
    , pidsbtPayload
    , pidsbtSession
    , pidsbtCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.beginTransaction@ method which the
-- 'ProjectsInstancesDatabasesSessionsBeginTransaction' request conforms to.
type ProjectsInstancesDatabasesSessionsBeginTransactionResource
     =
     "v1" :>
       CaptureMode "session" "beginTransaction" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BeginTransactionRequest :>
                       Post '[JSON] Transaction

-- | Begins a new transaction. This step can often be skipped: Read,
-- ExecuteSql and Commit can begin a new transaction as a side-effect.
--
-- /See:/ 'projectsInstancesDatabasesSessionsBeginTransaction' smart constructor.
data ProjectsInstancesDatabasesSessionsBeginTransaction =
  ProjectsInstancesDatabasesSessionsBeginTransaction'
    { _pidsbtXgafv          :: !(Maybe Xgafv)
    , _pidsbtUploadProtocol :: !(Maybe Text)
    , _pidsbtAccessToken    :: !(Maybe Text)
    , _pidsbtUploadType     :: !(Maybe Text)
    , _pidsbtPayload        :: !BeginTransactionRequest
    , _pidsbtSession        :: !Text
    , _pidsbtCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsBeginTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsbtXgafv'
--
-- * 'pidsbtUploadProtocol'
--
-- * 'pidsbtAccessToken'
--
-- * 'pidsbtUploadType'
--
-- * 'pidsbtPayload'
--
-- * 'pidsbtSession'
--
-- * 'pidsbtCallback'
projectsInstancesDatabasesSessionsBeginTransaction
    :: BeginTransactionRequest -- ^ 'pidsbtPayload'
    -> Text -- ^ 'pidsbtSession'
    -> ProjectsInstancesDatabasesSessionsBeginTransaction
projectsInstancesDatabasesSessionsBeginTransaction pPidsbtPayload_ pPidsbtSession_ =
  ProjectsInstancesDatabasesSessionsBeginTransaction'
    { _pidsbtXgafv = Nothing
    , _pidsbtUploadProtocol = Nothing
    , _pidsbtAccessToken = Nothing
    , _pidsbtUploadType = Nothing
    , _pidsbtPayload = pPidsbtPayload_
    , _pidsbtSession = pPidsbtSession_
    , _pidsbtCallback = Nothing
    }


-- | V1 error format.
pidsbtXgafv :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction (Maybe Xgafv)
pidsbtXgafv
  = lens _pidsbtXgafv (\ s a -> s{_pidsbtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsbtUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction (Maybe Text)
pidsbtUploadProtocol
  = lens _pidsbtUploadProtocol
      (\ s a -> s{_pidsbtUploadProtocol = a})

-- | OAuth access token.
pidsbtAccessToken :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction (Maybe Text)
pidsbtAccessToken
  = lens _pidsbtAccessToken
      (\ s a -> s{_pidsbtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsbtUploadType :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction (Maybe Text)
pidsbtUploadType
  = lens _pidsbtUploadType
      (\ s a -> s{_pidsbtUploadType = a})

-- | Multipart request metadata.
pidsbtPayload :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction BeginTransactionRequest
pidsbtPayload
  = lens _pidsbtPayload
      (\ s a -> s{_pidsbtPayload = a})

-- | Required. The session in which the transaction runs.
pidsbtSession :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction Text
pidsbtSession
  = lens _pidsbtSession
      (\ s a -> s{_pidsbtSession = a})

-- | JSONP
pidsbtCallback :: Lens' ProjectsInstancesDatabasesSessionsBeginTransaction (Maybe Text)
pidsbtCallback
  = lens _pidsbtCallback
      (\ s a -> s{_pidsbtCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsBeginTransaction
         where
        type Rs
               ProjectsInstancesDatabasesSessionsBeginTransaction
             = Transaction
        type Scopes
               ProjectsInstancesDatabasesSessionsBeginTransaction
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsBeginTransaction'{..}
          = go _pidsbtSession _pidsbtXgafv
              _pidsbtUploadProtocol
              _pidsbtAccessToken
              _pidsbtUploadType
              _pidsbtCallback
              (Just AltJSON)
              _pidsbtPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsBeginTransactionResource)
                      mempty
