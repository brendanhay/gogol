{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spanner.Projects.Instances.Backups.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have a name of the format @projects\/\/instances\/\/backups\/\/operations\/@ and can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup. There can be only one pending backup creation per database. Backup creation of different databases can run concurrently.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.create@.
module Gogol.Spanner.Projects.Instances.Backups.Create
    (
    -- * Resource
      SpannerProjectsInstancesBackupsCreateResource

    -- ** Constructing a Request
    , SpannerProjectsInstancesBackupsCreate (..)
    , newSpannerProjectsInstancesBackupsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.create@ method which the
-- 'SpannerProjectsInstancesBackupsCreate' request conforms to.
type SpannerProjectsInstancesBackupsCreateResource =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "backups" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "backupId" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "encryptionConfig.encryptionType"
                     ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
                     Core.:>
                     Core.QueryParam "encryptionConfig.kmsKeyName"
                       Core.Text
                       Core.:>
                       Core.QueryParams "encryptionConfig.kmsKeyNames"
                         Core.Text
                         Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Backup Core.:>
                                 Core.Post '[Core.JSON] Operation

-- | Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have a name of the format @projects\/\/instances\/\/backups\/\/operations\/@ and can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup. There can be only one pending backup creation per database. Backup creation of different databases can run concurrently.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsCreate' smart constructor.
data SpannerProjectsInstancesBackupsCreate = SpannerProjectsInstancesBackupsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The id of the backup to be created. The @backup_id@ appended to @parent@ forms the full backup name of the form @projects\/\/instances\/\/backups\/@.
    , backupId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The encryption type of the backup.
    , encryptionConfigEncryptionType :: (Core.Maybe
   ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType)
      -- | Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is @CUSTOMER_MANAGED_ENCRYPTION@. Values are of the form @projects\/\/locations\/\/keyRings\/\/cryptoKeys\/@.
    , encryptionConfigKmsKeyName :: (Core.Maybe Core.Text)
      -- | Optional. Specifies the KMS configuration for the one or more keys used to protect the backup. Values are of the form @projects\/\/locations\/\/keyRings\/\/cryptoKeys\/@. The keys referenced by @kms_key_names@ must fully cover all regions of the backup\'s instance configuration. Some examples: * For regional (single-region) instance configurations, specify a regional location KMS key. * For multi-region instance configurations of type @GOOGLE_MANAGED@, either specify a multi-region location KMS key or multiple regional location KMS keys that cover all regions in the instance configuration. * For an instance configuration of type @USER_MANAGED@, specify only regional location KMS keys to cover each region in the instance configuration. Multi-region location KMS keys aren\'t supported for @USER_MANAGED@ type instance configurations.
    , encryptionConfigKmsKeyNames :: (Core.Maybe [Core.Text])
      -- | Required. The name of the instance in which the backup will be created. This must be the same instance that contains the database the backup will be created from. The backup will be stored in the location(s) specified in the instance configuration of this instance. Values are of the form @projects\/\/instances\/@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Backup
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsCreate' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsCreate 
    ::  Core.Text
       -- ^  Required. The name of the instance in which the backup will be created. This must be the same instance that contains the database the backup will be created from. The backup will be stored in the location(s) specified in the instance configuration of this instance. Values are of the form @projects\/\/instances\/@. See 'parent'.
    -> Backup
       -- ^  Multipart request metadata. See 'payload'.
    -> SpannerProjectsInstancesBackupsCreate
newSpannerProjectsInstancesBackupsCreate parent payload =
  SpannerProjectsInstancesBackupsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , backupId = Core.Nothing
    , callback = Core.Nothing
    , encryptionConfigEncryptionType = Core.Nothing
    , encryptionConfigKmsKeyName = Core.Nothing
    , encryptionConfigKmsKeyNames = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SpannerProjectsInstancesBackupsCreate
         where
        type Rs SpannerProjectsInstancesBackupsCreate =
             Operation
        type Scopes SpannerProjectsInstancesBackupsCreate =
             '[CloudPlatform'FullControl, Spanner'Admin]
        requestClient
          SpannerProjectsInstancesBackupsCreate{..}
          = go parent xgafv accessToken backupId callback
              encryptionConfigEncryptionType
              encryptionConfigKmsKeyName
              (encryptionConfigKmsKeyNames Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              spannerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SpannerProjectsInstancesBackupsCreateResource)
                      Core.mempty

