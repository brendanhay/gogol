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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified revision of a Consent, or the latest revision if @revision_id@ is not specified in the resource name.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.get@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGetResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Consent

-- | Gets the specified revision of a Consent, or the latest revision if @revision_id@ is not specified in the resource name.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet = HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Consent to retrieve, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. In order to retrieve a previous revision of the Consent, also provide the revision ID: @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\@{revision_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet ::
  -- |  Required. The resource name of the Consent to retrieve, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}@. In order to retrieve a previous revision of the Consent, also provide the revision ID: @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}\/consents\/{consent_id}\@{revision_id}@ See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsGet name =
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet =
      Consent
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsGet {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentsGetResource
            )
            Core.mempty
