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
-- Module      : Network.Google.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks replication consistency based on a consistency token, that is, if replication has caught up based on the conditions specified in the token and the check request.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.checkConsistency@.
module Network.Google.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesCheckConsistencyResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesTablesCheckConsistency,
    BigtableAdminProjectsInstancesTablesCheckConsistency,
  )
where

import Network.Google.BigtableAdmin.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.checkConsistency@ method which the
-- 'BigtableAdminProjectsInstancesTablesCheckConsistency' request conforms to.
type BigtableAdminProjectsInstancesTablesCheckConsistencyResource =
  "v2"
    Core.:> Core.CaptureMode "name" "checkConsistency" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckConsistencyRequest
    Core.:> Core.Post '[Core.JSON] CheckConsistencyResponse

-- | Checks replication consistency based on a consistency token, that is, if replication has caught up based on the conditions specified in the token and the check request.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesCheckConsistency' smart constructor.
data BigtableAdminProjectsInstancesTablesCheckConsistency = BigtableAdminProjectsInstancesTablesCheckConsistency
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the Table for which to check replication consistency. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CheckConsistencyRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesCheckConsistency' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesCheckConsistency ::
  -- |  Required. The unique name of the Table for which to check replication consistency. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckConsistencyRequest ->
  BigtableAdminProjectsInstancesTablesCheckConsistency
newBigtableAdminProjectsInstancesTablesCheckConsistency name payload =
  BigtableAdminProjectsInstancesTablesCheckConsistency
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BigtableAdminProjectsInstancesTablesCheckConsistency
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesCheckConsistency =
      CheckConsistencyResponse
  type
    Scopes
      BigtableAdminProjectsInstancesTablesCheckConsistency =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesCheckConsistency {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        bigtableAdminService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigtableAdminProjectsInstancesTablesCheckConsistencyResource
            )
            Core.mempty
