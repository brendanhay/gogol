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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Consent artifact in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreateResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "consentArtifacts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConsentArtifact
    Core.:> Core.Post '[Core.JSON] ConsentArtifact

-- | Creates a new Consent artifact in the parent consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate = HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the consent store this Consent artifact belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ConsentArtifact,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate ::
  -- |  Required. The name of the consent store this Consent artifact belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ConsentArtifact ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate
newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate
  parent
  payload =
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate =
      ConsentArtifact
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreate {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsCreateResource
            )
            Core.mempty
