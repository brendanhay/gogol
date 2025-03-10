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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.GetSeriesMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetSeriesMetrics returns metrics for a series.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.getSeriesMetrics@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.Series.GetSeriesMetrics
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetricsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.series.getSeriesMetrics@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetricsResource =
  "v1"
    Core.:> Core.CaptureMode "series" "getSeriesMetrics" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SeriesMetrics

-- | GetSeriesMetrics returns metrics for a series.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics = HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The series resource path. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_uid}\/series\/{series_uid}@.
    series :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics ::
  -- |  Required. The series resource path. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_uid}\/series\/{series_uid}@. See 'series'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics
  series =
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        series =
          series,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics =
      SeriesMetrics
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetrics {..} =
      go
        series
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
                  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesGetSeriesMetricsResource
            )
            Core.mempty
