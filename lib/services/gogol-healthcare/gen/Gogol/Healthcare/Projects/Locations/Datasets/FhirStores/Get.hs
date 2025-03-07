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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration of the specified FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresGet (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresGet,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresGet' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FhirStore

-- | Gets the configuration of the specified FHIR store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresGet' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresGet = HealthcareProjectsLocationsDatasetsFhirStoresGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the FHIR store to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresGet ::
  -- |  Required. The resource name of the FHIR store to get. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresGet
newHealthcareProjectsLocationsDatasetsFhirStoresGet name =
  HealthcareProjectsLocationsDatasetsFhirStoresGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresGet
  where
  type
    Rs HealthcareProjectsLocationsDatasetsFhirStoresGet =
      FhirStore
  type
    Scopes HealthcareProjectsLocationsDatasetsFhirStoresGet =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient HealthcareProjectsLocationsDatasetsFhirStoresGet {..} =
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
              Core.Proxy
                HealthcareProjectsLocationsDatasetsFhirStoresGetResource
          )
          Core.mempty
