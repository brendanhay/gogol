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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.CheckDataAccess
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks if a particular data_id of a User data mapping in the specified consent store is consented for the specified use.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.checkDataAccess@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.CheckDataAccess
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccessResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess,
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.checkDataAccess@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccessResource =
  "v1"
    Core.:> Core.CaptureMode
              "consentStore"
              "checkDataAccess"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckDataAccessRequest
    Core.:> Core.Post '[Core.JSON] CheckDataAccessResponse

-- | Checks if a particular data_id of a User data mapping in the specified consent store is consented for the specified use.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess = HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store where the requested data_id is stored, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@.
    consentStore :: Core.Text,
    -- | Multipart request metadata.
    payload :: CheckDataAccessRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess ::
  -- |  Required. Name of the consent store where the requested data_id is stored, of the form @projects\/{project_id}\/locations\/{location_id}\/datasets\/{dataset_id}\/consentStores\/{consent_store_id}@. See 'consentStore'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckDataAccessRequest ->
  HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess
newHealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess consentStore payload =
  HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      consentStore = consentStore,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess =
      CheckDataAccessResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccess {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresCheckDataAccessResource
            )
            Core.mempty
