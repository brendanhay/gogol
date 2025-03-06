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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binarycreate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a FHIR Binary resource. This method can be used to create a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is created with this method using the FHIR content type this method\'s behavior is the same as <https://cloud.google.com/healthcare-api/docs/reference/rest/v1/projects.locations.datasets.fhirStores.fhir/create fhir.create>. If a resource type other than Binary is used in the request it\'s treated in the same way as non-FHIR data (e.g., images, zip archives, pdf files, documents). When a non-FHIR content type is used in the request, a Binary resource will be generated, and the uploaded data will be stored in the @content@ field (@DSTU2@ and @STU3@), or the @data@ field (@R4@). The Binary resource\'s @contentType@ will be filled in using the value of the @Content-Type@ header, and the @securityContext@ field (not present in @DSTU2@) will be populated from the @X-Security-Context@ header if it exists. At this time @securityContext@
-- has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 1 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as <https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery exporting to BigQuery> or <https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high Pub\/Sub notifications> with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource\'s @data@ field will be omitted. Instead, the \"http:\/\/hl7.org\/fhir\/StructureDefinition\/data-absent-reason\" extension will be present to indicate that including the data is @unsupported@. On success, an empty @201 Created@ response is returned. The newly created resource\'s ID and version are returned in the Location header. Using @Prefer: representation=resource@ is not allowed for this method.
-- The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Binarycreate@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binarycreate
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreateResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Binarycreate@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhir"
    Core.:> "Binary"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] HttpBody

-- | Creates a FHIR Binary resource. This method can be used to create a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is created with this method using the FHIR content type this method\'s behavior is the same as <https://cloud.google.com/healthcare-api/docs/reference/rest/v1/projects.locations.datasets.fhirStores.fhir/create fhir.create>. If a resource type other than Binary is used in the request it\'s treated in the same way as non-FHIR data (e.g., images, zip archives, pdf files, documents). When a non-FHIR content type is used in the request, a Binary resource will be generated, and the uploaded data will be stored in the @content@ field (@DSTU2@ and @STU3@), or the @data@ field (@R4@). The Binary resource\'s @contentType@ will be filled in using the value of the @Content-Type@ header, and the @securityContext@ field (not present in @DSTU2@) will be populated from the @X-Security-Context@ header if it exists. At this time @securityContext@
-- has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 1 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as <https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery exporting to BigQuery> or <https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high Pub\/Sub notifications> with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource\'s @data@ field will be omitted. Instead, the \"http:\/\/hl7.org\/fhir\/StructureDefinition\/data-absent-reason\" extension will be present to indicate that including the data is @unsupported@. On success, an empty @201 Created@ response is returned. The newly created resource\'s ID and version are returned in the Location header. Using @Prefer: representation=resource@ is not allowed for this method.
-- The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate = HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the FHIR store this resource belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate ::
  -- |  Required. The name of the FHIR store this resource belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate
  parent
  payload =
    HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirBinarycreateResource
            )
            Core.mempty
