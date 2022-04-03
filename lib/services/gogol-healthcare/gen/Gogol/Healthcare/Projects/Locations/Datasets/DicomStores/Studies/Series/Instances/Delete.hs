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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DeleteInstance deletes an instance associated with the given study, series, and SOP Instance UID. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. Study and series search results can take a few seconds to be updated after an instance is deleted using DeleteInstance. For samples that show how to call DeleteInstance, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance Deleting a study, series, or instance>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.Series.Instances.Delete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDeleteResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.series.instances.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] Empty

-- | DeleteInstance deletes an instance associated with the given study, series, and SOP Instance UID. Delete requests are equivalent to the GET requests specified in the Retrieve transaction. Study and series search results can take a few seconds to be updated after an instance is deleted using DeleteInstance. For samples that show how to call DeleteInstance, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#deleting_a_study_series_or_instance Deleting a study, series, or instance>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The path of the DeleteInstance request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}@.
    dicomWebPath :: Core.Text,
    -- | The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete ::
  -- |  The path of the DeleteInstance request. For example, @studies\/{study_uid}\/series\/{series_uid}\/instances\/{instance_uid}@. See 'dicomWebPath'.
  Core.Text ->
  -- |  The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete dicomWebPath parent =
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete
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
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete =
      Empty
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDelete {..} =
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
                  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesDeleteResource
            )
            Core.mempty
