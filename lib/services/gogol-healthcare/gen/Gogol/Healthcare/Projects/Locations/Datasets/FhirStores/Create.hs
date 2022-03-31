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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new FHIR store within the parent dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresCreateResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresCreate,
    HealthcareProjectsLocationsDatasetsFhirStoresCreate,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhirStores"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fhirStoreId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FhirStore
    Core.:> Core.Post '[Core.JSON] FhirStore

-- | Creates a new FHIR store within the parent dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresCreate = HealthcareProjectsLocationsDatasetsFhirStoresCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the FHIR store that is being created. The string must match the following regex: @[\\p{L}\\p{N}_\\-\\.]{1,256}@.
    fhirStoreId :: (Core.Maybe Core.Text),
    -- | The name of the dataset this FHIR store belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: FhirStore,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresCreate ::
  -- |  The name of the dataset this FHIR store belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FhirStore ->
  HealthcareProjectsLocationsDatasetsFhirStoresCreate
newHealthcareProjectsLocationsDatasetsFhirStoresCreate parent payload =
  HealthcareProjectsLocationsDatasetsFhirStoresCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fhirStoreId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresCreate =
      FhirStore
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresCreate =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        fhirStoreId
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
                  HealthcareProjectsLocationsDatasetsFhirStoresCreateResource
            )
            Core.mempty
