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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.EvaluateUserConsents
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Evaluates the user\'s Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, which can cause a slight delay between the time mappings are created or updated and when they are included in EvaluateUserConsents results.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.evaluateUserConsents@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.EvaluateUserConsents
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsentsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.evaluateUserConsents@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsentsResource =
  "v1"
    Core.:> Core.CaptureMode "consentStore" "evaluateUserConsents" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] EvaluateUserConsentsRequest
    Core.:> Core.Post '[Core.JSON] EvaluateUserConsentsResponse

-- | Evaluates the user\'s Consents for all matching User data mappings. Note: User data mappings are indexed asynchronously, which can cause a slight delay between the time mappings are created or updated and when they are included in EvaluateUserConsents results.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents = HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store to retrieve User data mappings from.
    consentStore :: Core.Text,
    -- | Multipart request metadata.
    payload :: EvaluateUserConsentsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents ::
  -- |  Required. Name of the consent store to retrieve User data mappings from. See 'consentStore'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  EvaluateUserConsentsRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents
newHealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents
  consentStore
  payload =
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        consentStore =
          consentStore,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents =
      EvaluateUserConsentsResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsents {..} =
      go
        consentStore
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
                  HealthcareProjectsLocationsDatasetsConsentStoresEvaluateUserConsentsResource
            )
            Core.mempty
