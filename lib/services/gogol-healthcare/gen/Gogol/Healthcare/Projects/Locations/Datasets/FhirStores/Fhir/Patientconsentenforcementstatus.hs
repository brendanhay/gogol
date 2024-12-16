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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patientconsentenforcementstatus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the consent enforcement status of all consent resources for a patient. On success, the response body contains a JSON-encoded representation of a bundle of @Parameters@ (http:\/\/hl7.org\/fhir\/parameters.html) FHIR resources, containing the current enforcement status for each consent resource of the patient. Does not support DSTU2.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Patientconsentenforcementstatus@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patientconsentenforcementstatus
    (
    -- * Resource
      HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatusResource

    -- ** Constructing a Request
    , HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus (..)
    , newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Healthcare.Types

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Patientconsentenforcementstatus@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatusResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "$consent-enforcement-status" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "_count" Core.Int32 Core.:>
               Core.QueryParam "_page_token" Core.Text Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] HttpBody

-- | Returns the consent enforcement status of all consent resources for a patient. On success, the response body contains a JSON-encoded representation of a bundle of @Parameters@ (http:\/\/hl7.org\/fhir\/parameters.html) FHIR resources, containing the current enforcement status for each consent resource of the patient. Does not support DSTU2.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus = HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | Optional. The maximum number of results on a page. If not specified, 100 is used. May not be larger than 1000.
    , count :: (Core.Maybe Core.Int32)
      -- | Optional. Used to retrieve the first, previous, next, or last page of consent enforcement statuses when using pagination. Value should be set to the value of @_page_token@ set in next or previous page links\' URLs. Next and previous page are returned in the response bundle\'s links field, where @link.relation@ is \"previous\" or \"next\". Omit @_page_token@ if no previous request has been made.
    , pageToken :: (Core.Maybe Core.Text)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the patient to find enforcement statuses, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/fhir\/Patient\/{patient_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus 
    ::  Core.Text
       -- ^  Required. The name of the patient to find enforcement statuses, in the format @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}\/fhir\/Patient\/{patient_id}@ See 'name'.
    -> HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
    { xgafv = Core.Nothing
    , count = Core.Nothing
    , pageToken = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
         where
        type Rs
               HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
             = HttpBody
        type Scopes
               HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus
             =
             '[CloudHealthcare'FullControl,
               CloudPlatform'FullControl]
        requestClient
          HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatus{..}
          = go name xgafv count pageToken accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              healthcareService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           HealthcareProjectsLocationsDatasetsFhirStoresFhirPatientconsentenforcementstatusResource)
                      Core.mempty

