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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.QueryAccessibleData
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries all data_ids that are consented for a specified use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. If the request is successful, a detailed response is returned of type QueryAccessibleDataResponse, contained in the response field when the operation finishes. The metadata field type is OperationMetadata. Errors are logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). For example, the following sample log entry shows a @failed to evaluate consent policy@ error that occurred during a QueryAccessibleData call to consent store @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@.
-- @json jsonPayload: { \@type: \"type.googleapis.com\/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry\" error: { code: 9 message: \"failed to evaluate consent policy\" } resourceName: \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\" } logName: \"projects\/{project_id}\/logs\/healthcare.googleapis.com%2Fquery_accessible_data\" operation: { id: \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/operations\/{operation_id}\" producer: \"healthcare.googleapis.com\/QueryAccessibleData\" } receiveTimestamp: \"TIMESTAMP\" resource: { labels: { consent_store_id: \"{consent_store_id}\" dataset_id: \"{dataset_id}\" location: \"{location_id}\" project_id: \"{project_id}\" } type: \"healthcare_consent_store\" } severity: \"ERROR\" timestamp: \"TIMESTAMP\"@
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.queryAccessibleData@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.QueryAccessibleData
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleDataResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData,
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.queryAccessibleData@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleDataResource =
  "v1"
    Core.:> Core.CaptureMode
              "consentStore"
              "queryAccessibleData"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] QueryAccessibleDataRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Queries all data_ids that are consented for a specified use in the given consent store and writes them to a specified destination. The returned Operation includes a progress counter for the number of User data mappings processed. If the request is successful, a detailed response is returned of type QueryAccessibleDataResponse, contained in the response field when the operation finishes. The metadata field type is OperationMetadata. Errors are logged to Cloud Logging (see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>). For example, the following sample log entry shows a @failed to evaluate consent policy@ error that occurred during a QueryAccessibleData call to consent store @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@.
-- @json jsonPayload: { \@type: \"type.googleapis.com\/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry\" error: { code: 9 message: \"failed to evaluate consent policy\" } resourceName: \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\" } logName: \"projects\/{project_id}\/logs\/healthcare.googleapis.com%2Fquery_accessible_data\" operation: { id: \"projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/operations\/{operation_id}\" producer: \"healthcare.googleapis.com\/QueryAccessibleData\" } receiveTimestamp: \"TIMESTAMP\" resource: { labels: { consent_store_id: \"{consent_store_id}\" dataset_id: \"{dataset_id}\" location: \"{location_id}\" project_id: \"{project_id}\" } type: \"healthcare_consent_store\" } severity: \"ERROR\" timestamp: \"TIMESTAMP\"@
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData = HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store to retrieve User data mappings from.
    consentStore :: Core.Text,
    -- | Multipart request metadata.
    payload :: QueryAccessibleDataRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData ::
  -- |  Required. Name of the consent store to retrieve User data mappings from. See 'consentStore'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  QueryAccessibleDataRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData
newHealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData consentStore payload =
  HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      consentStore = consentStore,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleData {..} =
      go
        consentStore
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
                  HealthcareProjectsLocationsDatasetsConsentStoresQueryAccessibleDataResource
            )
            Core.mempty
