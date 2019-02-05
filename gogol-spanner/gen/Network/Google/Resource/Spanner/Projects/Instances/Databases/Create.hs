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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cloud Spanner database and starts to prepare it for
-- serving. The returned long-running operation will have a name of the
-- format \`\/operations\/\` and can be used to track preparation of the
-- database. The metadata field type is CreateDatabaseMetadata. The
-- response field type is Database, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.create@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Create
    (
    -- * REST Resource
      ProjectsInstancesDatabasesCreateResource

    -- * Creating a Request
    , projectsInstancesDatabasesCreate
    , ProjectsInstancesDatabasesCreate

    -- * Request Lenses
    , pidcParent
    , pidcXgafv
    , pidcUploadProtocol
    , pidcAccessToken
    , pidcUploadType
    , pidcPayload
    , pidcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.create@ method which the
-- 'ProjectsInstancesDatabasesCreate' request conforms to.
type ProjectsInstancesDatabasesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "databases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateDatabaseRequest :>
                         Post '[JSON] Operation

-- | Creates a new Cloud Spanner database and starts to prepare it for
-- serving. The returned long-running operation will have a name of the
-- format \`\/operations\/\` and can be used to track preparation of the
-- database. The metadata field type is CreateDatabaseMetadata. The
-- response field type is Database, if successful.
--
-- /See:/ 'projectsInstancesDatabasesCreate' smart constructor.
data ProjectsInstancesDatabasesCreate = ProjectsInstancesDatabasesCreate'
    { _pidcParent         :: !Text
    , _pidcXgafv          :: !(Maybe Xgafv)
    , _pidcUploadProtocol :: !(Maybe Text)
    , _pidcAccessToken    :: !(Maybe Text)
    , _pidcUploadType     :: !(Maybe Text)
    , _pidcPayload        :: !CreateDatabaseRequest
    , _pidcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesDatabasesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidcParent'
--
-- * 'pidcXgafv'
--
-- * 'pidcUploadProtocol'
--
-- * 'pidcAccessToken'
--
-- * 'pidcUploadType'
--
-- * 'pidcPayload'
--
-- * 'pidcCallback'
projectsInstancesDatabasesCreate
    :: Text -- ^ 'pidcParent'
    -> CreateDatabaseRequest -- ^ 'pidcPayload'
    -> ProjectsInstancesDatabasesCreate
projectsInstancesDatabasesCreate pPidcParent_ pPidcPayload_ =
    ProjectsInstancesDatabasesCreate'
    { _pidcParent = pPidcParent_
    , _pidcXgafv = Nothing
    , _pidcUploadProtocol = Nothing
    , _pidcAccessToken = Nothing
    , _pidcUploadType = Nothing
    , _pidcPayload = pPidcPayload_
    , _pidcCallback = Nothing
    }

-- | Required. The name of the instance that will serve the new database.
-- Values are of the form \`projects\/\/instances\/\`.
pidcParent :: Lens' ProjectsInstancesDatabasesCreate Text
pidcParent
  = lens _pidcParent (\ s a -> s{_pidcParent = a})

-- | V1 error format.
pidcXgafv :: Lens' ProjectsInstancesDatabasesCreate (Maybe Xgafv)
pidcXgafv
  = lens _pidcXgafv (\ s a -> s{_pidcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidcUploadProtocol :: Lens' ProjectsInstancesDatabasesCreate (Maybe Text)
pidcUploadProtocol
  = lens _pidcUploadProtocol
      (\ s a -> s{_pidcUploadProtocol = a})

-- | OAuth access token.
pidcAccessToken :: Lens' ProjectsInstancesDatabasesCreate (Maybe Text)
pidcAccessToken
  = lens _pidcAccessToken
      (\ s a -> s{_pidcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidcUploadType :: Lens' ProjectsInstancesDatabasesCreate (Maybe Text)
pidcUploadType
  = lens _pidcUploadType
      (\ s a -> s{_pidcUploadType = a})

-- | Multipart request metadata.
pidcPayload :: Lens' ProjectsInstancesDatabasesCreate CreateDatabaseRequest
pidcPayload
  = lens _pidcPayload (\ s a -> s{_pidcPayload = a})

-- | JSONP
pidcCallback :: Lens' ProjectsInstancesDatabasesCreate (Maybe Text)
pidcCallback
  = lens _pidcCallback (\ s a -> s{_pidcCallback = a})

instance GoogleRequest
         ProjectsInstancesDatabasesCreate where
        type Rs ProjectsInstancesDatabasesCreate = Operation
        type Scopes ProjectsInstancesDatabasesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDatabasesCreate'{..}
          = go _pidcParent _pidcXgafv _pidcUploadProtocol
              _pidcAccessToken
              _pidcUploadType
              _pidcCallback
              (Just AltJSON)
              _pidcPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesCreateResource)
                      mempty
