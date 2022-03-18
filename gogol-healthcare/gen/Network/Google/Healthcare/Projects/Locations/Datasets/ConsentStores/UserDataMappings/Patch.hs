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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.patch@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Patch
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatchResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch,
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.patch@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserDataMapping
    Core.:> Core.Patch '[Core.JSON] UserDataMapping

-- | Updates the specified User data mapping.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch = HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name of the User data mapping, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/userDataMappings\/{user_data_mapping_id}@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserDataMapping,
    -- | Required. The update mask that applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask. Only the @data_id@, @user_id@ and @resource_attributes@ fields can be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch ::
  -- |  Resource name of the User data mapping, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/userDataMappings\/{user_data_mapping_id}@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserDataMapping ->
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch name payload =
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch
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
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch =
      UserDataMapping
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatch {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsPatchResource
            )
            Core.mempty
