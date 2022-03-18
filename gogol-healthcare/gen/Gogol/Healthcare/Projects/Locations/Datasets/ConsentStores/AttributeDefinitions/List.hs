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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Attribute definitions in the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.AttributeDefinitions.List
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsListResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList,
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.attributeDefinitions.list@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "attributeDefinitions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListAttributeDefinitionsResponse

-- | Lists the Attribute definitions in the specified consent store.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList = HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Restricts the attributes returned to those matching a filter. The only field available for filtering is @category@. For example, @filter=category=\\\"REQUEST\\\"@.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Limit on the number of Attribute definitions to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Token to retrieve the next page of results or empty to get the first page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the consent store to retrieve Attribute definitions from.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList ::
  -- |  Required. Name of the consent store to retrieve Attribute definitions from. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList
newHealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList parent =
  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList =
      ListAttributeDefinitionsResponse
  type
    Scopes
      HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsConsentStoresAttributeDefinitionsListResource
            )
            Core.mempty
