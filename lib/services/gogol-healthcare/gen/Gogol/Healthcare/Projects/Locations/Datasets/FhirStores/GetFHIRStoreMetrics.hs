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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.GetFHIRStoreMetrics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metrics associated with the FHIR store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.getFHIRStoreMetrics@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.GetFHIRStoreMetrics
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetricsResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.getFHIRStoreMetrics@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetricsResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "getFHIRStoreMetrics"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] FhirStoreMetrics

-- | Gets metrics associated with the FHIR store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics = HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the FHIR store to get metrics for.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics ::
  -- |  The resource name of the FHIR store to get metrics for. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics
newHealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics name =
  HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics =
      FhirStoreMetrics
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetrics {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresGetFHIRStoreMetricsResource
            )
            Core.mempty
