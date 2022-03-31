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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Read
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the contents of a FHIR resource. Implements the FHIR standard read interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#read DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#read STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#read R4>). Also supports the FHIR standard conditional read interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#cread STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#cread R4>) specified by supplying an @If-Modified-Since@ header with a date\/time value or an @If-None-Match@ header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that
-- show how to call @read@, see </healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource Getting a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.read@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Read
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirReadResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirRead,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.read@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirRead' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirReadResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Gets the contents of a FHIR resource. Implements the FHIR standard read interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#read DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#read STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#read R4>). Also supports the FHIR standard conditional read interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#cread STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#cread R4>) specified by supplying an @If-Modified-Since@ header with a date\/time value or an @If-None-Match@ header with an ETag value. On success, the response body contains a JSON-encoded representation of the resource. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that
-- show how to call @read@, see </healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource Getting a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirRead = HealthcareProjectsLocationsDatasetsFhirStoresFhirRead
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirRead' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead ::
  -- |  The name of the resource to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirRead
newHealthcareProjectsLocationsDatasetsFhirStoresFhirRead name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirRead
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirRead
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirRead =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirRead =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirRead {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirReadResource
            )
            Core.mempty
