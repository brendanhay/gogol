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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Backups.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts creating a new Cloud Spanner Backup. The returned backup
-- long-running operation will have a name of the format
-- \`projects\/\/instances\/\/backups\/\/operations\/\` and can be used to
-- track creation of the backup. The metadata field type is
-- CreateBackupMetadata. The response field type is Backup, if successful.
-- Cancelling the returned operation will stop the creation and delete the
-- backup. There can be only one pending backup creation per database.
-- Backup creation of different databases can run concurrently.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.create@.
module Network.Google.Resource.Spanner.Projects.Instances.Backups.Create
    (
    -- * REST Resource
      ProjectsInstancesBackupsCreateResource

    -- * Creating a Request
    , projectsInstancesBackupsCreate
    , ProjectsInstancesBackupsCreate

    -- * Request Lenses
    , pibcParent
    , pibcXgafv
    , pibcUploadProtocol
    , pibcAccessToken
    , pibcBackupId
    , pibcUploadType
    , pibcPayload
    , pibcEncryptionConfigEncryptionType
    , pibcEncryptionConfigKmsKeyName
    , pibcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.create@ method which the
-- 'ProjectsInstancesBackupsCreate' request conforms to.
type ProjectsInstancesBackupsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "backups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "backupId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "encryptionConfig.encryptionType"
                       ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
                       :>
                       QueryParam "encryptionConfig.kmsKeyName" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Backup :> Post '[JSON] Operation

-- | Starts creating a new Cloud Spanner Backup. The returned backup
-- long-running operation will have a name of the format
-- \`projects\/\/instances\/\/backups\/\/operations\/\` and can be used to
-- track creation of the backup. The metadata field type is
-- CreateBackupMetadata. The response field type is Backup, if successful.
-- Cancelling the returned operation will stop the creation and delete the
-- backup. There can be only one pending backup creation per database.
-- Backup creation of different databases can run concurrently.
--
-- /See:/ 'projectsInstancesBackupsCreate' smart constructor.
data ProjectsInstancesBackupsCreate =
  ProjectsInstancesBackupsCreate'
    { _pibcParent :: !Text
    , _pibcXgafv :: !(Maybe Xgafv)
    , _pibcUploadProtocol :: !(Maybe Text)
    , _pibcAccessToken :: !(Maybe Text)
    , _pibcBackupId :: !(Maybe Text)
    , _pibcUploadType :: !(Maybe Text)
    , _pibcPayload :: !Backup
    , _pibcEncryptionConfigEncryptionType :: !(Maybe ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType)
    , _pibcEncryptionConfigKmsKeyName :: !(Maybe Text)
    , _pibcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesBackupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pibcParent'
--
-- * 'pibcXgafv'
--
-- * 'pibcUploadProtocol'
--
-- * 'pibcAccessToken'
--
-- * 'pibcBackupId'
--
-- * 'pibcUploadType'
--
-- * 'pibcPayload'
--
-- * 'pibcEncryptionConfigEncryptionType'
--
-- * 'pibcEncryptionConfigKmsKeyName'
--
-- * 'pibcCallback'
projectsInstancesBackupsCreate
    :: Text -- ^ 'pibcParent'
    -> Backup -- ^ 'pibcPayload'
    -> ProjectsInstancesBackupsCreate
projectsInstancesBackupsCreate pPibcParent_ pPibcPayload_ =
  ProjectsInstancesBackupsCreate'
    { _pibcParent = pPibcParent_
    , _pibcXgafv = Nothing
    , _pibcUploadProtocol = Nothing
    , _pibcAccessToken = Nothing
    , _pibcBackupId = Nothing
    , _pibcUploadType = Nothing
    , _pibcPayload = pPibcPayload_
    , _pibcEncryptionConfigEncryptionType = Nothing
    , _pibcEncryptionConfigKmsKeyName = Nothing
    , _pibcCallback = Nothing
    }


-- | Required. The name of the instance in which the backup will be created.
-- This must be the same instance that contains the database the backup
-- will be created from. The backup will be stored in the location(s)
-- specified in the instance configuration of this instance. Values are of
-- the form \`projects\/\/instances\/\`.
pibcParent :: Lens' ProjectsInstancesBackupsCreate Text
pibcParent
  = lens _pibcParent (\ s a -> s{_pibcParent = a})

-- | V1 error format.
pibcXgafv :: Lens' ProjectsInstancesBackupsCreate (Maybe Xgafv)
pibcXgafv
  = lens _pibcXgafv (\ s a -> s{_pibcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pibcUploadProtocol :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcUploadProtocol
  = lens _pibcUploadProtocol
      (\ s a -> s{_pibcUploadProtocol = a})

-- | OAuth access token.
pibcAccessToken :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcAccessToken
  = lens _pibcAccessToken
      (\ s a -> s{_pibcAccessToken = a})

-- | Required. The id of the backup to be created. The \`backup_id\` appended
-- to \`parent\` forms the full backup name of the form
-- \`projects\/\/instances\/\/backups\/\`.
pibcBackupId :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcBackupId
  = lens _pibcBackupId (\ s a -> s{_pibcBackupId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pibcUploadType :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcUploadType
  = lens _pibcUploadType
      (\ s a -> s{_pibcUploadType = a})

-- | Multipart request metadata.
pibcPayload :: Lens' ProjectsInstancesBackupsCreate Backup
pibcPayload
  = lens _pibcPayload (\ s a -> s{_pibcPayload = a})

-- | Required. The encryption type of the backup.
pibcEncryptionConfigEncryptionType :: Lens' ProjectsInstancesBackupsCreate (Maybe ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType)
pibcEncryptionConfigEncryptionType
  = lens _pibcEncryptionConfigEncryptionType
      (\ s a -> s{_pibcEncryptionConfigEncryptionType = a})

-- | Optional. The Cloud KMS key that will be used to protect the backup.
-- This field should be set only when encryption_type is
-- \`CUSTOMER_MANAGED_ENCRYPTION\`. Values are of the form
-- \`projects\/\/locations\/\/keyRings\/\/cryptoKeys\/\`.
pibcEncryptionConfigKmsKeyName :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcEncryptionConfigKmsKeyName
  = lens _pibcEncryptionConfigKmsKeyName
      (\ s a -> s{_pibcEncryptionConfigKmsKeyName = a})

-- | JSONP
pibcCallback :: Lens' ProjectsInstancesBackupsCreate (Maybe Text)
pibcCallback
  = lens _pibcCallback (\ s a -> s{_pibcCallback = a})

instance GoogleRequest ProjectsInstancesBackupsCreate
         where
        type Rs ProjectsInstancesBackupsCreate = Operation
        type Scopes ProjectsInstancesBackupsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesBackupsCreate'{..}
          = go _pibcParent _pibcXgafv _pibcUploadProtocol
              _pibcAccessToken
              _pibcBackupId
              _pibcUploadType
              _pibcEncryptionConfigEncryptionType
              _pibcEncryptionConfigKmsKeyName
              _pibcCallback
              (Just AltJSON)
              _pibcPayload
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesBackupsCreateResource)
                      mempty
