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
-- Module      : Gogol.SQLAdmin.Sql.Databases.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a resource containing information about a database inside a Cloud SQL instance. __Note:__ You can\'t modify the default character set and collation.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.insert@.
module Gogol.SQLAdmin.Sql.Databases.Insert
  ( -- * Resource
    SqlDatabasesInsertResource,

    -- ** Constructing a Request
    SqlDatabasesInsert (..),
    newSqlDatabasesInsert,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.databases.insert@ method which the
-- 'SqlDatabasesInsert' request conforms to.
type SqlDatabasesInsertResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "databases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Database
    Core.:> Core.Post '[Core.JSON] Operation

-- | Inserts a resource containing information about a database inside a Cloud SQL instance. __Note:__ You can\'t modify the default character set and collation.
--
-- /See:/ 'newSqlDatabasesInsert' smart constructor.
data SqlDatabasesInsert = SqlDatabasesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Database instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: Database,
    -- | Project ID of the project that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlDatabasesInsert' with the minimum fields required to make a request.
newSqlDatabasesInsert ::
  -- |  Database instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Database ->
  -- |  Project ID of the project that contains the instance. See 'project'.
  Core.Text ->
  SqlDatabasesInsert
newSqlDatabasesInsert instance' payload project =
  SqlDatabasesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlDatabasesInsert where
  type Rs SqlDatabasesInsert = Operation
  type
    Scopes SqlDatabasesInsert =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlDatabasesInsert {..} =
    go
      project
      instance'
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
          (Core.Proxy :: Core.Proxy SqlDatabasesInsertResource)
          Core.mempty
