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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the HL7v2 store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatchResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatch (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Hl7V2Store
    Core.:> Core.Patch '[Core.JSON] Hl7V2Store

-- | Updates the HL7v2 store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresPatch = HealthcareProjectsLocationsDatasetsHl7V2StoresPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Resource name of the HL7v2 store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7v2_store_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Hl7V2Store,
    -- | Required. The update mask applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch ::
  -- |  Identifier. Resource name of the HL7v2 store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/hl7V2Stores\/{hl7v2_store_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Hl7V2Store ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresPatch
newHealthcareProjectsLocationsDatasetsHl7V2StoresPatch name payload =
  HealthcareProjectsLocationsDatasetsHl7V2StoresPatch
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
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatch
  where
  type
    Rs HealthcareProjectsLocationsDatasetsHl7V2StoresPatch =
      Hl7V2Store
  type
    Scopes HealthcareProjectsLocationsDatasetsHl7V2StoresPatch =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresPatch {..} =
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
                  HealthcareProjectsLocationsDatasetsHl7V2StoresPatchResource
            )
            Core.mempty
