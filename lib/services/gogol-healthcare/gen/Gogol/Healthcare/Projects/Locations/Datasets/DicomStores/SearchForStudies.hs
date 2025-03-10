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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForStudies
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- SearchForStudies returns a list of matching studies. See [Search Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6). For details on the implementation of SearchForStudies, see <https://cloud.google.com/healthcare/docs/dicom#search_transaction Search transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForStudies, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom Search for DICOM data>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.searchForStudies@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.SearchForStudies
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudiesResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.searchForStudies@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudiesResource =
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

-- | SearchForStudies returns a list of matching studies. See [Search Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.6). For details on the implementation of SearchForStudies, see <https://cloud.google.com/healthcare/docs/dicom#search_transaction Search transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call SearchForStudies, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom Search for DICOM data>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies = HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The path of the SearchForStudies DICOMweb request. For example, @studies@.
    dicomWebPath :: Core.Text,
    -- | Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies ::
  -- |  Required. The path of the SearchForStudies DICOMweb request. For example, @studies@. See 'dicomWebPath'.
  Core.Text ->
  -- |  Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies
newHealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies
  dicomWebPath
  parent =
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        dicomWebPath = dicomWebPath,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudies {..} =
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
                  HealthcareProjectsLocationsDatasetsDicomStoresSearchForStudiesResource
            )
            Core.mempty
