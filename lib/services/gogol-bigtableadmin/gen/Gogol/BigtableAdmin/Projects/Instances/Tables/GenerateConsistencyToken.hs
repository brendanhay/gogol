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
-- Module      : Gogol.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a consistency token for a Table, which can be used in CheckConsistency to check whether mutations to the table that finished before this call started have been replicated. The tokens will be available for 90 days.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.generateConsistencyToken@.
module Gogol.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
  ( -- * Resource
    BigtableAdminProjectsInstancesTablesGenerateConsistencyTokenResource,

    -- ** Constructing a Request
    BigtableAdminProjectsInstancesTablesGenerateConsistencyToken (..),
    newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken,
  )
where

import Gogol.BigtableAdmin.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigtableadmin.projects.instances.tables.generateConsistencyToken@ method which the
-- 'BigtableAdminProjectsInstancesTablesGenerateConsistencyToken' request conforms to.
type BigtableAdminProjectsInstancesTablesGenerateConsistencyTokenResource =
  "v2"
    Core.:> Core.CaptureMode
              "name"
              "generateConsistencyToken"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GenerateConsistencyTokenRequest
    Core.:> Core.Post
              '[Core.JSON]
              GenerateConsistencyTokenResponse

-- | Generates a consistency token for a Table, which can be used in CheckConsistency to check whether mutations to the table that finished before this call started have been replicated. The tokens will be available for 90 days.
--
-- /See:/ 'newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken' smart constructor.
data BigtableAdminProjectsInstancesTablesGenerateConsistencyToken = BigtableAdminProjectsInstancesTablesGenerateConsistencyToken
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique name of the Table for which to create a consistency token. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateConsistencyTokenRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableAdminProjectsInstancesTablesGenerateConsistencyToken' with the minimum fields required to make a request.
newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken ::
  -- |  Required. The unique name of the Table for which to create a consistency token. Values are of the form @projects\/{project}\/instances\/{instance}\/tables\/{table}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateConsistencyTokenRequest ->
  BigtableAdminProjectsInstancesTablesGenerateConsistencyToken
newBigtableAdminProjectsInstancesTablesGenerateConsistencyToken name payload =
  BigtableAdminProjectsInstancesTablesGenerateConsistencyToken
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
    BigtableAdminProjectsInstancesTablesGenerateConsistencyToken
  where
  type
    Rs
      BigtableAdminProjectsInstancesTablesGenerateConsistencyToken =
      GenerateConsistencyTokenResponse
  type
    Scopes
      BigtableAdminProjectsInstancesTablesGenerateConsistencyToken =
      '[ Bigtable'Admin,
         Bigtable'Admin'Table,
         CloudBigtable'Admin,
         CloudBigtable'Admin'Table,
         CloudPlatform'FullControl
       ]
  requestClient
    BigtableAdminProjectsInstancesTablesGenerateConsistencyToken {..} =
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
                  BigtableAdminProjectsInstancesTablesGenerateConsistencyTokenResource
            )
            Core.mempty
