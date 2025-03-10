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
-- Module      : Gogol.SQLAdmin.Sql.Backups.UpdateBackup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the retention period and description of the backup. You can use this API to update final backups only.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.Backups.UpdateBackup@.
module Gogol.SQLAdmin.Sql.Backups.UpdateBackup
  ( -- * Resource
    SqlBackupsUpdateBackupResource,

    -- ** Constructing a Request
    SqlBackupsUpdateBackup (..),
    newSqlBackupsUpdateBackup,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.Backups.UpdateBackup@ method which the
-- 'SqlBackupsUpdateBackup' request conforms to.
type SqlBackupsUpdateBackupResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the retention period and description of the backup. You can use this API to update final backups only.
--
-- /See:/ 'newSqlBackupsUpdateBackup' smart constructor.
data SqlBackupsUpdateBackup = SqlBackupsUpdateBackup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the backup. Format: projects\/{project}\/backups\/{backup}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | The list of fields that you can update. You can update only the description and retention period of the final backup.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlBackupsUpdateBackup' with the minimum fields required to make a request.
newSqlBackupsUpdateBackup ::
  -- |  Output only. The resource name of the backup. Format: projects\/{project}\/backups\/{backup}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  SqlBackupsUpdateBackup
newSqlBackupsUpdateBackup name payload =
  SqlBackupsUpdateBackup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlBackupsUpdateBackup where
  type Rs SqlBackupsUpdateBackup = Operation
  type
    Scopes SqlBackupsUpdateBackup =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlBackupsUpdateBackup {..} =
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
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlBackupsUpdateBackupResource)
          Core.mempty
