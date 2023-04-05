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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Vread
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of a version (current or historical) of a FHIR resource by version ID. Implements the FHIR standard vread interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#vread DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#vread STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#vread R4>). On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @vread@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version Retrieving a FHIR resource version>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.vread@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Vread
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVreadResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVread (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.vread@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirVread' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirVreadResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Gets the contents of a version (current or historical) of a FHIR resource by version ID. Implements the FHIR standard vread interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#vread DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#vread STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#vread R4>). On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @vread@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version Retrieving a FHIR resource version>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirVread = HealthcareProjectsLocationsDatasetsFhirStoresFhirVread
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource version to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirVread' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread ::
  -- |  The name of the resource version to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirVread
newHealthcareProjectsLocationsDatasetsFhirStoresFhirVread name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirVread
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVread
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirVread =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirVread =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirVread {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirVreadResource
            )
            Core.mempty
