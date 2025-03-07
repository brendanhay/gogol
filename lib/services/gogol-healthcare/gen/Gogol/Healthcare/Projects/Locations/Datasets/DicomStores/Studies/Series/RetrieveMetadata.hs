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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveMetadata
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveSeriesMetadata returns instance associated with the given study and series, presented as metadata with the bulk data removed. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4). For details on the implementation of RetrieveSeriesMetadata, see <https://cloud.google.com/healthcare/docs/dicom#metadata_resources Metadata resources> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeriesMetadata, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata Retrieve metadata>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.RetrieveMetadata
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadataResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.retrieveMetadata@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadataResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dicomWeb"
    Core.:> Core.Capture "dicomWebPath" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | RetrieveSeriesMetadata returns instance associated with the given study and series, presented as metadata with the bulk data removed. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4). For details on the implementation of RetrieveSeriesMetadata, see <https://cloud.google.com/healthcare/docs/dicom#metadata_resources Metadata resources> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveSeriesMetadata, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata Retrieve metadata>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The path of the RetrieveSeriesMetadata DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/metadata@.
    dicomWebPath :: Core.Text,
    -- | Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata ::
  -- |  Required. The path of the RetrieveSeriesMetadata DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/metadata@. See 'dicomWebPath'.
  Core.Text ->
  -- |  Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata
  dicomWebPath
  parent =
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback =
          Core.Nothing,
        dicomWebPath =
          dicomWebPath,
        parent = parent,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadata {..} =
      go
        parent
        dicomWebPath
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
                  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesRetrieveMetadataResource
            )
            Core.mempty
