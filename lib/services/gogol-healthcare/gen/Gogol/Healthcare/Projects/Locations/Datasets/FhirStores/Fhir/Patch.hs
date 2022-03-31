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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates part of an existing resource by applying the operations specified in a <http://jsonpatch.com/ JSON Patch> document. Implements the FHIR standard patch interaction (<http://hl7.org/implement/standards/fhir/STU3/http.html#patch STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#patch R4>). DSTU2 doesn\'t define a patch method, but the server supports it in the same way it supports STU3. The request body must contain a JSON Patch document, and the request headers must contain @Content-Type: application\/json-patch+json@. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @patch@, see
-- </healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource Patching a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatchResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Patch '[Core.JSON] HttpBody

-- | Updates part of an existing resource by applying the operations specified in a <http://jsonpatch.com/ JSON Patch> document. Implements the FHIR standard patch interaction (<http://hl7.org/implement/standards/fhir/STU3/http.html#patch STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#patch R4>). DSTU2 doesn\'t define a patch method, but the server supports it in the same way it supports STU3. The request body must contain a JSON Patch document, and the request headers must contain @Content-Type: application\/json-patch+json@. On success, the response body contains a JSON-encoded representation of the updated resource, including the server-assigned version ID. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @patch@, see
-- </healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource Patching a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch = HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to update.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch ::
  -- |  The name of the resource to update. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch
newHealthcareProjectsLocationsDatasetsFhirStoresFhirPatch name payload =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirPatch {..} =
      go
        name
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirPatchResource
            )
            Core.mempty
