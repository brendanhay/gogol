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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a backup schedule.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.patch@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Patch
  ( -- * Resource
    SpannerProjectsInstancesDatabasesBackupSchedulesPatchResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesBackupSchedulesPatch (..),
    newSpannerProjectsInstancesDatabasesBackupSchedulesPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.patch@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesPatch' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BackupSchedule
    Core.:> Core.Patch '[Core.JSON] BackupSchedule

-- | Updates a backup schedule.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesPatch' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesPatch = SpannerProjectsInstancesDatabasesBackupSchedulesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Output only for the CreateBackupSchedule operation. Required for the UpdateBackupSchedule operation. A globally unique identifier for the backup schedule which cannot be changed. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/a-z*[a-z0-9]@ The final segment of the name must be between 2 and 60 characters in length.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: BackupSchedule,
    -- | Required. A mask specifying which fields in the BackupSchedule resource should be updated. This mask is relative to the BackupSchedule resource, not to the request message. The field mask must always be specified; this prevents any future fields from being erased accidentally.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesPatch' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesPatch ::
  -- |  Identifier. Output only for the CreateBackupSchedule operation. Required for the UpdateBackupSchedule operation. A globally unique identifier for the backup schedule which cannot be changed. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/a-z*[a-z0-9]@ The final segment of the name must be between 2 and 60 characters in length. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BackupSchedule ->
  SpannerProjectsInstancesDatabasesBackupSchedulesPatch
newSpannerProjectsInstancesDatabasesBackupSchedulesPatch
  name
  payload =
    SpannerProjectsInstancesDatabasesBackupSchedulesPatch
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
    SpannerProjectsInstancesDatabasesBackupSchedulesPatch
  where
  type
    Rs SpannerProjectsInstancesDatabasesBackupSchedulesPatch =
      BackupSchedule
  type
    Scopes SpannerProjectsInstancesDatabasesBackupSchedulesPatch =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesBackupSchedulesPatch {..} =
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
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesBackupSchedulesPatchResource
            )
            Core.mempty
