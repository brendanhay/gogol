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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcepurge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all the historical versions of a resource (excluding the current version) from the FHIR store. To remove all versions of a resource, first delete the current version and then call this method. This is not a FHIR standard operation. For samples that show how to call @Resource-purge@, see </healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource Deleting historical versions of a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.Resourcepurge@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Resourcepurge
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurgeResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.Resourcepurge@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurgeResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "$purge"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes all the historical versions of a resource (excluding the current version) from the FHIR store. To remove all versions of a resource, first delete the current version and then call this method. This is not a FHIR standard operation. For samples that show how to call @Resource-purge@, see </healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource Deleting historical versions of a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge = HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to purge.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge ::
  -- |  The name of the resource to purge. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge
newHealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge =
      Empty
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurge {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirResourcepurgeResource
            )
            Core.mempty
