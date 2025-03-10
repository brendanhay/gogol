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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.TestIamPermissions
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT/FOUND error if the user has @spanner.databases.list@ permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT/FOUND error if the user has @spanner.backups.list@ permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has @spanner.backupSchedules.list@ permission on the containing database.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.testIamPermissions@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.TestIamPermissions
  ( -- * Resource
    SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissionsResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions (..),
    newSpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.testIamPermissions@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissionsResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "testIamPermissions" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT/FOUND error if the user has @spanner.databases.list@ permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT/FOUND error if the user has @spanner.backups.list@ permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has @spanner.backupSchedules.list@ permission on the containing database.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions = SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for database resources. See 'resource'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions
newSpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions
  payload
  resource =
    SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes
      SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
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
                  SpannerProjectsInstancesDatabasesBackupSchedulesTestIamPermissionsResource
            )
            Core.mempty
