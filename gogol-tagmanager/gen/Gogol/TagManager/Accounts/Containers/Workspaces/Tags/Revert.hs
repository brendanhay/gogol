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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Revert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.revert@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Revert
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTagsRevertResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesTagsRevert,
    TagManagerAccountsContainersWorkspacesTagsRevert,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.revert@ method which the
-- 'TagManagerAccountsContainersWorkspacesTagsRevert' request conforms to.
type TagManagerAccountsContainersWorkspacesTagsRevertResource =
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
    Core.:> Core.Post '[Core.JSON] RevertTagResponse

-- | Reverts changes to a GTM Tag in a GTM Workspace.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTagsRevert' smart constructor.
data TagManagerAccountsContainersWorkspacesTagsRevert = TagManagerAccountsContainersWorkspacesTagsRevert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of thetag in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Tag\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/tags\/{tag/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTagsRevert' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTagsRevert ::
  -- |  GTM Tag\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/tags\/{tag/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersWorkspacesTagsRevert
newTagManagerAccountsContainersWorkspacesTagsRevert path =
  TagManagerAccountsContainersWorkspacesTagsRevert
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
    TagManagerAccountsContainersWorkspacesTagsRevert
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesTagsRevert =
      RevertTagResponse
  type
    Scopes
      TagManagerAccountsContainersWorkspacesTagsRevert =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesTagsRevert {..} =
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
                  TagManagerAccountsContainersWorkspacesTagsRevertResource
            )
            Core.mempty
