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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Google tag config.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.gtag_config.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesGtag_configUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesGtag_configUpdate (..),
    newTagManagerAccountsContainersWorkspacesGtag_configUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.gtag_config.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesGtag_configUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesGtag_configUpdateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GtagConfig
    Core.:> Core.Put '[Core.JSON] GtagConfig

-- | Updates a Google tag config.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesGtag_configUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesGtag_configUpdate = TagManagerAccountsContainersWorkspacesGtag_configUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the config in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: GtagConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesGtag_configUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesGtag_configUpdate ::
  -- |  Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GtagConfig ->
  TagManagerAccountsContainersWorkspacesGtag_configUpdate
newTagManagerAccountsContainersWorkspacesGtag_configUpdate
  path
  payload =
    TagManagerAccountsContainersWorkspacesGtag_configUpdate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        fingerprint = Core.Nothing,
        path = path,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesGtag_configUpdate
  where
  type
    Rs TagManagerAccountsContainersWorkspacesGtag_configUpdate =
      GtagConfig
  type
    Scopes TagManagerAccountsContainersWorkspacesGtag_configUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesGtag_configUpdate {..} =
      go
        path
        xgafv
        accessToken
        callback
        fingerprint
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesGtag_configUpdateResource
            )
            Core.mempty
