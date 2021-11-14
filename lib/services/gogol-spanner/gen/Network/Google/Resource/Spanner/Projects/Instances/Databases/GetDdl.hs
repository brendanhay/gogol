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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.GetDdl
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the schema of a Cloud Spanner database as a list of formatted
-- DDL statements. This method does not show pending schema updates, those
-- may be queried using the Operations API.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.getDdl@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetDdl
    (
    -- * REST Resource
      ProjectsInstancesDatabasesGetDdlResource

    -- * Creating a Request
    , projectsInstancesDatabasesGetDdl
    , ProjectsInstancesDatabasesGetDdl

    -- * Request Lenses
    , pidgdXgafv
    , pidgdUploadProtocol
    , pidgdDatabase
    , pidgdAccessToken
    , pidgdUploadType
    , pidgdCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.getDdl@ method which the
-- 'ProjectsInstancesDatabasesGetDdl' request conforms to.
type ProjectsInstancesDatabasesGetDdlResource =
     "v1" :>
       Capture "database" Text :>
         "ddl" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GetDatabaseDdlResponse

-- | Returns the schema of a Cloud Spanner database as a list of formatted
-- DDL statements. This method does not show pending schema updates, those
-- may be queried using the Operations API.
--
-- /See:/ 'projectsInstancesDatabasesGetDdl' smart constructor.
data ProjectsInstancesDatabasesGetDdl =
  ProjectsInstancesDatabasesGetDdl'
    { _pidgdXgafv :: !(Maybe Xgafv)
    , _pidgdUploadProtocol :: !(Maybe Text)
    , _pidgdDatabase :: !Text
    , _pidgdAccessToken :: !(Maybe Text)
    , _pidgdUploadType :: !(Maybe Text)
    , _pidgdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesGetDdl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidgdXgafv'
--
-- * 'pidgdUploadProtocol'
--
-- * 'pidgdDatabase'
--
-- * 'pidgdAccessToken'
--
-- * 'pidgdUploadType'
--
-- * 'pidgdCallback'
projectsInstancesDatabasesGetDdl
    :: Text -- ^ 'pidgdDatabase'
    -> ProjectsInstancesDatabasesGetDdl
projectsInstancesDatabasesGetDdl pPidgdDatabase_ =
  ProjectsInstancesDatabasesGetDdl'
    { _pidgdXgafv = Nothing
    , _pidgdUploadProtocol = Nothing
    , _pidgdDatabase = pPidgdDatabase_
    , _pidgdAccessToken = Nothing
    , _pidgdUploadType = Nothing
    , _pidgdCallback = Nothing
    }


-- | V1 error format.
pidgdXgafv :: Lens' ProjectsInstancesDatabasesGetDdl (Maybe Xgafv)
pidgdXgafv
  = lens _pidgdXgafv (\ s a -> s{_pidgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidgdUploadProtocol :: Lens' ProjectsInstancesDatabasesGetDdl (Maybe Text)
pidgdUploadProtocol
  = lens _pidgdUploadProtocol
      (\ s a -> s{_pidgdUploadProtocol = a})

-- | Required. The database whose schema we wish to get. Values are of the
-- form \`projects\/\/instances\/\/databases\/\`
pidgdDatabase :: Lens' ProjectsInstancesDatabasesGetDdl Text
pidgdDatabase
  = lens _pidgdDatabase
      (\ s a -> s{_pidgdDatabase = a})

-- | OAuth access token.
pidgdAccessToken :: Lens' ProjectsInstancesDatabasesGetDdl (Maybe Text)
pidgdAccessToken
  = lens _pidgdAccessToken
      (\ s a -> s{_pidgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidgdUploadType :: Lens' ProjectsInstancesDatabasesGetDdl (Maybe Text)
pidgdUploadType
  = lens _pidgdUploadType
      (\ s a -> s{_pidgdUploadType = a})

-- | JSONP
pidgdCallback :: Lens' ProjectsInstancesDatabasesGetDdl (Maybe Text)
pidgdCallback
  = lens _pidgdCallback
      (\ s a -> s{_pidgdCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesGetDdl
         where
        type Rs ProjectsInstancesDatabasesGetDdl =
             GetDatabaseDdlResponse
        type Scopes ProjectsInstancesDatabasesGetDdl =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDatabasesGetDdl'{..}
          = go _pidgdDatabase _pidgdXgafv _pidgdUploadProtocol
              _pidgdAccessToken
              _pidgdUploadType
              _pidgdCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesGetDdlResource)
                      mempty
