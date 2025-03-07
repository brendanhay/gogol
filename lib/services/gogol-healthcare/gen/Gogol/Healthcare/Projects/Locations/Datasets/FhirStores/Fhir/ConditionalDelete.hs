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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ConditionalDelete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a FHIR resource that match an identifier search query. Implements the FHIR standard conditional delete interaction, limited to searching by resource identifier. If multiple resources match, 412 Precondition Failed error will be returned. Search term for identifier should be in the pattern @identifier=system|value@ or @identifier=value@ - similar to the @search@ method on resources with a specific identifier. Note: Unless resource versioning is disabled by setting the disable/resource/versioning flag on the FHIR store, the deleted resource is moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call @conditionalDelete@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_deleting_a_fhir_resource Conditionally deleting a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.ConditionalDelete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDeleteResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.conditionalDelete@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDeleteResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "fhir"
    Core.:> Core.Capture "type" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a FHIR resource that match an identifier search query. Implements the FHIR standard conditional delete interaction, limited to searching by resource identifier. If multiple resources match, 412 Precondition Failed error will be returned. Search term for identifier should be in the pattern @identifier=system|value@ or @identifier=value@ - similar to the @search@ method on resources with a specific identifier. Note: Unless resource versioning is disabled by setting the disable/resource/versioning flag on the FHIR store, the deleted resource is moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call @conditionalDelete@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_deleting_a_fhir_resource Conditionally deleting a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete = HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the FHIR store this resource belongs to.
    parent :: Core.Text,
    -- | Required. The FHIR resource type to delete, such as Patient or Observation. For a complete list, see the FHIR Resource Index (<https://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <https://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, <https://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>).
    type' :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete ::
  -- |  Required. The name of the FHIR store this resource belongs to. See 'parent'.
  Core.Text ->
  -- |  Required. The FHIR resource type to delete, such as Patient or Observation. For a complete list, see the FHIR Resource Index (<https://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html DSTU2>, <https://hl7.org/implement/standards/fhir/STU3/resourcelist.html STU3>, <https://hl7.org/implement/standards/fhir/R4/resourcelist.html R4>). See 'type''.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete
newHealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete
  parent
  type' =
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        type' = type',
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete =
      Empty
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDelete {..} =
      go
        parent
        type'
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirConditionalDeleteResource
            )
            Core.mempty
