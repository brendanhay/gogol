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
-- Module      : Gogol.DLP.Projects.Locations.Connections.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for Connections in a parent.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.connections.search@.
module Gogol.DLP.Projects.Locations.Connections.Search
  ( -- * Resource
    DLPProjectsLocationsConnectionsSearchResource,

    -- ** Constructing a Request
    DLPProjectsLocationsConnectionsSearch (..),
    newDLPProjectsLocationsConnectionsSearch,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.projects.locations.connections.search@ method which the
-- 'DLPProjectsLocationsConnectionsSearch' request conforms to.
type DLPProjectsLocationsConnectionsSearchResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "connections:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GooglePrivacyDlpV2SearchConnectionsResponse

-- | Searches for Connections in a parent.
--
-- /See:/ 'newDLPProjectsLocationsConnectionsSearch' smart constructor.
data DLPProjectsLocationsConnectionsSearch = DLPProjectsLocationsConnectionsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Supported field\/value: - @state@ - MISSING|AVAILABLE|ERROR
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Number of results per page, max 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must match the original request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the organization or project with a wildcard location, for example, @organizations\/433245324\/locations\/-@ or @projects\/project-id\/locations\/-@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsConnectionsSearch' with the minimum fields required to make a request.
newDLPProjectsLocationsConnectionsSearch ::
  -- |  Required. Resource name of the organization or project with a wildcard location, for example, @organizations\/433245324\/locations\/-@ or @projects\/project-id\/locations\/-@. See 'parent'.
  Core.Text ->
  DLPProjectsLocationsConnectionsSearch
newDLPProjectsLocationsConnectionsSearch parent =
  DLPProjectsLocationsConnectionsSearch
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

instance Core.GoogleRequest DLPProjectsLocationsConnectionsSearch where
  type
    Rs DLPProjectsLocationsConnectionsSearch =
      GooglePrivacyDlpV2SearchConnectionsResponse
  type
    Scopes DLPProjectsLocationsConnectionsSearch =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsConnectionsSearch {..} =
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
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPProjectsLocationsConnectionsSearchResource
          )
          Core.mempty
