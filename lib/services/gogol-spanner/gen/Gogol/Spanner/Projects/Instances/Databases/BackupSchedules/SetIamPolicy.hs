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
-- Module      : Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires @spanner.databases.setIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.setIamPolicy@ permission on resource. For backup schedules, authorization requires @spanner.backupSchedules.setIamPolicy@ permission on resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.backupSchedules.setIamPolicy@.
module Gogol.Spanner.Projects.Instances.Databases.BackupSchedules.SetIamPolicy
  ( -- * Resource
    SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicyResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy (..),
    newSpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.backupSchedules.setIamPolicy@ method which the
-- 'SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy' request conforms to.
type SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires @spanner.databases.setIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.setIamPolicy@ permission on resource. For backup schedules, authorization requires @spanner.backupSchedules.setIamPolicy@ permission on resource.
--
-- /See:/ 'newSpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy' smart constructor.
data SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy = SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for databases resources.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy' with the minimum fields required to make a request.
newSpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for databases resources. See 'resource'.
  Core.Text ->
  SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy
newSpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy
  payload
  resource =
    SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        payload = payload,
        resource = resource,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy
  where
  type
    Rs
      SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy =
      Policy
  type
    Scopes
      SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient
    SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicy {..} =
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
                  SpannerProjectsInstancesDatabasesBackupSchedulesSetIamPolicyResource
            )
            Core.mempty
