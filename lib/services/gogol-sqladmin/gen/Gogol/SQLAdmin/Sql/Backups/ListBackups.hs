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
-- Module      : Gogol.SQLAdmin.Sql.Backups.ListBackups
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all backups associated with the project.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.Backups.ListBackups@.
module Gogol.SQLAdmin.Sql.Backups.ListBackups
  ( -- * Resource
    SqlBackupsListBackupsResource,

    -- ** Constructing a Request
    SqlBackupsListBackups (..),
    newSqlBackupsListBackups,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.Backups.ListBackups@ method which the
-- 'SqlBackupsListBackups' request conforms to.
type SqlBackupsListBackupsResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBackupsResponse

-- | Lists all backups associated with the project.
--
-- /See:/ 'newSqlBackupsListBackups' smart constructor.
data SqlBackupsListBackups = SqlBackupsListBackups
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multiple filter queries are separated by spaces. For example, \'instance:abc AND type:FINAL, \'location:us\', \'backupInterval.startTime>=1950-01-01T01:01:25.771Z\'. You can filter by type, instance, backupInterval.startTime (creation time), or location.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of backups to return per response. The service might return fewer backups than this value. If a value for this parameter isn\'t specified, then, at most, 500 backups are returned. The maximum value is 2,000. Any values that you set, which are greater than 2,000, are changed to 2,000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListBackups@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListBackups@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent that owns this collection of backups. Format: projects\/{project}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlBackupsListBackups' with the minimum fields required to make a request.
newSqlBackupsListBackups ::
  -- |  Required. The parent that owns this collection of backups. Format: projects\/{project} See 'parent'.
  Core.Text ->
  SqlBackupsListBackups
newSqlBackupsListBackups parent =
  SqlBackupsListBackups
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlBackupsListBackups where
  type Rs SqlBackupsListBackups = ListBackupsResponse
  type
    Scopes SqlBackupsListBackups =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlBackupsListBackups {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlBackupsListBackupsResource)
          Core.mempty
