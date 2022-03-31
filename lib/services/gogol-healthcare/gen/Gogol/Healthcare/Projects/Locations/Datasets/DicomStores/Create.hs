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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DICOM store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.DicomStores.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsDicomStoresCreateResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsDicomStoresCreate,
    HealthcareProjectsLocationsDatasetsDicomStoresCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsDicomStoresCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsDicomStoresCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dicomStores"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "dicomStoreId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DicomStore
    Core.:> Core.Post '[Core.JSON] DicomStore

-- | Creates a new DICOM store within the parent dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsDicomStoresCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsDicomStoresCreate = HealthcareProjectsLocationsDatasetsDicomStoresCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
    dicomStoreId :: (Core.Maybe Core.Text),
    -- | The name of the dataset this DICOM store belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: DicomStore,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsDicomStoresCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsDicomStoresCreate ::
  -- |  The name of the dataset this DICOM store belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DicomStore ->
  HealthcareProjectsLocationsDatasetsDicomStoresCreate
newHealthcareProjectsLocationsDatasetsDicomStoresCreate parent payload =
  HealthcareProjectsLocationsDatasetsDicomStoresCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dicomStoreId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsDicomStoresCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsDicomStoresCreate =
      DicomStore
  type
    Scopes
      HealthcareProjectsLocationsDatasetsDicomStoresCreate =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsDicomStoresCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        dicomStoreId
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
                  HealthcareProjectsLocationsDatasetsDicomStoresCreateResource
            )
            Core.mempty
