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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new User data mapping in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.UserDataMappings.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreateResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "userDataMappings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserDataMapping
    Core.:> Core.Post '[Core.JSON] UserDataMapping

-- | Creates a new User data mapping in the parent consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate = HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserDataMapping,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate ::
  -- |  Required. Name of the consent store. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserDataMapping ->
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate
newHealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate parent payload =
  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate =
      UserDataMapping
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreate {..} =
      go
        parent
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
                  HealthcareProjectsLocationsDatasetsConsentStoresUserDataMappingsCreateResource
            )
            Core.mempty
