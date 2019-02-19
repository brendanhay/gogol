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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.DropDatabase
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Drops (aka deletes) a Cloud Spanner database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.dropDatabase@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.DropDatabase
    (
    -- * REST Resource
      ProjectsInstancesDatabasesDropDatabaseResource

    -- * Creating a Request
    , projectsInstancesDatabasesDropDatabase
    , ProjectsInstancesDatabasesDropDatabase

    -- * Request Lenses
    , pidddXgafv
    , pidddUploadProtocol
    , pidddDatabase
    , pidddAccessToken
    , pidddUploadType
    , pidddCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.dropDatabase@ method which the
-- 'ProjectsInstancesDatabasesDropDatabase' request conforms to.
type ProjectsInstancesDatabasesDropDatabaseResource =
     "v1" :>
       Capture "database" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Drops (aka deletes) a Cloud Spanner database.
--
-- /See:/ 'projectsInstancesDatabasesDropDatabase' smart constructor.
data ProjectsInstancesDatabasesDropDatabase =
  ProjectsInstancesDatabasesDropDatabase'
    { _pidddXgafv          :: !(Maybe Xgafv)
    , _pidddUploadProtocol :: !(Maybe Text)
    , _pidddDatabase       :: !Text
    , _pidddAccessToken    :: !(Maybe Text)
    , _pidddUploadType     :: !(Maybe Text)
    , _pidddCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesDropDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidddXgafv'
--
-- * 'pidddUploadProtocol'
--
-- * 'pidddDatabase'
--
-- * 'pidddAccessToken'
--
-- * 'pidddUploadType'
--
-- * 'pidddCallback'
projectsInstancesDatabasesDropDatabase
    :: Text -- ^ 'pidddDatabase'
    -> ProjectsInstancesDatabasesDropDatabase
projectsInstancesDatabasesDropDatabase pPidddDatabase_ =
  ProjectsInstancesDatabasesDropDatabase'
    { _pidddXgafv = Nothing
    , _pidddUploadProtocol = Nothing
    , _pidddDatabase = pPidddDatabase_
    , _pidddAccessToken = Nothing
    , _pidddUploadType = Nothing
    , _pidddCallback = Nothing
    }

-- | V1 error format.
pidddXgafv :: Lens' ProjectsInstancesDatabasesDropDatabase (Maybe Xgafv)
pidddXgafv
  = lens _pidddXgafv (\ s a -> s{_pidddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidddUploadProtocol :: Lens' ProjectsInstancesDatabasesDropDatabase (Maybe Text)
pidddUploadProtocol
  = lens _pidddUploadProtocol
      (\ s a -> s{_pidddUploadProtocol = a})

-- | Required. The database to be dropped.
pidddDatabase :: Lens' ProjectsInstancesDatabasesDropDatabase Text
pidddDatabase
  = lens _pidddDatabase
      (\ s a -> s{_pidddDatabase = a})

-- | OAuth access token.
pidddAccessToken :: Lens' ProjectsInstancesDatabasesDropDatabase (Maybe Text)
pidddAccessToken
  = lens _pidddAccessToken
      (\ s a -> s{_pidddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidddUploadType :: Lens' ProjectsInstancesDatabasesDropDatabase (Maybe Text)
pidddUploadType
  = lens _pidddUploadType
      (\ s a -> s{_pidddUploadType = a})

-- | JSONP
pidddCallback :: Lens' ProjectsInstancesDatabasesDropDatabase (Maybe Text)
pidddCallback
  = lens _pidddCallback
      (\ s a -> s{_pidddCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesDropDatabase
         where
        type Rs ProjectsInstancesDatabasesDropDatabase =
             Empty
        type Scopes ProjectsInstancesDatabasesDropDatabase =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesDropDatabase'{..}
          = go _pidddDatabase _pidddXgafv _pidddUploadProtocol
              _pidddAccessToken
              _pidddUploadType
              _pidddCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesDropDatabaseResource)
                      mempty
