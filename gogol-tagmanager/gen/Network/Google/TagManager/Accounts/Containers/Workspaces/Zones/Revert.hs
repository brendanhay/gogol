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
-- Module      : Network.Google.TagManager.Accounts.Containers.Workspaces.Zones.Revert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.revert@.
module Network.Google.TagManager.Accounts.Containers.Workspaces.Zones.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesZonesRevertResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesZonesRevert,
    TagManagerAccountsContainersWorkspacesZonesRevert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesZonesRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesZonesRevertResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "revert" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] RevertZoneResponse

-- | Reverts changes to a GTM Zone in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesZonesRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesZonesRevert = TagManagerAccountsContainersWorkspacesZonesRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the zone in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesZonesRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesZonesRevert ::
  -- |  GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesZonesRevert
newTagManagerAccountsContainersWorkspacesZonesRevert path =
  TagManagerAccountsContainersWorkspacesZonesRevert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fingerprint = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesZonesRevert
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesZonesRevert =
      RevertZoneResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesZonesRevert =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesZonesRevert {..} =
      go
        path
        xgafv
        accessToken
        callback
        fingerprint
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersWorkspacesZonesRevertResource
            )
            Core.mempty
