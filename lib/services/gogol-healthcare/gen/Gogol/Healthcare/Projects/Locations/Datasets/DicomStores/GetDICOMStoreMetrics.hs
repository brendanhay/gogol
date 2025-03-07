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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.GetDICOMStoreMetrics
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metrics associated with the DICOM store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.getDICOMStoreMetrics@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.GetDICOMStoreMetrics
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetricsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.getDICOMStoreMetrics@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetricsResource =
  "v1"
    Core.:> Core.CaptureMode "name" "getDICOMStoreMetrics" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DicomStoreMetrics

-- | Gets metrics associated with the DICOM store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics = HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the DICOM store to get metrics for.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics ::
  -- |  Required. The resource name of the DICOM store to get metrics for. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics
newHealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics
  name =
    HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics =
      DicomStoreMetrics
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetrics {..} =
      go
        name
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
                  HealthcareProjectsLocationsDatasetsDicomStoresGetDICOMStoreMetricsResource
            )
            Core.mempty
