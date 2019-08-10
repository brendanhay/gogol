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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Ends a session, releasing server resources associated with it. This will
-- asynchronously trigger cancellation of any operations that are running
-- with this session.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.sessions.delete@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Sessions.Delete
    (
    -- * REST Resource
      ProjectsInstancesDatabasesSessionsDeleteResource

    -- * Creating a Request
    , projectsInstancesDatabasesSessionsDelete
    , ProjectsInstancesDatabasesSessionsDelete

    -- * Request Lenses
    , pidsdXgafv
    , pidsdUploadProtocol
    , pidsdAccessToken
    , pidsdUploadType
    , pidsdName
    , pidsdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.sessions.delete@ method which the
-- 'ProjectsInstancesDatabasesSessionsDelete' request conforms to.
type ProjectsInstancesDatabasesSessionsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Ends a session, releasing server resources associated with it. This will
-- asynchronously trigger cancellation of any operations that are running
-- with this session.
--
-- /See:/ 'projectsInstancesDatabasesSessionsDelete' smart constructor.
data ProjectsInstancesDatabasesSessionsDelete =
  ProjectsInstancesDatabasesSessionsDelete'
    { _pidsdXgafv          :: !(Maybe Xgafv)
    , _pidsdUploadProtocol :: !(Maybe Text)
    , _pidsdAccessToken    :: !(Maybe Text)
    , _pidsdUploadType     :: !(Maybe Text)
    , _pidsdName           :: !Text
    , _pidsdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesSessionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidsdXgafv'
--
-- * 'pidsdUploadProtocol'
--
-- * 'pidsdAccessToken'
--
-- * 'pidsdUploadType'
--
-- * 'pidsdName'
--
-- * 'pidsdCallback'
projectsInstancesDatabasesSessionsDelete
    :: Text -- ^ 'pidsdName'
    -> ProjectsInstancesDatabasesSessionsDelete
projectsInstancesDatabasesSessionsDelete pPidsdName_ =
  ProjectsInstancesDatabasesSessionsDelete'
    { _pidsdXgafv = Nothing
    , _pidsdUploadProtocol = Nothing
    , _pidsdAccessToken = Nothing
    , _pidsdUploadType = Nothing
    , _pidsdName = pPidsdName_
    , _pidsdCallback = Nothing
    }


-- | V1 error format.
pidsdXgafv :: Lens' ProjectsInstancesDatabasesSessionsDelete (Maybe Xgafv)
pidsdXgafv
  = lens _pidsdXgafv (\ s a -> s{_pidsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidsdUploadProtocol :: Lens' ProjectsInstancesDatabasesSessionsDelete (Maybe Text)
pidsdUploadProtocol
  = lens _pidsdUploadProtocol
      (\ s a -> s{_pidsdUploadProtocol = a})

-- | OAuth access token.
pidsdAccessToken :: Lens' ProjectsInstancesDatabasesSessionsDelete (Maybe Text)
pidsdAccessToken
  = lens _pidsdAccessToken
      (\ s a -> s{_pidsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidsdUploadType :: Lens' ProjectsInstancesDatabasesSessionsDelete (Maybe Text)
pidsdUploadType
  = lens _pidsdUploadType
      (\ s a -> s{_pidsdUploadType = a})

-- | Required. The name of the session to delete.
pidsdName :: Lens' ProjectsInstancesDatabasesSessionsDelete Text
pidsdName
  = lens _pidsdName (\ s a -> s{_pidsdName = a})

-- | JSONP
pidsdCallback :: Lens' ProjectsInstancesDatabasesSessionsDelete (Maybe Text)
pidsdCallback
  = lens _pidsdCallback
      (\ s a -> s{_pidsdCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesSessionsDelete
         where
        type Rs ProjectsInstancesDatabasesSessionsDelete =
             Empty
        type Scopes ProjectsInstancesDatabasesSessionsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient
          ProjectsInstancesDatabasesSessionsDelete'{..}
          = go _pidsdName _pidsdXgafv _pidsdUploadProtocol
              _pidsdAccessToken
              _pidsdUploadType
              _pidsdCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesDatabasesSessionsDeleteResource)
                      mempty
