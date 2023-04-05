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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a FHIR resource. Implements the FHIR standard delete interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#delete STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#delete R4>). Note: Unless resource versioning is disabled by setting the disable/resource/versioning flag on the FHIR store, the deleted resources will be moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call @delete@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource Deleting a FHIR resource>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.delete@.
module Gogol.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.Delete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDeleteResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete (..),
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] HttpBody

-- | Deletes a FHIR resource. Implements the FHIR standard delete interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#delete STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#delete R4>). Note: Unless resource versioning is disabled by setting the disable/resource/versioning flag on the FHIR store, the deleted resources will be moved to a history repository that can still be retrieved through vread and related methods, unless they are removed by the purge method. For samples that show how to call @delete@, see <https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource Deleting a FHIR resource>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete = HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete ::
  -- |  The name of the resource to delete. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete
newHealthcareProjectsLocationsDatasetsFhirStoresFhirDelete name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirDelete {..} =
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
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirDeleteResource
            )
            Core.mempty
