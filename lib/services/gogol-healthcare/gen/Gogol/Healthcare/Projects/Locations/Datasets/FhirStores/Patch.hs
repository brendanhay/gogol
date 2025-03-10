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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresPatchResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresPatch (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresPatch,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FhirStore
    Core.:> Core.Patch '[Core.JSON] FhirStore

-- | Updates the configuration of the specified FHIR store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresPatch = HealthcareProjectsLocationsDatasetsFhirStoresPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Identifier. Resource name of the FHIR store, of the form @projects\/{project_id}\/locations\/{location}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: FhirStore,
    -- | Required. The update mask applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresPatch ::
  -- |  Output only. Identifier. Resource name of the FHIR store, of the form @projects\/{project_id}\/locations\/{location}\/datasets\/{dataset_id}\/fhirStores\/{fhir_store_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FhirStore ->
  HealthcareProjectsLocationsDatasetsFhirStoresPatch
newHealthcareProjectsLocationsDatasetsFhirStoresPatch name payload =
  HealthcareProjectsLocationsDatasetsFhirStoresPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresPatch
  where
  type
    Rs HealthcareProjectsLocationsDatasetsFhirStoresPatch =
      FhirStore
  type
    Scopes HealthcareProjectsLocationsDatasetsFhirStoresPatch =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  HealthcareProjectsLocationsDatasetsFhirStoresPatchResource
            )
            Core.mempty
