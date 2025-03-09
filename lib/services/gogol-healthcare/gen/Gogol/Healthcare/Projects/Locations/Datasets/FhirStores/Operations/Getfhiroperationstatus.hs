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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Operations.Getfhiroperationstatus
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of operations as defined in the FHIR specification. Implements the FHIR implementation guide <https://build.fhir.org/ig/HL7/bulk-data/export.html#bulk-data-status-request bulk data status request>. Operations can have one of these states: * in-progress: response status code is @202@ and @X-Progress@ header is set to @in progress@. * complete: response status code is @200@ and the body is a JSON-encoded operation response as defined by the spec. For a bulk export, this response is defined in https:\/\/build.fhir.org\/ig\/HL7\/bulk-data\/export.html#response---complete-status. * error: response status code is @5XX@, and the body is a JSON-encoded @OperationOutcome@ resource describing the reason for the error.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.operations.getfhiroperationstatus@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Operations.Getfhiroperationstatus
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatusResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.operations.getfhiroperationstatus@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatusResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Gets the status of operations as defined in the FHIR specification. Implements the FHIR implementation guide <https://build.fhir.org/ig/HL7/bulk-data/export.html#bulk-data-status-request bulk data status request>. Operations can have one of these states: * in-progress: response status code is @202@ and @X-Progress@ header is set to @in progress@. * complete: response status code is @200@ and the body is a JSON-encoded operation response as defined by the spec. For a bulk export, this response is defined in https:\/\/build.fhir.org\/ig\/HL7\/bulk-data\/export.html#response---complete-status. * error: response status code is @5XX@, and the body is a JSON-encoded @OperationOutcome@ resource describing the reason for the error.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus = HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the operation to query, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/operations\/{operation_id}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus ::
  -- |  Required. Name of the operation to query, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/operations\/{operation_id}@. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus
newHealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus
  name =
    HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        name = name,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatus {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresOperationsGetfhiroperationstatusResource
            )
            Core.mempty
