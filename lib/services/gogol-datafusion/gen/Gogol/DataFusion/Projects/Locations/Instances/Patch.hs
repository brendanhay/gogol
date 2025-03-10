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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a single Data Fusion instance.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.patch@.
module Gogol.DataFusion.Projects.Locations.Instances.Patch
  ( -- * Resource
    DataFusionProjectsLocationsInstancesPatchResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesPatch (..),
    newDataFusionProjectsLocationsInstancesPatch,
  )
where

import Gogol.DataFusion.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datafusion.projects.locations.instances.patch@ method which the
-- 'DataFusionProjectsLocationsInstancesPatch' request conforms to.
type DataFusionProjectsLocationsInstancesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Instance
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a single Data Fusion instance.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesPatch' smart constructor.
data DataFusionProjectsLocationsInstancesPatch = DataFusionProjectsLocationsInstancesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The name of this instance is in the form of projects\/{project}\/locations\/{location}\/instances\/{instance}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Instance,
    -- | Field mask is used to specify the fields that the update will overwrite in an instance resource. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask, the label field will be overwritten.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesPatch' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesPatch ::
  -- |  Output only. The name of this instance is in the form of projects\/{project}\/locations\/{location}\/instances\/{instance}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Instance ->
  DataFusionProjectsLocationsInstancesPatch
newDataFusionProjectsLocationsInstancesPatch name payload =
  DataFusionProjectsLocationsInstancesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataFusionProjectsLocationsInstancesPatch
  where
  type Rs DataFusionProjectsLocationsInstancesPatch = Operation
  type
    Scopes DataFusionProjectsLocationsInstancesPatch =
      '[CloudPlatform'FullControl]
  requestClient DataFusionProjectsLocationsInstancesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dataFusionService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DataFusionProjectsLocationsInstancesPatchResource
          )
          Core.mempty
