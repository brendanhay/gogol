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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Deidentify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyFhirStoreSummary. If errors occur, error is set. Error details are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.deidentify@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Deidentify
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentifyResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify,
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentify,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.deidentify@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresDeidentify' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresDeidentifyResource =
  "v1"
    Core.:> Core.CaptureMode "sourceStore" "deidentify" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeidentifyFhirStoreRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | De-identifies data from the source store and writes it to the destination store. The metadata field type is OperationMetadata. If the request is successful, the response field type is DeidentifyFhirStoreSummary. If errors occur, error is set. Error details are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>).
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresDeidentify = HealthcareProjectsLocationsDatasetsFhirStoresDeidentify
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DeidentifyFhirStoreRequest,
    -- | Source FHIR store resource name. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@.
    sourceStore :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresDeidentify' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify ::
  -- |  Multipart request metadata. See 'payload'.
  DeidentifyFhirStoreRequest ->
  -- |  Source FHIR store resource name. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@. See 'sourceStore'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresDeidentify
newHealthcareProjectsLocationsDatasetsFhirStoresDeidentify payload sourceStore =
  HealthcareProjectsLocationsDatasetsFhirStoresDeidentify
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      sourceStore = sourceStore,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentify
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresDeidentify =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresDeidentify =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresDeidentify {..} =
      go
        sourceStore
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
                  HealthcareProjectsLocationsDatasetsFhirStoresDeidentifyResource
            )
            Core.mempty
