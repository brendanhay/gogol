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
-- Module      : Gogol.FireStore.Projects.Databases.BackupSchedules.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List backup schedules.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.backupSchedules.list@.
module Gogol.FireStore.Projects.Databases.BackupSchedules.List
  ( -- * Resource
    FireStoreProjectsDatabasesBackupSchedulesListResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesBackupSchedulesList (..),
    newFireStoreProjectsDatabasesBackupSchedulesList,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.backupSchedules.list@ method which the
-- 'FireStoreProjectsDatabasesBackupSchedulesList' request conforms to.
type FireStoreProjectsDatabasesBackupSchedulesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backupSchedules"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleFirestoreAdminV1ListBackupSchedulesResponse

-- | List backup schedules.
--
-- /See:/ 'newFireStoreProjectsDatabasesBackupSchedulesList' smart constructor.
data FireStoreProjectsDatabasesBackupSchedulesList = FireStoreProjectsDatabasesBackupSchedulesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent database. Format is @projects\/{project}\/databases\/{database}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesBackupSchedulesList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesBackupSchedulesList ::
  -- |  Required. The parent database. Format is @projects\/{project}\/databases\/{database}@. See 'parent'.
  Core.Text ->
  FireStoreProjectsDatabasesBackupSchedulesList
newFireStoreProjectsDatabasesBackupSchedulesList parent =
  FireStoreProjectsDatabasesBackupSchedulesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesBackupSchedulesList
  where
  type
    Rs FireStoreProjectsDatabasesBackupSchedulesList =
      GoogleFirestoreAdminV1ListBackupSchedulesResponse
  type
    Scopes FireStoreProjectsDatabasesBackupSchedulesList =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesBackupSchedulesList {..} =
    go
      parent
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
              Core.Proxy FireStoreProjectsDatabasesBackupSchedulesListResource
          )
          Core.mempty
