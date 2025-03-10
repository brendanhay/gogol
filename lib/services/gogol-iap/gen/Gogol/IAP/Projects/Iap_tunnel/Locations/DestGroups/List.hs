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
-- Module      : Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing TunnelDestGroups. To group across all locations, use a @-@ as the location ID. For example: @\/v1\/projects\/123\/iap_tunnel\/locations\/-\/destGroups@
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.locations.destGroups.list@.
module Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.List
  ( -- * Resource
    IAPProjectsIap_tunnelLocationsDestGroupsListResource,

    -- ** Constructing a Request
    IAPProjectsIap_tunnelLocationsDestGroupsList (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsList,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.projects.iap_tunnel.locations.destGroups.list@ method which the
-- 'IAPProjectsIap_tunnelLocationsDestGroupsList' request conforms to.
type IAPProjectsIap_tunnelLocationsDestGroupsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "destGroups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTunnelDestGroupsResponse

-- | Lists the existing TunnelDestGroups. To group across all locations, use a @-@ as the location ID. For example: @\/v1\/projects\/123\/iap_tunnel\/locations\/-\/destGroups@
--
-- /See:/ 'newIAPProjectsIap_tunnelLocationsDestGroupsList' smart constructor.
data IAPProjectsIap_tunnelLocationsDestGroupsList = IAPProjectsIap_tunnelLocationsDestGroupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 100 groups are returned. The maximum value is 1000; values above 1000 are coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListTunnelDestGroups@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListTunnelDestGroups@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Google Cloud Project ID and location. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}@. A @-@ can be used for the location to group across all locations.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsIap_tunnelLocationsDestGroupsList' with the minimum fields required to make a request.
newIAPProjectsIap_tunnelLocationsDestGroupsList ::
  -- |  Required. Google Cloud Project ID and location. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}@. A @-@ can be used for the location to group across all locations. See 'parent'.
  Core.Text ->
  IAPProjectsIap_tunnelLocationsDestGroupsList
newIAPProjectsIap_tunnelLocationsDestGroupsList parent =
  IAPProjectsIap_tunnelLocationsDestGroupsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsIap_tunnelLocationsDestGroupsList
  where
  type
    Rs IAPProjectsIap_tunnelLocationsDestGroupsList =
      ListTunnelDestGroupsResponse
  type
    Scopes IAPProjectsIap_tunnelLocationsDestGroupsList =
      '[CloudPlatform'FullControl]
  requestClient IAPProjectsIap_tunnelLocationsDestGroupsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPProjectsIap_tunnelLocationsDestGroupsListResource
          )
          Core.mempty
