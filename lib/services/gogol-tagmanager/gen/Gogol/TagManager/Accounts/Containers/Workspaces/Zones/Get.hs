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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.get@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Get
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesZonesGetResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesZonesGet (..),
    newTagManagerAccountsContainersWorkspacesZonesGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.get@ method which the
-- 'TagManagerAccountsContainersWorkspacesZonesGet' request conforms to.
type TagManagerAccountsContainersWorkspacesZonesGetResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Zone

-- | Gets a GTM Zone.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesZonesGet' smart constructor.
data TagManagerAccountsContainersWorkspacesZonesGet = TagManagerAccountsContainersWorkspacesZonesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesZonesGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesZonesGet ::
  -- |  GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesZonesGet
newTagManagerAccountsContainersWorkspacesZonesGet path =
  TagManagerAccountsContainersWorkspacesZonesGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesZonesGet
  where
  type Rs TagManagerAccountsContainersWorkspacesZonesGet = Zone
  type
    Scopes TagManagerAccountsContainersWorkspacesZonesGet =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient TagManagerAccountsContainersWorkspacesZonesGet {..} =
    go
      path
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersWorkspacesZonesGetResource
          )
          Core.mempty
