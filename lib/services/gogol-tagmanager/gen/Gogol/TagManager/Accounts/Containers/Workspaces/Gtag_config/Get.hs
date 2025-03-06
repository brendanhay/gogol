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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Google tag config.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.gtag_config.get@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Get
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesGtag_configGetResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesGtag_configGet (..),
    newTagManagerAccountsContainersWorkspacesGtag_configGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.gtag_config.get@ method which the
-- 'TagManagerAccountsContainersWorkspacesGtag_configGet' request conforms to.
type TagManagerAccountsContainersWorkspacesGtag_configGetResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GtagConfig

-- | Gets a Google tag config.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesGtag_configGet' smart constructor.
data TagManagerAccountsContainersWorkspacesGtag_configGet = TagManagerAccountsContainersWorkspacesGtag_configGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesGtag_configGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesGtag_configGet ::
  -- |  Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesGtag_configGet
newTagManagerAccountsContainersWorkspacesGtag_configGet path =
  TagManagerAccountsContainersWorkspacesGtag_configGet
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
    TagManagerAccountsContainersWorkspacesGtag_configGet
  where
  type
    Rs TagManagerAccountsContainersWorkspacesGtag_configGet =
      GtagConfig
  type
    Scopes TagManagerAccountsContainersWorkspacesGtag_configGet =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient
    TagManagerAccountsContainersWorkspacesGtag_configGet {..} =
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
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesGtag_configGetResource
            )
            Core.mempty
