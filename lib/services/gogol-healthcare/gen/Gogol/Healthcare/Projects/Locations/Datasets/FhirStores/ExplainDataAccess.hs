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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ExplainDataAccess
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Explains all the permitted\/denied actor, purpose and environment for a given resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.explainDataAccess@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.ExplainDataAccess
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccessResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.explainDataAccess@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccessResource =
  "v1"
    Core.:> Core.CaptureMode "name" "explainDataAccess" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "resourceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ExplainDataAccessResponse

-- | Explains all the permitted\/denied actor, purpose and environment for a given resource.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess = HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the FHIR store to enforce, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@.
    name :: Core.Text,
    -- | Required. The ID (@{resourceType}\/{id}@) of the resource to explain data access on.
    resourceId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess ::
  -- |  Required. The name of the FHIR store to enforce, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess
newHealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess
  name =
    HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        resourceId = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess =
      ExplainDataAccessResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccess {..} =
      go
        name
        xgafv
        accessToken
        callback
        resourceId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsFhirStoresExplainDataAccessResource
            )
            Core.mempty
