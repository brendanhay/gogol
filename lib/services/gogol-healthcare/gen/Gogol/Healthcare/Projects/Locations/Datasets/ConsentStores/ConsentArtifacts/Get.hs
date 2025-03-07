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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Consent artifact.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.ConsentArtifacts.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ConsentArtifact

-- | Gets the specified Consent artifact.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet = HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Consent artifact to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet ::
  -- |  Required. The resource name of the Consent artifact to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet
newHealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet
  name =
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet =
      ConsentArtifact
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGet {..} =
      go
        name
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentArtifactsGetResource
            )
            Core.mempty
