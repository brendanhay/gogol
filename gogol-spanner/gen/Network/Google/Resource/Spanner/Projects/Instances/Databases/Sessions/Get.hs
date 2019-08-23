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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a session. Returns \`NOT_FOUND\` if the session does not exist.
-- This is mainly useful for determining whether a session is still alive.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.get@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Get
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsGetResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsGet
    , ProjectsInstancesDatabasesSessionsGet

    -- * Request Lenses
    , pidsgXgafv
    , pidsgUploadProtocol
    , pidsgAccessToken
    , pidsgUploadType
    , pidsgName
    , pidsgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.get@ method which the
-- 'ProjectsInstancesDatabasesSessionsGet' request conforms to.
type ProjectsInstancesDatabasesSessionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Session

-- | Gets a session. Returns \`NOT_FOUND\` if the session does not exist.
-- This is mainly useful for determining whether a session is still alive.
--
-- /See:/ 'projectsInstancesDatabasesSessionsGet' smart constructor.
data ProjectsInstancesDatabasesSessionsGet =
  ProjectsInstancesDatabasesSessionsGet'
    { _pidsgXgafv          :: !(Maybe Xgafv)
    , _pidsgUploadProtocol :: !(Maybe Text)
    , _pidsgAccessToken    :: !(Maybe Text)
    , _pidsgUploadType     :: !(Maybe Text)
    , _pidsgName           :: !Text
    , _pidsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsgXgafv'
--
-- * 'pidsgUploadProtocol'
--
-- * 'pidsgAccessToken'
--
-- * 'pidsgUploadType'
--
-- * 'pidsgName'
--
-- * 'pidsgCallback'
projectsInstancesDatabasesSessionsGet
    :: Text -- ^ 'pidsgName'
    -> ProjectsInstancesDatabasesSessionsGet
projectsInstancesDatabasesSessionsGet pPidsgName_ =
  ProjectsInstancesDatabasesSessionsGet'
    { _pidsgXgafv = Nothing
    , _pidsgUploadProtocol = Nothing
    , _pidsgAccessToken = Nothing
    , _pidsgUploadType = Nothing
    , _pidsgName = pPidsgName_
    , _pidsgCallback = Nothing
    }


-- | V1 error format.
pidsgXgafv :: Lens' ProjectsInstancesDatabasesSessionsGet (Maybe Xgafv)
pidsgXgafv
  = lens _pidsgXgafv (\ s a -> s{_pidsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsgUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsGet (Maybe Text)
pidsgUploadProtocol
  = lens _pidsgUploadProtocol
      (\ s a -> s{_pidsgUploadProtocol = a})

-- | OAuth access token.
pidsgAccessToken :: Lens' ProjectsInstancesDatabasesSessionsGet (Maybe Text)
pidsgAccessToken
  = lens _pidsgAccessToken
      (\ s a -> s{_pidsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsgUploadType :: Lens' ProjectsInstancesDatabasesSessionsGet (Maybe Text)
pidsgUploadType
  = lens _pidsgUploadType
      (\ s a -> s{_pidsgUploadType = a})

-- | Required. The name of the session to retrieve.
pidsgName :: Lens' ProjectsInstancesDatabasesSessionsGet Text
pidsgName
  = lens _pidsgName (\ s a -> s{_pidsgName = a})

-- | JSONP
pidsgCallback :: Lens' ProjectsInstancesDatabasesSessionsGet (Maybe Text)
pidsgCallback
  = lens _pidsgCallback
      (\ s a -> s{_pidsgCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsGet
         where
        type Rs ProjectsInstancesDatabasesSessionsGet =
             Session
        type Scopes ProjectsInstancesDatabasesSessionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsGet'{..}
          = go _pidsgName _pidsgXgafv _pidsgUploadProtocol
              _pidsgAccessToken
              _pidsgUploadType
              _pidsgCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesSessionsGetResource)
                      mempty
