{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.GetStudyMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetStudyMetrics returns metrics for a study.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.getStudyMetrics@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.DicomWeb.Studies.GetStudyMetrics
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetricsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.dicomWeb.studies.getStudyMetrics@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetricsResource =
  "v1"
    Core.:> Core.CaptureMode "study" "getStudyMetrics" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StudyMetrics

-- | GetStudyMetrics returns metrics for a study.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics = HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The study resource path. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_uid}@.
    study :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics ::
  -- |  Required. The study resource path. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}\/dicomWeb\/studies\/{study_uid}@. See 'study'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics
newHealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics
  study =
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        study = study,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics =
      StudyMetrics
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetrics {..} =
      go
        study
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
                  HealthcareProjectsLocationsDatasetsDicomStoresDicomWebStudiesGetStudyMetricsResource
            )
            Core.mempty
