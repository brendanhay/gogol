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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Capabilities
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the FHIR capability statement (<http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html STU3>, <http://hl7.org/implement/standards/fhir/R4/capabilitystatement.html R4>), or the <http://hl7.org/implement/standards/fhir/DSTU2/conformance.html conformance statement> in the DSTU2 case for the store, which contains a description of functionality supported by the server. Implements the FHIR standard capabilities interaction (<http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#capabilities R4>), or the <http://hl7.org/implement/standards/fhir/DSTU2/http.html#conformance conformance interaction> in the DSTU2 case. On success, the response body contains a JSON-encoded representation of a @CapabilityStatement@ resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.capabilities@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Capabilities
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilitiesResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.capabilities@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilitiesResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "fhir"
    Core.:> "metadata"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Gets the FHIR capability statement (<http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html STU3>, <http://hl7.org/implement/standards/fhir/R4/capabilitystatement.html R4>), or the <http://hl7.org/implement/standards/fhir/DSTU2/conformance.html conformance statement> in the DSTU2 case for the store, which contains a description of functionality supported by the server. Implements the FHIR standard capabilities interaction (<http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#capabilities R4>), or the <http://hl7.org/implement/standards/fhir/DSTU2/http.html#conformance conformance interaction> in the DSTU2 case. On success, the response body contains a JSON-encoded representation of a @CapabilityStatement@ resource.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities = HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the FHIR store to retrieve the capabilities for.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities ::
  -- |  Name of the FHIR store to retrieve the capabilities for. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities
newHealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilities {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirCapabilitiesResource
            )
            Core.mempty
