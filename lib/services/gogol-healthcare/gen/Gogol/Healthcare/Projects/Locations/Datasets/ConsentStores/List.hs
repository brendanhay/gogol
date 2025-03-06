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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the consent stores in the specified dataset.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.list@.
module Gogol.Healthcare.Projects.Locations.Datasets.ConsentStores.List
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsConsentStoresListResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsConsentStoresList (..),
    newHealthcareProjectsLocationsDatasetsConsentStoresList,
  )
where

import Gogol.Healthcare.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.list@ method which the
-- 'HealthcareProjectsLocationsDatasetsConsentStoresList' request conforms to.
type HealthcareProjectsLocationsDatasetsConsentStoresListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "consentStores"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListConsentStoresResponse

-- | Lists the consent stores in the specified dataset.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsConsentStoresList' smart constructor.
data HealthcareProjectsLocationsDatasetsConsentStoresList = HealthcareProjectsLocationsDatasetsConsentStoresList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Restricts the stores returned to those matching a filter. Only filtering on labels is supported. For example, @filter=labels.key=value@.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Limit on the number of consent stores to return in a single response. If not specified, 100 is used. May not be larger than 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Token to retrieve the next page of results, or empty to get the first page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the dataset.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsConsentStoresList' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsConsentStoresList ::
  -- |  Required. Name of the dataset. See 'parent'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsConsentStoresList
newHealthcareProjectsLocationsDatasetsConsentStoresList parent =
  HealthcareProjectsLocationsDatasetsConsentStoresList
    { xgafv =
        Core.Nothing,
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
    HealthcareProjectsLocationsDatasetsConsentStoresList
  where
  type
    Rs HealthcareProjectsLocationsDatasetsConsentStoresList =
      ListConsentStoresResponse
  type
    Scopes HealthcareProjectsLocationsDatasetsConsentStoresList =
      '[CloudHealthcare'FullControl, CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsConsentStoresList {..} =
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
                  HealthcareProjectsLocationsDatasetsConsentStoresListResource
            )
            Core.mempty
