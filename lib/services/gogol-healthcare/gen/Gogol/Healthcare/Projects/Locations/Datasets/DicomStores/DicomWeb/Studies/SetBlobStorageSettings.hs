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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.SetBlobStorageSettings
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SetBlobStorageSettings sets the blob storage settings of the specified resources.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.setBlobStorageSettings@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.SetBlobStorageSettings
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettingsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.setBlobStorageSettings@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettingsResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setBlobStorageSettings" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetBlobStorageSettingsRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | SetBlobStorageSettings sets the blob storage settings of the specified resources.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings = HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetBlobStorageSettingsRequest,
    -- | Required. The path of the resource to update the blob storage settings in the format of @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}@, @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/@, or @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@. If @filter_config@ is specified, set the value of @resource@ to the resource name of a DICOM store in the format @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}@.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings ::
  -- |  Multipart request metadata. See 'payload'.
  SetBlobStorageSettingsRequest ->
  -- |  Required. The path of the resource to update the blob storage settings in the format of @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}@, @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/@, or @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@. If @filter_config@ is specified, set the value of @resource@ to the resource name of a DICOM store in the format @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}@. See 'resource'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings
  payload
  resource =
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        payload =
          payload,
        resource =
          resource,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettings {..} =
      go
        resource
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
                  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSetBlobStorageSettingsResource
            )
            Core.mempty
