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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the complete list of CMLE capabilities in a location, along with their location-specific properties.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.get@.
module Gogol.MachineLearning.Ml.Projects.Locations.Get
  ( -- * Resource
    MlProjectsLocationsGetResource,

    -- ** Constructing a Request
    MlProjectsLocationsGet (..),
    newMlProjectsLocationsGet,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.locations.get@ method which the
-- 'MlProjectsLocationsGet' request conforms to.
type MlProjectsLocationsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudMlV1__Location

-- | Get the complete list of CMLE capabilities in a location, along with their location-specific properties.
--
-- /See:/ 'newMlProjectsLocationsGet' smart constructor.
data MlProjectsLocationsGet = MlProjectsLocationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the location.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsGet' with the minimum fields required to make a request.
newMlProjectsLocationsGet ::
  -- |  Required. The name of the location. See 'name'.
  Core.Text ->
  MlProjectsLocationsGet
newMlProjectsLocationsGet name =
  MlProjectsLocationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsLocationsGet where
  type Rs MlProjectsLocationsGet = GoogleCloudMlV1__Location
  type
    Scopes MlProjectsLocationsGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient MlProjectsLocationsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      machineLearningService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MlProjectsLocationsGetResource)
          Core.mempty
