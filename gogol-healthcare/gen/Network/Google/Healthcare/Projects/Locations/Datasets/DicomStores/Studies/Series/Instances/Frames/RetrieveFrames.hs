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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RetrieveFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4}. For details on the implementation of RetrieveFrames, see <https://cloud.google.com/healthcare/docs/dicom#dicom_frames DICOM frames> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveFrames, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data Retrieving DICOM data>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames@.
module Network.Google.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Frames.RetrieveFrames
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames,
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.frames.retrieveFrames@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource =
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

-- | RetrieveFrames returns instances associated with the given study, series, SOP Instance UID and frame numbers. See [RetrieveTransaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.4}. For details on the implementation of RetrieveFrames, see <https://cloud.google.com/healthcare/docs/dicom#dicom_frames DICOM frames> in the Cloud Healthcare API conformance statement. For samples that show how to call RetrieveFrames, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieving_dicom_data Retrieving DICOM data>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The path of the RetrieveFrames DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/frames\/{frame_list}@.
    dicomWebPath :: Core.Text,
    -- | The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames ::
  -- |  The path of the RetrieveFrames DICOMweb request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}\/frames\/{frame_list}@. See 'dicomWebPath'.
  Core.Text ->
  -- |  The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames dicomWebPath parent =
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dicomWebPath = dicomWebPath,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFrames {..} =
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
                  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesRetrieveFramesResource
            )
            Core.mempty
