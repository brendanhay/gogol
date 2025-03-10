{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FireStore.Projects.Databases.BackupSchedules.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a backup schedule.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.backupSchedules.patch@.
module Gogol.FireStore.Projects.Databases.BackupSchedules.Patch
  ( -- * Resource
    FireStoreProjectsDatabasesBackupSchedulesPatchResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesBackupSchedulesPatch (..),
    newFireStoreProjectsDatabasesBackupSchedulesPatch,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.backupSchedules.patch@ method which the
-- 'FireStoreProjectsDatabasesBackupSchedulesPatch' request conforms to.
type FireStoreProjectsDatabasesBackupSchedulesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1BackupSchedule
    Core.:> Core.Patch '[Core.JSON] GoogleFirestoreAdminV1BackupSchedule

-- | Updates a backup schedule.
--
-- /See:/ 'newFireStoreProjectsDatabasesBackupSchedulesPatch' smart constructor.
data FireStoreProjectsDatabasesBackupSchedulesPatch = FireStoreProjectsDatabasesBackupSchedulesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is @projects\/{project}\/databases\/{database}\/backupSchedules\/{backup_schedule}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1BackupSchedule,
    -- | The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesBackupSchedulesPatch' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesBackupSchedulesPatch ::
  -- |  Output only. The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is @projects\/{project}\/databases\/{database}\/backupSchedules\/{backup_schedule}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1BackupSchedule ->
  FireStoreProjectsDatabasesBackupSchedulesPatch
newFireStoreProjectsDatabasesBackupSchedulesPatch name payload =
  FireStoreProjectsDatabasesBackupSchedulesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesBackupSchedulesPatch
  where
  type
    Rs FireStoreProjectsDatabasesBackupSchedulesPatch =
      GoogleFirestoreAdminV1BackupSchedule
  type
    Scopes FireStoreProjectsDatabasesBackupSchedulesPatch =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesBackupSchedulesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesBackupSchedulesPatchResource
          )
          Core.mempty
