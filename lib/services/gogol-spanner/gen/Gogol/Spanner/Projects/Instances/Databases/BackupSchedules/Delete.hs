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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backup schedule.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.delete@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.Delete
  ( -- * Resource
    SpannerProjectsInstancesDatabasesBackupSchedulesDeleteResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesBackupSchedulesDelete (..),
    newSpannerProjectsInstancesDatabasesBackupSchedulesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.delete@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesDelete' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesDeleteResource =
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
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesDelete' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesDelete = SpannerProjectsInstancesDatabasesBackupSchedulesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the schedule to delete. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesDelete' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesDelete ::
  -- |  Required. The name of the schedule to delete. Values are of the form @projects\/\/instances\/\/databases\/\/backupSchedules\/@. See 'name'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesBackupSchedulesDelete
newSpannerProjectsInstancesDatabasesBackupSchedulesDelete name =
  SpannerProjectsInstancesDatabasesBackupSchedulesDelete
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
    SpannerProjectsInstancesDatabasesBackupSchedulesDelete
  where
  type
    Rs SpannerProjectsInstancesDatabasesBackupSchedulesDelete =
      Empty
  type
    Scopes SpannerProjectsInstancesDatabasesBackupSchedulesDelete =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesBackupSchedulesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesDatabasesBackupSchedulesDeleteResource
            )
            Core.mempty
