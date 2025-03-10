{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Container.Projects.Aggregated.UsableSubnetworks.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists subnetworks that are usable for creating clusters in a project.
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/ Kubernetes Engine API Reference> for @container.projects.aggregated.usableSubnetworks.list@.
module Gogol.Container.Projects.Aggregated.UsableSubnetworks.List
  ( -- * Resource
    ContainerProjectsAggregatedUsableSubnetworksListResource,

    -- ** Constructing a Request
    ContainerProjectsAggregatedUsableSubnetworksList (..),
    newContainerProjectsAggregatedUsableSubnetworksList,
  )
where

import Gogol.Container.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @container.projects.aggregated.usableSubnetworks.list@ method which the
-- 'ContainerProjectsAggregatedUsableSubnetworksList' request conforms to.
type ContainerProjectsAggregatedUsableSubnetworksListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "aggregated"
    Core.:> "usableSubnetworks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUsableSubnetworksResponse

-- | Lists subnetworks that are usable for creating clusters in a project.
--
-- /See:/ 'newContainerProjectsAggregatedUsableSubnetworksList' smart constructor.
data ContainerProjectsAggregatedUsableSubnetworksList = ContainerProjectsAggregatedUsableSubnetworksList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Filtering currently only supports equality on the networkProjectId and must be in the form: \"networkProjectId=[PROJECTID]\", where @networkProjectId@ is the project which owns the listed subnetworks. This defaults to the parent project ID.
    filter :: (Core.Maybe Core.Text),
    -- | The max number of results per page that should be returned. If the number of available results is larger than @page_size@, a @next_page_token@ is returned which can be used to get the next page of results in subsequent requests. Acceptable values are 0 to 500, inclusive. (Default: 500)
    pageSize :: (Core.Maybe Core.Int32),
    -- | Specifies a page token to use. Set this to the nextPageToken returned by previous list requests to get the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | The parent project where subnetworks are usable. Specified in the format @projects\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsAggregatedUsableSubnetworksList' with the minimum fields required to make a request.
newContainerProjectsAggregatedUsableSubnetworksList ::
  -- |  The parent project where subnetworks are usable. Specified in the format @projects\/*@. See 'parent'.
  Core.Text ->
  ContainerProjectsAggregatedUsableSubnetworksList
newContainerProjectsAggregatedUsableSubnetworksList parent =
  ContainerProjectsAggregatedUsableSubnetworksList
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
    ContainerProjectsAggregatedUsableSubnetworksList
  where
  type
    Rs ContainerProjectsAggregatedUsableSubnetworksList =
      ListUsableSubnetworksResponse
  type
    Scopes ContainerProjectsAggregatedUsableSubnetworksList =
      '[CloudPlatform'FullControl]
  requestClient ContainerProjectsAggregatedUsableSubnetworksList {..} =
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
      containerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ContainerProjectsAggregatedUsableSubnetworksListResource
          )
          Core.mempty
