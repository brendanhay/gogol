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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Data Fusion instance in the specified project and location.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.create@.
module Gogol.DataFusion.Projects.Locations.Instances.Create
  ( -- * Resource
    DataFusionProjectsLocationsInstancesCreateResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesCreate (..),
    newDataFusionProjectsLocationsInstancesCreate,
  )
where

import Gogol.DataFusion.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datafusion.projects.locations.instances.create@ method which the
-- 'DataFusionProjectsLocationsInstancesCreate' request conforms to.
type DataFusionProjectsLocationsInstancesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "instances"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "instanceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a new Data Fusion instance in the specified project and location.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesCreate' smart constructor.
data DataFusionProjectsLocationsInstancesCreate = DataFusionProjectsLocationsInstancesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the instance to create. Instance name can only contain lowercase alphanumeric characters and hyphens. It must start with a letter and must not end with a hyphen. It can have a maximum of 30 characters.
    instanceId :: (Core.Maybe Core.Text),
    -- | Required. The instance\'s project and location in the format projects\/{project}\/locations\/{location}.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesCreate' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesCreate ::
  -- |  Required. The instance\'s project and location in the format projects\/{project}\/locations\/{location}. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  DataFusionProjectsLocationsInstancesCreate
newDataFusionProjectsLocationsInstancesCreate parent payload =
  DataFusionProjectsLocationsInstancesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsInstancesCreate
  where
  type Rs DataFusionProjectsLocationsInstancesCreate = Operation
  type
    Scopes DataFusionProjectsLocationsInstancesCreate =
      '[CloudPlatform'FullControl]
  requestClient DataFusionProjectsLocationsInstancesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      instanceId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataFusionService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataFusionProjectsLocationsInstancesCreateResource
          )
          Core.mempty
