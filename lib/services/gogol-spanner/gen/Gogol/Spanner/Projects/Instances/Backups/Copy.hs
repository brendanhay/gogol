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
-- Module      : Gogol.Spanner.Projects.Instances.Backups.Copy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts copying a Cloud Spanner Backup. The returned backup long-running operation will have a name of the format @projects\/\/instances\/\/backups\/\/operations\/@ and can be used to track copying of the backup. The operation is associated with the destination backup. The metadata field type is CopyBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the copying and delete the destination backup. Concurrent CopyBackup requests can run on the same source backup.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.copy@.
module Gogol.Spanner.Projects.Instances.Backups.Copy
  ( -- * Resource
    SpannerProjectsInstancesBackupsCopyResource,

    -- ** Constructing a Request
    SpannerProjectsInstancesBackupsCopy (..),
    newSpannerProjectsInstancesBackupsCopy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.copy@ method which the
-- 'SpannerProjectsInstancesBackupsCopy' request conforms to.
type SpannerProjectsInstancesBackupsCopyResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups:copy"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CopyBackupRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts copying a Cloud Spanner Backup. The returned backup long-running operation will have a name of the format @projects\/\/instances\/\/backups\/\/operations\/@ and can be used to track copying of the backup. The operation is associated with the destination backup. The metadata field type is CopyBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the copying and delete the destination backup. Concurrent CopyBackup requests can run on the same source backup.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsCopy' smart constructor.
data SpannerProjectsInstancesBackupsCopy = SpannerProjectsInstancesBackupsCopy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the destination instance that will contain the backup copy. Values are of the form: @projects\/\/instances\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CopyBackupRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsCopy' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsCopy ::
  -- |  Required. The name of the destination instance that will contain the backup copy. Values are of the form: @projects\/\/instances\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CopyBackupRequest ->
  SpannerProjectsInstancesBackupsCopy
newSpannerProjectsInstancesBackupsCopy parent payload =
  SpannerProjectsInstancesBackupsCopy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpannerProjectsInstancesBackupsCopy where
  type Rs SpannerProjectsInstancesBackupsCopy = Operation
  type
    Scopes SpannerProjectsInstancesBackupsCopy =
      '[CloudPlatform'FullControl, Spanner'Admin]
  requestClient SpannerProjectsInstancesBackupsCopy {..} =
    go
      parent
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
              Core.Proxy SpannerProjectsInstancesBackupsCopyResource
          )
          Core.mempty
