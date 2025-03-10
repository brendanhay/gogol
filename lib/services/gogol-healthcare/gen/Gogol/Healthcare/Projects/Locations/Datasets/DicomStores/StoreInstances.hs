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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.StoreInstances
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.5). For details on the implementation of StoreInstances, see <https://cloud.google.com/healthcare/docs/dicom#store_transaction Store transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom Store DICOM data>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.storeInstances@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.StoreInstances
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstancesResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances (..),
    newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.storeInstances@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresStoreInstancesResource =
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
    Core.:> Core.ReqBody '[Core.JSON] HttpBody
    Core.:> Core.Post '[Core.JSON] HttpBody

-- | StoreInstances stores DICOM instances associated with study instance unique identifiers (SUID). See [Store Transaction] (http:\/\/dicom.nema.org\/medical\/dicom\/current\/output\/html\/part18.html#sect_10.5). For details on the implementation of StoreInstances, see <https://cloud.google.com/healthcare/docs/dicom#store_transaction Store transaction> in the Cloud Healthcare API conformance statement. For samples that show how to call StoreInstances, see <https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom Store DICOM data>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances = HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The path of the StoreInstances DICOMweb request. For example, @studies\/[{study_uid}]@. Note that the @study_uid@ is optional.
    dicomWebPath :: Core.Text,
    -- | Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: HttpBody,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances ::
  -- |  Required. The path of the StoreInstances DICOMweb request. For example, @studies\/[{study_uid}]@. Note that the @study_uid@ is optional. See 'dicomWebPath'.
  Core.Text ->
  -- |  Required. The name of the DICOM store that is being accessed. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  HttpBody ->
  HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances
newHealthcareProjectsLocationsDatasetsDicomStoresStoreInstances
  dicomWebPath
  parent
  payload =
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        dicomWebPath = dicomWebPath,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresStoreInstances {..} =
      go
        parent
        dicomWebPath
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
                  HealthcareProjectsLocationsDatasetsDicomStoresStoreInstancesResource
            )
            Core.mempty
