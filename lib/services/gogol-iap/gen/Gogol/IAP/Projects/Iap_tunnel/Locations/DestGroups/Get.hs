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
-- Module      : Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing TunnelDestGroup.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.iap_tunnel.locations.destGroups.get@.
module Gogol.IAP.Projects.Iap_tunnel.Locations.DestGroups.Get
  ( -- * Resource
    IAPProjectsIap_tunnelLocationsDestGroupsGetResource,

    -- ** Constructing a Request
    IAPProjectsIap_tunnelLocationsDestGroupsGet (..),
    newIAPProjectsIap_tunnelLocationsDestGroupsGet,
  )
where

import Gogol.IAP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @iap.projects.iap_tunnel.locations.destGroups.get@ method which the
-- 'IAPProjectsIap_tunnelLocationsDestGroupsGet' request conforms to.
type IAPProjectsIap_tunnelLocationsDestGroupsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TunnelDestGroup

-- | Retrieves an existing TunnelDestGroup.
--
-- /See:/ 'newIAPProjectsIap_tunnelLocationsDestGroupsGet' smart constructor.
data IAPProjectsIap_tunnelLocationsDestGroupsGet = IAPProjectsIap_tunnelLocationsDestGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the TunnelDestGroup to be fetched. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}\/destGroups\/{dest_group}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAPProjectsIap_tunnelLocationsDestGroupsGet' with the minimum fields required to make a request.
newIAPProjectsIap_tunnelLocationsDestGroupsGet ::
  -- |  Required. Name of the TunnelDestGroup to be fetched. In the following format: @projects\/{project_number\/id}\/iap_tunnel\/locations\/{location}\/destGroups\/{dest_group}@. See 'name'.
  Core.Text ->
  IAPProjectsIap_tunnelLocationsDestGroupsGet
newIAPProjectsIap_tunnelLocationsDestGroupsGet name =
  IAPProjectsIap_tunnelLocationsDestGroupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAPProjectsIap_tunnelLocationsDestGroupsGet
  where
  type
    Rs IAPProjectsIap_tunnelLocationsDestGroupsGet =
      TunnelDestGroup
  type
    Scopes IAPProjectsIap_tunnelLocationsDestGroupsGet =
      '[CloudPlatform'FullControl]
  requestClient IAPProjectsIap_tunnelLocationsDestGroupsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      iAPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAPProjectsIap_tunnelLocationsDestGroupsGetResource
          )
          Core.mempty
