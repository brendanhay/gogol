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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified FHIR store and removes all resources within it.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.delete@.
module Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Delete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresDeleteResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresDelete,
    HealthcareProjectsLocationsDatasetsFhirStoresDelete,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified FHIR store and removes all resources within it.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresDelete = HealthcareProjectsLocationsDatasetsFhirStoresDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the FHIR store to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresDelete ::
  -- |  The resource name of the FHIR store to delete. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresDelete
newHealthcareProjectsLocationsDatasetsFhirStoresDelete name =
  HealthcareProjectsLocationsDatasetsFhirStoresDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresDelete =
      Empty
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresDelete {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresDeleteResource
            )
            Core.mempty
