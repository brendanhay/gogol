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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.DicomStores.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into the DICOM store by copying it from the specified source. Errors are logged to Cloud Logging. For more information, see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>. The metadata field type is OperationMetadata.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.import@.
module Network.Google.Healthcare.Projects.Locations.Datasets.DicomStores.Import
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresImportResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsDicomStoresImport,
    HealthcareProjectsLocationsDatasetsDicomStoresImport,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.import@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresImport' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresImportResource =
  "v1"
    Core.:> Core.CaptureMode "name" "import" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ImportDicomDataRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Imports data into the DICOM store by copying it from the specified source. Errors are logged to Cloud Logging. For more information, see <https://cloud.google.com/healthcare/docs/how-tos/logging Viewing error logs in Cloud Logging>. The metadata field type is OperationMetadata.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresImport' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresImport = HealthcareProjectsLocationsDatasetsDicomStoresImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the DICOM store resource into which the data is imported. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ImportDicomDataRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresImport' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresImport ::
  -- |  The name of the DICOM store resource into which the data is imported. For example, @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/dicomStores\/{dicom_store_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ImportDicomDataRequest ->
  HealthcareProjectsLocationsDatasetsDicomStoresImport
newHealthcareProjectsLocationsDatasetsDicomStoresImport name payload =
  HealthcareProjectsLocationsDatasetsDicomStoresImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresImport
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresImport =
      Operation
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresImport =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresImport {..} =
      go
        name
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
                  HealthcareProjectsLocationsDatasetsDicomStoresImportResource
            )
            Core.mempty
