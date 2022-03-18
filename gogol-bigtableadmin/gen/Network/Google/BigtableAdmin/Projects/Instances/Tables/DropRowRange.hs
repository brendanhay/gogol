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
-- Module      : Network.Google.BigtableAdmin.Projects.Instances.Tables.DropRowRange
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently drop\/delete a row range from a specified table. The request can specify whether to delete all rows in a table, or only those that match a particular prefix.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.dropRowRange@.
module Network.Google.BigtableAdmin.Projects.Instances.Tables.DropRowRange
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesDropRowRangeResource,

    -- ** Constructing a Request
    newBigtableAdminProjectsInstancesTablesDropRowRange,
    BigtableAdminProjectsInstancesTablesDropRowRange,
  )
where

import Network.Google.BigtableAdmin.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.dropRowRange@ method which the
-- 'BigtableAdminProjectsInstancesTablesDropRowRange' request conforms to.
type BigtableAdminProjectsInstancesTablesDropRowRangeResource =
  "v2"
    Core.:> Core.CaptureMode "name" "dropRowRange" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DropRowRangeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Permanently drop\/delete a row range from a specified table. The request can specify whether to delete all rows in a table, or only those that match a particular prefix.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesDropRowRange' smart constructor.
data BigtableAdminProjectsInstancesTablesDropRowRange = BigtableAdminProjectsInstancesTablesDropRowRange
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the table on which to drop a range of rows. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DropRowRangeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesDropRowRange' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesDropRowRange ::
  -- |  Required. The unique name of the table on which to drop a range of rows. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DropRowRangeRequest ->
  BigtableAdminProjectsInstancesTablesDropRowRange
newBigtableAdminProjectsInstancesTablesDropRowRange name payload =
  BigtableAdminProjectsInstancesTablesDropRowRange
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
    BigtableAdminProjectsInstancesTablesDropRowRange
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesDropRowRange =
      Empty
  type
    Scopes
      BigtableAdminProjectsInstancesTablesDropRowRange =
      '[ "https://www.googleapis.com/auth/bigtable.admin",
         "https://www.googleapis.com/auth/bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-bigtable.admin",
         "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesDropRowRange {..} =
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
                  BigtableAdminProjectsInstancesTablesDropRowRangeResource
            )
            Core.mempty
