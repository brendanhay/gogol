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
-- Module      : Gogol.SQLAdmin.Sql.Instances.Switchover
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Switches over from the primary instance to the DR replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.switchover@.
module Gogol.SQLAdmin.Sql.Instances.Switchover
  ( -- * Resource
    SqlInstancesSwitchoverResource,

    -- ** Constructing a Request
    SqlInstancesSwitchover (..),
    newSqlInstancesSwitchover,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.switchover@ method which the
-- 'SqlInstancesSwitchover' request conforms to.
type SqlInstancesSwitchoverResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "switchover"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "dbTimeout" Core.Duration
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Operation

-- | Switches over from the primary instance to the DR replica instance.
--
-- /See:/ 'newSqlInstancesSwitchover' smart constructor.
data SqlInstancesSwitchover = SqlInstancesSwitchover
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. (MySQL and PostgreSQL only) Cloud SQL instance operations timeout, which is a sum of all database operations. Default value is 10 minutes and can be modified to a maximum value of 24 hours.
    dbTimeout :: (Core.Maybe Core.Duration),
    -- | Cloud SQL read replica instance name.
    instance' :: Core.Text,
    -- | ID of the project that contains the replica.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesSwitchover' with the minimum fields required to make a request.
newSqlInstancesSwitchover ::
  -- |  Cloud SQL read replica instance name. See 'instance''.
  Core.Text ->
  -- |  ID of the project that contains the replica. See 'project'.
  Core.Text ->
  SqlInstancesSwitchover
newSqlInstancesSwitchover instance' project =
  SqlInstancesSwitchover
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dbTimeout = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesSwitchover where
  type Rs SqlInstancesSwitchover = Operation
  type
    Scopes SqlInstancesSwitchover =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesSwitchover {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      dbTimeout
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesSwitchoverResource)
          Core.mempty
