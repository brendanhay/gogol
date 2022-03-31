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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.patch@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresPatchResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresPatch,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConsentStore
    Core.:> Core.Patch '[Core.JSON] ConsentStore

-- | Updates the specified consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresPatch = HealthcareProjectsLocationsDatasetsConsentStoresPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name of the consent store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@. Cannot be changed after creation.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ConsentStore,
    -- | Required. The update mask that applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask. Only the @labels@, @default_consent_ttl@, and @enable_consent_create_on_update@ fields are allowed to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresPatch ::
  -- |  Resource name of the consent store, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@. Cannot be changed after creation. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ConsentStore ->
  HealthcareProjectsLocationsDatasetsConsentStoresPatch
newHealthcareProjectsLocationsDatasetsConsentStoresPatch name payload =
  HealthcareProjectsLocationsDatasetsConsentStoresPatch
    { xgafv = Core.Nothing,
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
    HealthcareProjectsLocationsDatasetsConsentStoresPatch
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresPatch =
      ConsentStore
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresPatch =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresPatch {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresPatchResource
            )
            Core.mempty
