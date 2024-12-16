{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryupdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the entire contents of a Binary resource. If the specified resource does not exist and the FHIR store has enable/update/create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub\/Sub notifications. Those IDs can also be contained in reference fields within other resources. This method can be used to update a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is updated with this method using the FHIR content type this method\'s behavior is the same as @update@. If a resource type other than Binary is used in the request it will be treated in the same way as non-FHIR data. When a non-FHIR content type is used in the request, a Binary resource will be generated using the ID from the resource path, and the uploaded data will be
-- stored in the @content@ field (@DSTU2@ and @STU3@), or the @data@ field (@R4@). The Binary resource\'s @contentType@ will be filled in using the value of the @Content-Type@ header, and the @securityContext@ field (not present in @DSTU2@) will be populated from the @X-Security-Context@ header if it exists. At this time @securityContext@ has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 2 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as <https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery exporting to BigQuery> or <https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high Pub\/Sub notifications> with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource\'s @data@ field will be omitted. Instead, the
-- \"http:\/\/hl7.org\/fhir\/StructureDefinition\/data-absent-reason\" extension will be present to indicate that including the data is @unsupported@. On success, an empty 200 OK response will be returned, or a 201 Created if the resource did not exit. The resource\'s ID and version are returned in the Location header. Using @Prefer: representation=resource@ is not allowed for this method. The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Binaryupdate@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Binaryupdate
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdateResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Binaryupdate@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdateResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] HttpBody Core.:>
                       Core.Put '[Core.JSON] HttpBody

-- | Updates the entire contents of a Binary resource. If the specified resource does not exist and the FHIR store has enable/update/create set, creates the resource with the client-specified ID. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud Audit Logs and Pub\/Sub notifications. Those IDs can also be contained in reference fields within other resources. This method can be used to update a Binary resource either by using one of the accepted FHIR JSON content types, or as a raw data stream. If a resource is updated with this method using the FHIR content type this method\'s behavior is the same as @update@. If a resource type other than Binary is used in the request it will be treated in the same way as non-FHIR data. When a non-FHIR content type is used in the request, a Binary resource will be generated using the ID from the resource path, and the uploaded data will be
-- stored in the @content@ field (@DSTU2@ and @STU3@), or the @data@ field (@R4@). The Binary resource\'s @contentType@ will be filled in using the value of the @Content-Type@ header, and the @securityContext@ field (not present in @DSTU2@) will be populated from the @X-Security-Context@ header if it exists. At this time @securityContext@ has no special behavior in the Cloud Healthcare API. Note: the limit on data ingested through this method is 2 GB. For best performance, use a non-FHIR data type instead of wrapping the data in a Binary resource. Some of the Healthcare API features, such as <https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery exporting to BigQuery> or <https://cloud.google.com/healthcare-api/docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high Pub\/Sub notifications> with full resource content, do not support Binary resources that are larger than 10 MB. In these cases the resource\'s @data@ field will be omitted. Instead, the
-- \"http:\/\/hl7.org\/fhir\/StructureDefinition\/data-absent-reason\" extension will be present to indicate that including the data is @unsupported@. On success, an empty 200 OK response will be returned, or a 201 Created if the resource did not exit. The resource\'s ID and version are returned in the Location header. Using @Prefer: representation=resource@ is not allowed for this method. The definition of the Binary REST API can be found at https:\/\/hl7.org\/fhir\/binary.html#rest.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate = HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the resource to update.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: HttpBody
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate 
    ::  Core.Text
       -- ^  Required. The name of the resource to update. See 'name'.
    -> HttpBody
       -- ^  Multipart request metadata. See 'payload'.
    -> HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
newHealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate name payload =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresFhirBinaryupdateResource)
                      Core.mempty

