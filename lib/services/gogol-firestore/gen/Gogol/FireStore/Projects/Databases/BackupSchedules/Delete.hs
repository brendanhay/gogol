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
-- Module      : Gogol.FireStore.Projects.Databases.BackupSchedules.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backup schedule.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.backupSchedules.delete@.
module Gogol.FireStore.Projects.Databases.BackupSchedules.Delete
  ( -- * Resource
    FireStoreProjectsDatabasesBackupSchedulesDeleteResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesBackupSchedulesDelete (..),
    newFireStoreProjectsDatabasesBackupSchedulesDelete,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.backupSchedules.delete@ method which the
-- 'FireStoreProjectsDatabasesBackupSchedulesDelete' request conforms to.
type FireStoreProjectsDatabasesBackupSchedulesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a backup schedule.
--
-- /See:/ 'newFireStoreProjectsDatabasesBackupSchedulesDelete' smart constructor.
data FireStoreProjectsDatabasesBackupSchedulesDelete = FireStoreProjectsDatabasesBackupSchedulesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the backup schedule. Format @projects\/{project}\/databases\/{database}\/backupSchedules\/{backup_schedule}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesBackupSchedulesDelete' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesBackupSchedulesDelete ::
  -- |  Required. The name of the backup schedule. Format @projects\/{project}\/databases\/{database}\/backupSchedules\/{backup_schedule}@ See 'name'.
  Core.Text ->
  FireStoreProjectsDatabasesBackupSchedulesDelete
newFireStoreProjectsDatabasesBackupSchedulesDelete name =
  FireStoreProjectsDatabasesBackupSchedulesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesBackupSchedulesDelete
  where
  type Rs FireStoreProjectsDatabasesBackupSchedulesDelete = Empty
  type
    Scopes FireStoreProjectsDatabasesBackupSchedulesDelete =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesBackupSchedulesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsDatabasesBackupSchedulesDeleteResource
          )
          Core.mempty
