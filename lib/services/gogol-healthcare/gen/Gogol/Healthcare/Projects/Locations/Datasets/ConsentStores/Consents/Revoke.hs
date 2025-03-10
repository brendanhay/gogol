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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Revoke
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes the latest revision of the specified Consent by committing a new revision with @state@ updated to @REVOKED@. If the latest revision of the specified Consent is in the @REVOKED@ state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in @DRAFT@ or @REJECTED@ state.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.revoke@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Revoke
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevokeResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.revoke@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevokeResource =
  "v1"
    Core.:> Core.CaptureMode "name" "revoke" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RevokeConsentRequest
    Core.:> Core.Post '[Core.JSON] Consent

-- | Revokes the latest revision of the specified Consent by committing a new revision with @state@ updated to @REVOKED@. If the latest revision of the specified Consent is in the @REVOKED@ state, no new revision is committed. A FAILED_PRECONDITION error occurs if the latest revision of the given consent is in @DRAFT@ or @REJECTED@ state.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke = HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Consent to revoke, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is specified in the name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RevokeConsentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke ::
  -- |  Required. The resource name of the Consent to revoke, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. An INVALID_ARGUMENT error occurs if @revision_id@ is specified in the name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RevokeConsentRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke
  name
  payload =
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke
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
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke =
      Consent
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevoke {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentsRevokeResource
            )
            Core.mempty
