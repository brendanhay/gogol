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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.UpdateDdl
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the schema of a Cloud Spanner database by
-- creating\/altering\/dropping tables, columns, indexes, etc. The returned
-- long-running operation will have a name of the format \`\/operations\/\`
-- and can be used to track execution of the schema change(s). The metadata
-- field type is UpdateDatabaseDdlMetadata. The operation has no response.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.updateDdl@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.UpdateDdl
    (
    -- * REST Resource
      ProjectsInstancesDatabasesUpdateDdlResource

    -- * Creating a Request
    , projectsInstancesDatabasesUpdateDdl
    , ProjectsInstancesDatabasesUpdateDdl

    -- * Request Lenses
    , pidudXgafv
    , pidudUploadProtocol
    , pidudDatabase
    , pidudAccessToken
    , pidudUploadType
    , pidudPayload
    , pidudCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.updateDdl@ method which the
-- 'ProjectsInstancesDatabasesUpdateDdl' request conforms to.
type ProjectsInstancesDatabasesUpdateDdlResource =
     "v1" :>
       Capture "database" Text :>
         "ddl" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UpdateDatabaseDdlRequest :>
                         Patch '[JSON] Operation

-- | Updates the schema of a Cloud Spanner database by
-- creating\/altering\/dropping tables, columns, indexes, etc. The returned
-- long-running operation will have a name of the format \`\/operations\/\`
-- and can be used to track execution of the schema change(s). The metadata
-- field type is UpdateDatabaseDdlMetadata. The operation has no response.
--
-- /See:/ 'projectsInstancesDatabasesUpdateDdl' smart constructor.
data ProjectsInstancesDatabasesUpdateDdl = ProjectsInstancesDatabasesUpdateDdl'
    { _pidudXgafv          :: !(Maybe Xgafv)
    , _pidudUploadProtocol :: !(Maybe Text)
    , _pidudDatabase       :: !Text
    , _pidudAccessToken    :: !(Maybe Text)
    , _pidudUploadType     :: !(Maybe Text)
    , _pidudPayload        :: !UpdateDatabaseDdlRequest
    , _pidudCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesUpdateDdl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidudXgafv'
--
-- * 'pidudUploadProtocol'
--
-- * 'pidudDatabase'
--
-- * 'pidudAccessToken'
--
-- * 'pidudUploadType'
--
-- * 'pidudPayload'
--
-- * 'pidudCallback'
projectsInstancesDatabasesUpdateDdl
    :: Text -- ^ 'pidudDatabase'
    -> UpdateDatabaseDdlRequest -- ^ 'pidudPayload'
    -> ProjectsInstancesDatabasesUpdateDdl
projectsInstancesDatabasesUpdateDdl pPidudDatabase_ pPidudPayload_ =
    ProjectsInstancesDatabasesUpdateDdl'
    { _pidudXgafv = Nothing
    , _pidudUploadProtocol = Nothing
    , _pidudDatabase = pPidudDatabase_
    , _pidudAccessToken = Nothing
    , _pidudUploadType = Nothing
    , _pidudPayload = pPidudPayload_
    , _pidudCallback = Nothing
    }

-- | V1 error format.
pidudXgafv :: Lens' ProjectsInstancesDatabasesUpdateDdl (Maybe Xgafv)
pidudXgafv
  = lens _pidudXgafv (\ s a -> s{_pidudXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidudUploadProtocol :: Lens' ProjectsInstancesDatabasesUpdateDdl (Maybe Text)
pidudUploadProtocol
  = lens _pidudUploadProtocol
      (\ s a -> s{_pidudUploadProtocol = a})

-- | Required. The database to update.
pidudDatabase :: Lens' ProjectsInstancesDatabasesUpdateDdl Text
pidudDatabase
  = lens _pidudDatabase
      (\ s a -> s{_pidudDatabase = a})

-- | OAuth access token.
pidudAccessToken :: Lens' ProjectsInstancesDatabasesUpdateDdl (Maybe Text)
pidudAccessToken
  = lens _pidudAccessToken
      (\ s a -> s{_pidudAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidudUploadType :: Lens' ProjectsInstancesDatabasesUpdateDdl (Maybe Text)
pidudUploadType
  = lens _pidudUploadType
      (\ s a -> s{_pidudUploadType = a})

-- | Multipart request metadata.
pidudPayload :: Lens' ProjectsInstancesDatabasesUpdateDdl UpdateDatabaseDdlRequest
pidudPayload
  = lens _pidudPayload (\ s a -> s{_pidudPayload = a})

-- | JSONP
pidudCallback :: Lens' ProjectsInstancesDatabasesUpdateDdl (Maybe Text)
pidudCallback
  = lens _pidudCallback
      (\ s a -> s{_pidudCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesUpdateDdl where
        type Rs ProjectsInstancesDatabasesUpdateDdl =
             Operation
        type Scopes ProjectsInstancesDatabasesUpdateDdl =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient
          ProjectsInstancesDatabasesUpdateDdl'{..}
          = go _pidudDatabase _pidudXgafv _pidudUploadProtocol
              _pidudAccessToken
              _pidudUploadType
              _pidudCallback
              (Just AltJSON)
              _pidudPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesUpdateDdlResource)
                      mempty
