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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single Date Fusion instance.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.delete@.
module Gogol.DataFusion.Projects.Locations.Instances.Delete
  ( -- * Resource
    DataFusionProjectsLocationsInstancesDeleteResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesDelete (..),
    newDataFusionProjectsLocationsInstancesDelete,
  )
where

import Gogol.DataFusion.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datafusion.projects.locations.instances.delete@ method which the
-- 'DataFusionProjectsLocationsInstancesDelete' request conforms to.
type DataFusionProjectsLocationsInstancesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a single Date Fusion instance.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesDelete' smart constructor.
data DataFusionProjectsLocationsInstancesDelete = DataFusionProjectsLocationsInstancesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The instance resource name in the format projects\/{project}\/locations\/{location}\/instances\/{instance}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesDelete' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesDelete ::
  -- |  Required. The instance resource name in the format projects\/{project}\/locations\/{location}\/instances\/{instance} See 'name'.
  Core.Text ->
  DataFusionProjectsLocationsInstancesDelete
newDataFusionProjectsLocationsInstancesDelete name =
  DataFusionProjectsLocationsInstancesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsInstancesDelete
  where
  type Rs DataFusionProjectsLocationsInstancesDelete = Operation
  type
    Scopes DataFusionProjectsLocationsInstancesDelete =
      '[CloudPlatform'FullControl]
  requestClient DataFusionProjectsLocationsInstancesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dataFusionService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataFusionProjectsLocationsInstancesDeleteResource
          )
          Core.mempty
