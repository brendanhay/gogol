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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.SearchForSeries
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForSeries returns a list of matching series. See [Search Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see <https://cloud.google.com/healthcare/docs/dicom#search_transaction Search transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames Searching for studies, series, instances, and frames>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Studies.SearchForSeries
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeriesResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.studies.searchForSeries@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeriesResource =
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

-- | SearchForSeries returns a list of matching series. See [Search Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6). For details on the implementation of SearchForSeries, see <https://cloud.google.com/healthcare/docs/dicom#search_transaction Search transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForSeries, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#searching_for_studies_series_instances_and_frames Searching for studies, series, instances, and frames>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries = HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The path of the SearchForSeries DICOMweb request. For example, @series@ or @studies\/{study_uid}\/series@.
    dicomWebPath :: Core.Text,
    -- | The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries ::
  -- |  The path of the SearchForSeries DICOMweb request. For example, @series@ or @studies\/{study_uid}\/series@. See 'dicomWebPath'.
  Core.Text ->
  -- |  The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries
newHealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries dicomWebPath parent =
  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries
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
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeries {..} =
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
                  HealthcareProjectsLocationsDatasetsDicomStoresStudiesSearchForSeriesResource
            )
            Core.mempty
