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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts creating a new Cloud Bigtable Backup. The returned backup
-- long-running operation can be used to track creation of the backup. The
-- metadata field type is CreateBackupMetadata. The response field type is
-- Backup, if successful. Cancelling the returned operation will stop the
-- creation and delete the backup.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.clusters.backups.create@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Clusters.Backups.Create
    (
    -- * REST Resource
      ProjectsInstancesClustersBackupsCreateResource

    -- * Creating a Request
    , projectsInstancesClustersBackupsCreate
    , ProjectsInstancesClustersBackupsCreate

    -- * Request Lenses
    , picbcParent
    , picbcXgafv
    , picbcUploadProtocol
    , picbcAccessToken
    , picbcBackupId
    , picbcUploadType
    , picbcPayload
    , picbcCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.clusters.backups.create@ method which the
-- 'ProjectsInstancesClustersBackupsCreate' request conforms to.
type ProjectsInstancesClustersBackupsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "backups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "backupId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Backup :> Post '[JSON] Operation

-- | Starts creating a new Cloud Bigtable Backup. The returned backup
-- long-running operation can be used to track creation of the backup. The
-- metadata field type is CreateBackupMetadata. The response field type is
-- Backup, if successful. Cancelling the returned operation will stop the
-- creation and delete the backup.
--
-- /See:/ 'projectsInstancesClustersBackupsCreate' smart constructor.
data ProjectsInstancesClustersBackupsCreate =
  ProjectsInstancesClustersBackupsCreate'
    { _picbcParent :: !Text
    , _picbcXgafv :: !(Maybe Xgafv)
    , _picbcUploadProtocol :: !(Maybe Text)
    , _picbcAccessToken :: !(Maybe Text)
    , _picbcBackupId :: !(Maybe Text)
    , _picbcUploadType :: !(Maybe Text)
    , _picbcPayload :: !Backup
    , _picbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesClustersBackupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picbcParent'
--
-- * 'picbcXgafv'
--
-- * 'picbcUploadProtocol'
--
-- * 'picbcAccessToken'
--
-- * 'picbcBackupId'
--
-- * 'picbcUploadType'
--
-- * 'picbcPayload'
--
-- * 'picbcCallback'
projectsInstancesClustersBackupsCreate
    :: Text -- ^ 'picbcParent'
    -> Backup -- ^ 'picbcPayload'
    -> ProjectsInstancesClustersBackupsCreate
projectsInstancesClustersBackupsCreate pPicbcParent_ pPicbcPayload_ =
  ProjectsInstancesClustersBackupsCreate'
    { _picbcParent = pPicbcParent_
    , _picbcXgafv = Nothing
    , _picbcUploadProtocol = Nothing
    , _picbcAccessToken = Nothing
    , _picbcBackupId = Nothing
    , _picbcUploadType = Nothing
    , _picbcPayload = pPicbcPayload_
    , _picbcCallback = Nothing
    }


-- | Required. This must be one of the clusters in the instance in which this
-- table is located. The backup will be stored in this cluster. Values are
-- of the form
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\`.
picbcParent :: Lens' ProjectsInstancesClustersBackupsCreate Text
picbcParent
  = lens _picbcParent (\ s a -> s{_picbcParent = a})

-- | V1 error format.
picbcXgafv :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Xgafv)
picbcXgafv
  = lens _picbcXgafv (\ s a -> s{_picbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picbcUploadProtocol :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Text)
picbcUploadProtocol
  = lens _picbcUploadProtocol
      (\ s a -> s{_picbcUploadProtocol = a})

-- | OAuth access token.
picbcAccessToken :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Text)
picbcAccessToken
  = lens _picbcAccessToken
      (\ s a -> s{_picbcAccessToken = a})

-- | Required. The id of the backup to be created. The \`backup_id\` along
-- with the parent \`parent\` are combined as
-- {parent}\/backups\/{backup_id} to create the full backup name, of the
-- form:
-- \`projects\/{project}\/instances\/{instance}\/clusters\/{cluster}\/backups\/{backup_id}\`.
-- This string must be between 1 and 50 characters in length and match the
-- regex _a-zA-Z0-9*.
picbcBackupId :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Text)
picbcBackupId
  = lens _picbcBackupId
      (\ s a -> s{_picbcBackupId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picbcUploadType :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Text)
picbcUploadType
  = lens _picbcUploadType
      (\ s a -> s{_picbcUploadType = a})

-- | Multipart request metadata.
picbcPayload :: Lens' ProjectsInstancesClustersBackupsCreate Backup
picbcPayload
  = lens _picbcPayload (\ s a -> s{_picbcPayload = a})

-- | JSONP
picbcCallback :: Lens' ProjectsInstancesClustersBackupsCreate (Maybe Text)
picbcCallback
  = lens _picbcCallback
      (\ s a -> s{_picbcCallback = a})

instance GoogleRequest
           ProjectsInstancesClustersBackupsCreate
         where
        type Rs ProjectsInstancesClustersBackupsCreate =
             Operation
        type Scopes ProjectsInstancesClustersBackupsCreate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesClustersBackupsCreate'{..}
          = go _picbcParent _picbcXgafv _picbcUploadProtocol
              _picbcAccessToken
              _picbcBackupId
              _picbcUploadType
              _picbcCallback
              (Just AltJSON)
              _picbcPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesClustersBackupsCreateResource)
                      mempty
