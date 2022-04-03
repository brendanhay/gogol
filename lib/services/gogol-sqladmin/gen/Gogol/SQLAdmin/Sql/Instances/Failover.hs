{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SQLAdmin.Sql.Instances.Failover
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a manual failover of a high availability (HA) primary instance to a standby instance, which becomes the primary instance. Users are then rerouted to the new primary. For more information, see the <https://cloud.google.com/sql/docs/mysql/high-availability Overview of high availability> page in the Cloud SQL documentation. If using Legacy HA (MySQL only), this causes the instance to failover to its failover replica instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.failover@.
module Gogol.SQLAdmin.Sql.Instances.Failover
  ( -- * Resource
    SqlInstancesFailoverResource,

    -- ** Constructing a Request
    SqlInstancesFailover (..),
    newSqlInstancesFailover,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SQLAdmin.Types

-- | A resource alias for @sql.instances.failover@ method which the
-- 'SqlInstancesFailover' request conforms to.
type SqlInstancesFailoverResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "failover"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InstancesFailoverRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Initiates a manual failover of a high availability (HA) primary instance to a standby instance, which becomes the primary instance. Users are then rerouted to the new primary. For more information, see the <https://cloud.google.com/sql/docs/mysql/high-availability Overview of high availability> page in the Cloud SQL documentation. If using Legacy HA (MySQL only), this causes the instance to failover to its failover replica instance.
--
-- /See:/ 'newSqlInstancesFailover' smart constructor.
data SqlInstancesFailover = SqlInstancesFailover
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Cloud SQL instance ID. This does not include the project ID.
    instance' :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstancesFailoverRequest,
    -- | ID of the project that contains the read replica.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SqlInstancesFailover' with the minimum fields required to make a request.
newSqlInstancesFailover ::
  -- |  Cloud SQL instance ID. This does not include the project ID. See 'instance''.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstancesFailoverRequest ->
  -- |  ID of the project that contains the read replica. See 'project'.
  Core.Text ->
  SqlInstancesFailover
newSqlInstancesFailover instance' payload project =
  SqlInstancesFailover
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      payload = payload,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SqlInstancesFailover where
  type Rs SqlInstancesFailover = Operation
  type
    Scopes SqlInstancesFailover =
      '[CloudPlatform'FullControl, Sqlservice'Admin]
  requestClient SqlInstancesFailover {..} =
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
          ( Core.Proxy ::
              Core.Proxy SqlInstancesFailoverResource
          )
          Core.mempty
