{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.FireStore.Projects.Databases.BackupSchedules.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a backup schedule on a database. At most two backup schedules can be configured on a database, one daily backup schedule and one weekly backup schedule.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.backupSchedules.create@.
module Gogol.FireStore.Projects.Databases.BackupSchedules.Create
  ( -- * Resource
    FireStoreProjectsDatabasesBackupSchedulesCreateResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesBackupSchedulesCreate (..),
    newFireStoreProjectsDatabasesBackupSchedulesCreate,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.backupSchedules.create@ method which the
-- 'FireStoreProjectsDatabasesBackupSchedulesCreate' request conforms to.
type FireStoreProjectsDatabasesBackupSchedulesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backupSchedules"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1BackupSchedule
    Core.:> Core.Post '[Core.JSON] GoogleFirestoreAdminV1BackupSchedule

-- | Creates a backup schedule on a database. At most two backup schedules can be configured on a database, one daily backup schedule and one weekly backup schedule.
--
-- /See:/ 'newFireStoreProjectsDatabasesBackupSchedulesCreate' smart constructor.
data FireStoreProjectsDatabasesBackupSchedulesCreate = FireStoreProjectsDatabasesBackupSchedulesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent database. Format @projects\/{project}\/databases\/{database}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1BackupSchedule,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesBackupSchedulesCreate' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesBackupSchedulesCreate ::
  -- |  Required. The parent database. Format @projects\/{project}\/databases\/{database}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1BackupSchedule ->
  FireStoreProjectsDatabasesBackupSchedulesCreate
newFireStoreProjectsDatabasesBackupSchedulesCreate parent payload =
  FireStoreProjectsDatabasesBackupSchedulesCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesBackupSchedulesCreate
  where
  type
    Rs FireStoreProjectsDatabasesBackupSchedulesCreate =
      GoogleFirestoreAdminV1BackupSchedule
  type
    Scopes FireStoreProjectsDatabasesBackupSchedulesCreate =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesBackupSchedulesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesBackupSchedulesCreateResource
          )
          Core.mempty
