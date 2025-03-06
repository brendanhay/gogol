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
-- Module      : Gogol.SQLAdmin.Sql.Instances.ReleaseSsrsLease
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Release a lease for the setup of SQL Server Reporting Services (SSRS).
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.releaseSsrsLease@.
module Gogol.SQLAdmin.Sql.Instances.ReleaseSsrsLease
  ( -- * Resource
    SqlInstancesReleaseSsrsLeaseResource,

    -- ** Constructing a Request
    SqlInstancesReleaseSsrsLease (..),
    newSqlInstancesReleaseSsrsLease,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.releaseSsrsLease@ method which the
-- 'SqlInstancesReleaseSsrsLease' request conforms to.
type SqlInstancesReleaseSsrsLeaseResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "releaseSsrsLease"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] SqlInstancesReleaseSsrsLeaseResponse

-- | Release a lease for the setup of SQL Server Reporting Services (SSRS).
--
-- /See:/ 'newSqlInstancesReleaseSsrsLease' smart constructor.
data SqlInstancesReleaseSsrsLease = SqlInstancesReleaseSsrsLease
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The Cloud SQL instance ID. This doesn\'t include the project ID. The instance ID contains lowercase letters, numbers, and hyphens, and it must start with a letter. This ID can have a maximum length of 98 characters.
    instance' :: Core.Text,
    -- | Required. The project ID that contains the instance.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesReleaseSsrsLease' with the minimum fields required to make a request.
newSqlInstancesReleaseSsrsLease ::
  -- |  Required. The Cloud SQL instance ID. This doesn\'t include the project ID. The instance ID contains lowercase letters, numbers, and hyphens, and it must start with a letter. This ID can have a maximum length of 98 characters. See 'instance''.
  Core.Text ->
  -- |  Required. The project ID that contains the instance. See 'project'.
  Core.Text ->
  SqlInstancesReleaseSsrsLease
newSqlInstancesReleaseSsrsLease instance' project =
  SqlInstancesReleaseSsrsLease
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesReleaseSsrsLease where
  type
    Rs SqlInstancesReleaseSsrsLease =
      SqlInstancesReleaseSsrsLeaseResponse
  type
    Scopes SqlInstancesReleaseSsrsLease =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesReleaseSsrsLease {..} =
    go
      project
      instance'
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sQLAdminService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SqlInstancesReleaseSsrsLeaseResource)
          Core.mempty
