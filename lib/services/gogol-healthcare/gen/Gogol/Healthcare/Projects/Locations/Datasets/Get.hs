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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets any metadata associated with a dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsGet (..),
    newHealthcareProjectsLocationsDatasetsGet,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsGet' request conforms to.
type HealthcareProjectsLocationsDatasetsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Dataset

-- | Gets any metadata associated with a dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsGet' smart constructor.
data HealthcareProjectsLocationsDatasetsGet = HealthcareProjectsLocationsDatasetsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the dataset to read. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsGet ::
  -- |  Required. The name of the dataset to read. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}@. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsGet
newHealthcareProjectsLocationsDatasetsGet name =
  HealthcareProjectsLocationsDatasetsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest HealthcareProjectsLocationsDatasetsGet where
  type Rs HealthcareProjectsLocationsDatasetsGet = Dataset
  type
    Scopes HealthcareProjectsLocationsDatasetsGet =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient HealthcareProjectsLocationsDatasetsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      healthcareService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy HealthcareProjectsLocationsDatasetsGetResource
          )
          Core.mempty
