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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.Instances.GetStorageInfo
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetStorageInfo returns the storage info of the specified resource.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.instances.getStorageInfo@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.Instances.GetStorageInfo
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfoResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.instances.getStorageInfo@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfoResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "getStorageInfo" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StorageInfo

-- | GetStorageInfo returns the storage info of the specified resource.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo = HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The path of the instance to return storage info for, in the form: @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo ::
  -- |  Required. The path of the instance to return storage info for, in the form: @projects\/{projectID}\/locations\/{locationID}\/datasets\/{datasetID}\/dicomStores\/{dicomStoreID}\/dicomWeb\/studies\/{studyUID}\/series\/{seriesUID}\/instances\/{instanceUID}@ See 'resource'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo
  resource =
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        resource =
          resource,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo =
      StorageInfo
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfo {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesInstancesGetStorageInfoResource
            )
            Core.mempty
