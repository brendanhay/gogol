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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Consent in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Consents.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreateResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "consents"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Consent
    Core.:> Core.Post '[Core.JSON] Consent

-- | Creates a new Consent in the parent consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate = HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Consent,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate ::
  -- |  Required. Name of the consent store. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Consent ->
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate
newHealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate parent payload =
  HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate
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
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate =
      Consent
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreate {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresConsentsCreateResource
            )
            Core.mempty
