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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Rollback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back resources from the FHIR store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a detailed response of type RollbackFhirResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.rollback@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Rollback
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresRollbackResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresRollback (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresRollback,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.rollback@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresRollback' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresRollbackResource =
  "v1"
    Core.:> Core.CaptureMode "name" "rollback" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RollbackFhirResourcesRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Rolls back resources from the FHIR store to the specified time. This method returns an Operation that can be used to track the status of the rollback by calling GetOperation. Immediate fatal errors appear in the error field, errors are also logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). Otherwise, when the operation finishes, a detailed response of type RollbackFhirResourcesResponse is returned in the response field. The metadata field type for this operation is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresRollback' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresRollback = HealthcareProjectsLocationsDatasetsFhirStoresRollback
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the FHIR store to rollback, in the format of \"projects\/{project/id}\/locations\/{location/id}\/datasets\/{dataset/id} \/fhirStores\/{fhir/store_id}\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RollbackFhirResourcesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresRollback' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresRollback ::
  -- |  Required. The name of the FHIR store to rollback, in the format of \"projects\/{project/id}\/locations\/{location/id}\/datasets\/{dataset/id} \/fhirStores\/{fhir/store_id}\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RollbackFhirResourcesRequest ->
  HealthcareProjectsLocationsDatasetsFhirStoresRollback
newHealthcareProjectsLocationsDatasetsFhirStoresRollback
  name
  payload =
    HealthcareProjectsLocationsDatasetsFhirStoresRollback
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresRollback
  where
  type
    Rs HealthcareProjectsLocationsDatasetsFhirStoresRollback =
      Operation
  type
    Scopes HealthcareProjectsLocationsDatasetsFhirStoresRollback =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresRollback {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresRollbackResource
            )
            Core.mempty
