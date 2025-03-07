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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Reject
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects the latest revision of the specified Consent by committing a new revision with @state@ updated to @REJECTED@. If the latest revision of the specified Consent is in the @REJECTED@ state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the @ACTIVE@ or @REVOKED@ state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.reject@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Reject
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRejectResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.reject@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsRejectResource =
  "v1"
    Core.:> Core.CaptureMode "name" "reject" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RejectConsentRequest
    Core.:> Core.Post '[Core.JSON] Consent

-- | Rejects the latest revision of the specified Consent by committing a new revision with @state@ updated to @REJECTED@. If the latest revision of the specified Consent is in the @REJECTED@ state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the specified Consent is in the @ACTIVE@ or @REVOKED@ state.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject = HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Consent to reject, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is specified in the name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RejectConsentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject ::
  -- |  Required. The resource name of the Consent to reject, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is specified in the name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RejectConsentRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsReject
  name
  payload =
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject =
      Consent
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsReject {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentsRejectResource
            )
            Core.mempty
