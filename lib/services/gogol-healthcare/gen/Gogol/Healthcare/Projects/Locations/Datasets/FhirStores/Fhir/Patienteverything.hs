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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patienteverything
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Patient resource and resources related to that patient. Implements the FHIR extended operation Patient-everything (<http://hl7.org/implement/standards/fhir/DSTU2/patient-operations.html#everything DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything STU3>, <http://hl7.org/implement/standards/fhir/R4/patient-operations.html#everything R4>). On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @searchset@, containing the results of the operation. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The resources in scope for the response are: * The patient resource itself. * All the resources directly referenced by the patient resource. * Resources directly referencing the patient resource that meet the inclusion criteria. The
-- inclusion criteria are based on the membership rules in the patient compartment definition (<http://hl7.org/fhir/DSTU2/compartment-patient.html DSTU2>, <http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html STU3>, <http://hl7.org/fhir/R4/compartmentdefinition-patient.html R4>), which details the eligible resource types and referencing search parameters. For samples that show how to call @Patient-everything@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources Getting all patient compartment resources>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Patienteverything@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patienteverything
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverythingResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Patienteverything@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverythingResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "$everything"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "_count" Core.Int32
    Core.:> Core.QueryParam "_page_token" Core.Text
    Core.:> Core.QueryParam "_since" Core.Text
    Core.:> Core.QueryParam "_type" Core.Text
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "end" Core.Text
    Core.:> Core.QueryParam "start" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Retrieves a Patient resource and resources related to that patient. Implements the FHIR extended operation Patient-everything (<http://hl7.org/implement/standards/fhir/DSTU2/patient-operations.html#everything DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything STU3>, <http://hl7.org/implement/standards/fhir/R4/patient-operations.html#everything R4>). On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @searchset@, containing the results of the operation. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. The resources in scope for the response are: * The patient resource itself. * All the resources directly referenced by the patient resource. * Resources directly referencing the patient resource that meet the inclusion criteria. The
-- inclusion criteria are based on the membership rules in the patient compartment definition (<http://hl7.org/fhir/DSTU2/compartment-patient.html DSTU2>, <http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html STU3>, <http://hl7.org/fhir/R4/compartmentdefinition-patient.html R4>), which details the eligible resource types and referencing search parameters. For samples that show how to call @Patient-everything@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources Getting all patient compartment resources>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything = HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Optional. Maximum number of resources in a page. If not specified, 100 is used. May not be larger than 1000.
    count :: (Core.Maybe Core.Int32),
    -- | Used to retrieve the next or previous page of results when using pagination. Set @_page_token@ to the value of /page/token set in next or previous page links\' url. Next and previous page are returned in the response bundle\'s links field, where @link.relation@ is \"previous\" or \"next\". Omit @_page_token@ if no previous request has been made.
    pageToken :: (Core.Maybe Core.Text),
    -- | Optional. If provided, only resources updated after this time are returned. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, @2015-02-07T13:28:17.239+02:00@ or @2017-01-01T00:00:00Z@. The time must be specified to the second and include a time zone.
    since :: (Core.Maybe Core.Text),
    -- | Optional. String of comma-delimited FHIR resource types. If provided, only resources of the specified resource type(s) are returned. Specifying multiple @_type@ parameters isn\'t supported. For example, the result of @_type=Observation&_type=Encounter@ is undefined. Use @_type=Observation,Encounter@ instead.
    type' :: (Core.Maybe Core.Text),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The response includes records prior to the end date. The date uses the format YYYY-MM-DD. If no end date is provided, all records subsequent to the start date are in scope.
    end :: (Core.Maybe Core.Text),
    -- | Required. Name of the @Patient@ resource for which the information is required.
    name :: Core.Text,
    -- | Optional. The response includes records subsequent to the start date. The date uses the format YYYY-MM-DD. If no start date is provided, all records prior to the end date are in scope.
    start :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything ::
  -- |  Required. Name of the @Patient@ resource for which the information is required. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything
  name =
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything
      { xgafv =
          Core.Nothing,
        count = Core.Nothing,
        pageToken = Core.Nothing,
        since = Core.Nothing,
        type' = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        end = Core.Nothing,
        name = name,
        start = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverything {..} =
      go
        name
        xgafv
        count
        pageToken
        since
        type'
        accessToken
        callback
        end
        start
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatienteverythingResource
            )
            Core.mempty
