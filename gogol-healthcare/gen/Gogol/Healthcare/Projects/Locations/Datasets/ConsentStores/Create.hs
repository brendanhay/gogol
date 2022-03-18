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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new consent store in the parent dataset. Attempting to create a consent store with the same ID as an existing store fails with an ALREADY_EXISTS error.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresCreateResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresCreate,
    HealthcareProjectsLocationsDatasetsConsentStoresCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "consentStores"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "consentStoreId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConsentStore
    Core.:> Core.Post '[Core.JSON] ConsentStore

-- | Creates a new consent store in the parent dataset. Attempting to create a consent store with the same ID as an existing store fails with an ALREADY_EXISTS error.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresCreate = HealthcareProjectsLocationsDatasetsConsentStoresCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the consent store to create. The string must match the following regex: @[\\p{L}\\p{N}_\\-\\.]{1,256}@. Cannot be changed after creation.
    consentStoreId :: (Core.Maybe Core.Text),
    -- | Required. The name of the dataset this consent store belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ConsentStore,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresCreate ::
  -- |  Required. The name of the dataset this consent store belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ConsentStore ->
  HealthcareProjectsLocationsDatasetsConsentStoresCreate
newHealthcareProjectsLocationsDatasetsConsentStoresCreate parent payload =
  HealthcareProjectsLocationsDatasetsConsentStoresCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      consentStoreId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresCreate =
      ConsentStore
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        consentStoreId
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
                  HealthcareProjectsLocationsDatasetsConsentStoresCreateResource
            )
            Core.mempty
