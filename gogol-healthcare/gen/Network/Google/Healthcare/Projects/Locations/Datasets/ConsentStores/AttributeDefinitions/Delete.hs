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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Attribute definition. Fails if the Attribute definition is referenced by any User data mapping, or the latest revision of any Consent.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete@.
module Network.Google.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Delete
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDeleteResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.delete@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified Attribute definition. Fails if the Attribute definition is referenced by any User data mapping, or the latest revision of any Consent.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete = HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Attribute definition to delete. To preserve referential integrity, Attribute definitions referenced by a User data mapping or the latest revision of a Consent cannot be deleted.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete ::
  -- |  Required. The resource name of the Attribute definition to delete. To preserve referential integrity, Attribute definitions referenced by a User data mapping or the latest revision of a Consent cannot be deleted. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete name =
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete =
      Empty
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDelete {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsDeleteResource
            )
            Core.mempty
