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
-- Module      : Gogol.SQLAdmin.Sql.Backups.CreateBackup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a backup for a Cloud SQL instance. This API can be used only to create on-demand backups.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.Backups.CreateBackup@.
module Gogol.SQLAdmin.Sql.Backups.CreateBackup
  ( -- * Resource
    SqlBackupsCreateBackupResource,

    -- ** Constructing a Request
    SqlBackupsCreateBackup (..),
    newSqlBackupsCreateBackup,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.Backups.CreateBackup@ method which the
-- 'SqlBackupsCreateBackup' request conforms to.
type SqlBackupsCreateBackupResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Backup
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a backup for a Cloud SQL instance. This API can be used only to create on-demand backups.
--
-- /See:/ 'newSqlBackupsCreateBackup' smart constructor.
data SqlBackupsCreateBackup = SqlBackupsCreateBackup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this backup is created. Format: projects\/{project}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Backup,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlBackupsCreateBackup' with the minimum fields required to make a request.
newSqlBackupsCreateBackup ::
  -- |  Required. The parent resource where this backup is created. Format: projects\/{project} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Backup ->
  SqlBackupsCreateBackup
newSqlBackupsCreateBackup parent payload =
  SqlBackupsCreateBackup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlBackupsCreateBackup where
  type Rs SqlBackupsCreateBackup = Operation
  type
    Scopes SqlBackupsCreateBackup =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlBackupsCreateBackup {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlBackupsCreateBackupResource)
          Core.mempty
