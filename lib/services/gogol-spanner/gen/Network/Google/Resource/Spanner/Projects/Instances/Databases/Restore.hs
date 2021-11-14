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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.Restore
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new database by restoring from a completed backup. The new
-- database must be in the same project and in an instance with the same
-- instance configuration as the instance containing the backup. The
-- returned database long-running operation has a name of the format
-- \`projects\/\/instances\/\/databases\/\/operations\/\`, and can be used
-- to track the progress of the operation, and to cancel it. The metadata
-- field type is RestoreDatabaseMetadata. The response type is Database, if
-- successful. Cancelling the returned operation will stop the restore and
-- delete the database. There can be only one database being restored into
-- an instance at a time. Once the restore operation completes, a new
-- restore operation can be initiated, without waiting for the optimize
-- operation associated with the first restore to complete.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.restore@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.Restore
    (
    -- * REST Resource
      ProjectsInstancesDatabasesRestoreResource

    -- * Creating a Request
    , projectsInstancesDatabasesRestore
    , ProjectsInstancesDatabasesRestore

    -- * Request Lenses
    , pidrParent
    , pidrXgafv
    , pidrUploadProtocol
    , pidrAccessToken
    , pidrUploadType
    , pidrPayload
    , pidrCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.restore@ method which the
-- 'ProjectsInstancesDatabasesRestore' request conforms to.
type ProjectsInstancesDatabasesRestoreResource =
     "v1" :>
       Capture "parent" Text :>
         "databases:restore" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RestoreDatabaseRequest :>
                         Post '[JSON] Operation

-- | Create a new database by restoring from a completed backup. The new
-- database must be in the same project and in an instance with the same
-- instance configuration as the instance containing the backup. The
-- returned database long-running operation has a name of the format
-- \`projects\/\/instances\/\/databases\/\/operations\/\`, and can be used
-- to track the progress of the operation, and to cancel it. The metadata
-- field type is RestoreDatabaseMetadata. The response type is Database, if
-- successful. Cancelling the returned operation will stop the restore and
-- delete the database. There can be only one database being restored into
-- an instance at a time. Once the restore operation completes, a new
-- restore operation can be initiated, without waiting for the optimize
-- operation associated with the first restore to complete.
--
-- /See:/ 'projectsInstancesDatabasesRestore' smart constructor.
data ProjectsInstancesDatabasesRestore =
  ProjectsInstancesDatabasesRestore'
    { _pidrParent :: !Text
    , _pidrXgafv :: !(Maybe Xgafv)
    , _pidrUploadProtocol :: !(Maybe Text)
    , _pidrAccessToken :: !(Maybe Text)
    , _pidrUploadType :: !(Maybe Text)
    , _pidrPayload :: !RestoreDatabaseRequest
    , _pidrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidrParent'
--
-- * 'pidrXgafv'
--
-- * 'pidrUploadProtocol'
--
-- * 'pidrAccessToken'
--
-- * 'pidrUploadType'
--
-- * 'pidrPayload'
--
-- * 'pidrCallback'
projectsInstancesDatabasesRestore
    :: Text -- ^ 'pidrParent'
    -> RestoreDatabaseRequest -- ^ 'pidrPayload'
    -> ProjectsInstancesDatabasesRestore
projectsInstancesDatabasesRestore pPidrParent_ pPidrPayload_ =
  ProjectsInstancesDatabasesRestore'
    { _pidrParent = pPidrParent_
    , _pidrXgafv = Nothing
    , _pidrUploadProtocol = Nothing
    , _pidrAccessToken = Nothing
    , _pidrUploadType = Nothing
    , _pidrPayload = pPidrPayload_
    , _pidrCallback = Nothing
    }


-- | Required. The name of the instance in which to create the restored
-- database. This instance must be in the same project and have the same
-- instance configuration as the instance containing the source backup.
-- Values are of the form \`projects\/\/instances\/\`.
pidrParent :: Lens' ProjectsInstancesDatabasesRestore Text
pidrParent
  = lens _pidrParent (\ s a -> s{_pidrParent = a})

-- | V1 error format.
pidrXgafv :: Lens' ProjectsInstancesDatabasesRestore (Maybe Xgafv)
pidrXgafv
  = lens _pidrXgafv (\ s a -> s{_pidrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidrUploadProtocol :: Lens' ProjectsInstancesDatabasesRestore (Maybe Text)
pidrUploadProtocol
  = lens _pidrUploadProtocol
      (\ s a -> s{_pidrUploadProtocol = a})

-- | OAuth access token.
pidrAccessToken :: Lens' ProjectsInstancesDatabasesRestore (Maybe Text)
pidrAccessToken
  = lens _pidrAccessToken
      (\ s a -> s{_pidrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidrUploadType :: Lens' ProjectsInstancesDatabasesRestore (Maybe Text)
pidrUploadType
  = lens _pidrUploadType
      (\ s a -> s{_pidrUploadType = a})

-- | Multipart request metadata.
pidrPayload :: Lens' ProjectsInstancesDatabasesRestore RestoreDatabaseRequest
pidrPayload
  = lens _pidrPayload (\ s a -> s{_pidrPayload = a})

-- | JSONP
pidrCallback :: Lens' ProjectsInstancesDatabasesRestore (Maybe Text)
pidrCallback
  = lens _pidrCallback (\ s a -> s{_pidrCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesRestore
         where
        type Rs ProjectsInstancesDatabasesRestore = Operation
        type Scopes ProjectsInstancesDatabasesRestore =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesDatabasesRestore'{..}
          = go _pidrParent _pidrXgafv _pidrUploadProtocol
              _pidrAccessToken
              _pidrUploadType
              _pidrCallback
              (Just AltJSON)
              _pidrPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesRestoreResource)
                      mempty
