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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Attribute definition in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.Create
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreateResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.create@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "attributeDefinitions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "attributeDefinitionId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AttributeDefinition
    Core.:> Core.Post '[Core.JSON] AttributeDefinition

-- | Creates a new Attribute definition in the parent consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate = HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The ID of the Attribute definition to create. The string must match the following regex: @_a-zA-Z{0,255}@ and must not be a reserved keyword within the Common Expression Language as listed on https:\/\/github.com\/google\/cel-spec\/blob\/master\/doc\/langdef.md.
    attributeDefinitionId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the consent store that this Attribute definition belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AttributeDefinition,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate ::
  -- |  Required. The name of the consent store that this Attribute definition belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AttributeDefinition ->
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate
  parent
  payload =
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate
      { xgafv =
          Core.Nothing,
        accessToken =
          Core.Nothing,
        attributeDefinitionId =
          Core.Nothing,
        callback =
          Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType =
          Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate =
      AttributeDefinition
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreate {..} =
      go
        parent
        xgafv
        accessToken
        attributeDefinitionId
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
                  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsCreateResource
            )
            Core.mempty
