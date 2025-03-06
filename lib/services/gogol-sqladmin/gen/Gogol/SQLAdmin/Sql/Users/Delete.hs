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
-- Module      : Gogol.SQLAdmin.Sql.Users.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user from a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.users.delete@.
module Gogol.SQLAdmin.Sql.Users.Delete
  ( -- * Resource
    SqlUsersDeleteResource,

    -- ** Constructing a Request
    SqlUsersDelete (..),
    newSqlUsersDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.users.delete@ method which the
-- 'SqlUsersDelete' request conforms to.
type SqlUsersDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "host" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ 'newSqlUsersDelete' smart constructor.
data SqlUsersDelete = SqlUsersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Host of the user in the instance.
    host :: (Core.Maybe Core.Text),
    -- | Database instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Name of the user in the instance.
    name :: (Core.Maybe Core.Text),
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlUsersDelete' with the minimum fields required to make a request.
newSqlUsersDelete ::
  -- |  Database instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlUsersDelete
newSqlUsersDelete instance' project =
  SqlUsersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      host = Core.Nothing,
      instance' = instance',
      name = Core.Nothing,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlUsersDelete where
  type Rs SqlUsersDelete = Operation
  type
    Scopes SqlUsersDelete =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlUsersDelete {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      host
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlUsersDeleteResource)
          Core.mempty
