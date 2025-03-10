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
-- Module      : Gogol.SQLAdmin.Sql.Instances.AcquireSsrsLease
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acquire a lease for the setup of SQL Server Reporting Services (SSRS).
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.acquireSsrsLease@.
module Gogol.SQLAdmin.Sql.Instances.AcquireSsrsLease
  ( -- * Resource
    SqlInstancesAcquireSsrsLeaseResource,

    -- ** Constructing a Request
    SqlInstancesAcquireSsrsLease (..),
    newSqlInstancesAcquireSsrsLease,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.acquireSsrsLease@ method which the
-- 'SqlInstancesAcquireSsrsLease' request conforms to.
type SqlInstancesAcquireSsrsLeaseResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "acquireSsrsLease"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InstancesAcquireSsrsLeaseRequest
    Core.:> Core.Post '[Core.JSON] SqlInstancesAcquireSsrsLeaseResponse

-- | Acquire a lease for the setup of SQL Server Reporting Services (SSRS).
--
-- /See:/ 'newSqlInstancesAcquireSsrsLease' smart constructor.
data SqlInstancesAcquireSsrsLease = SqlInstancesAcquireSsrsLease
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Cloud SQL instance ID. This doesn\'t include the project ID. It\'s composed of lowercase letters, numbers, and hyphens, and it must start with a letter. The total length must be 98 characters or less (Example: instance-id).
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstancesAcquireSsrsLeaseRequest,
    -- | Required. Project ID of the project that contains the instance (Example: project-id).
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesAcquireSsrsLease' with the minimum fields required to make a request.
newSqlInstancesAcquireSsrsLease ::
  -- |  Required. Cloud SQL instance ID. This doesn\'t include the project ID. It\'s composed of lowercase letters, numbers, and hyphens, and it must start with a letter. The total length must be 98 characters or less (Example: instance-id). See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstancesAcquireSsrsLeaseRequest ->
  -- |  Required. Project ID of the project that contains the instance (Example: project-id). See 'project'.
  Core.Text ->
  SqlInstancesAcquireSsrsLease
newSqlInstancesAcquireSsrsLease instance' payload project =
  SqlInstancesAcquireSsrsLease
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesAcquireSsrsLease where
  type
    Rs SqlInstancesAcquireSsrsLease =
      SqlInstancesAcquireSsrsLeaseResponse
  type
    Scopes SqlInstancesAcquireSsrsLease =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesAcquireSsrsLease {..} =
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
          (Core.Proxy :: Core.Proxy SqlInstancesAcquireSsrsLeaseResource)
          Core.mempty
