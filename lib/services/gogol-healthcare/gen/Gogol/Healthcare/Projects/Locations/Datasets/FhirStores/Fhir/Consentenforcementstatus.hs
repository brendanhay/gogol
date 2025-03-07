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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Consentenforcementstatus
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the consent enforcement status of a single consent resource. On success, the response body contains a JSON-encoded representation of a @Parameters@ (http:\/\/hl7.org\/fhir\/parameters.html) FHIR resource, containing the current enforcement status. Does not support DSTU2.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Consentenforcementstatus@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Consentenforcementstatus
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatusResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Consentenforcementstatus@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatusResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "$consent-enforcement-status"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Returns the consent enforcement status of a single consent resource. On success, the response body contains a JSON-encoded representation of a @Parameters@ (http:\/\/hl7.org\/fhir\/parameters.html) FHIR resource, containing the current enforcement status. Does not support DSTU2.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus = HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the consent resource to find enforcement status, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/fhir\/Consent\/{consent_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus ::
  -- |  Required. The name of the consent resource to find enforcement status, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/fhir\/Consent\/{consent_id}@ See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus
newHealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus
  name =
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus
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
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatus {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirConsentenforcementstatusResource
            )
            Core.mempty
