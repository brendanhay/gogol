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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ExecuteBundle
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes all the requests in the given Bundle. Implements the FHIR standard batch\/transaction interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#transaction DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#transaction STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#transaction R4>). Supports all interactions within a bundle, except search. This method accepts Bundles of type @batch@ and @transaction@, processing them according to the batch processing rules (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1 DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1 STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#brules R4>) and transaction processing rules (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.2 DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2 STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#trules R4>). The request body must contain a JSON-encoded
-- FHIR @Bundle@ resource, and the request headers must contain @Content-Type: application\/fhir+json@. For a batch bundle or a successful transaction the response body will contain a JSON-encoded representation of a @Bundle@ resource of type @batch-response@ or @transaction-response@ containing one entry for each entry in the request, with the outcome of processing the entry. In the case of an error for a transaction bundle, the response body will contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @executeBundle@, see </healthcare/docs/how-tos/fhir-bundles Managing FHIR resources using FHIR bundles>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ExecuteBundle
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundleResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.executeBundle@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundleResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhir"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] HttpBody

-- | Executes all the requests in the given Bundle. Implements the FHIR standard batch\/transaction interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#transaction DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#transaction STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#transaction R4>). Supports all interactions within a bundle, except search. This method accepts Bundles of type @batch@ and @transaction@, processing them according to the batch processing rules (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1 DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1 STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#brules R4>) and transaction processing rules (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.2 DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2 STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#trules R4>). The request body must contain a JSON-encoded
-- FHIR @Bundle@ resource, and the request headers must contain @Content-Type: application\/fhir+json@. For a batch bundle or a successful transaction the response body will contain a JSON-encoded representation of a @Bundle@ resource of type @batch-response@ or @transaction-response@ containing one entry for each entry in the request, with the outcome of processing the entry. In the case of an error for a transaction bundle, the response body will contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @executeBundle@, see </healthcare/docs/how-tos/fhir-bundles Managing FHIR resources using FHIR bundles>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle = HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the FHIR store in which this bundle will be executed.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle ::
  -- |  Name of the FHIR store in which this bundle will be executed. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle
newHealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle parent payload =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundle {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirExecuteBundleResource
            )
            Core.mempty
