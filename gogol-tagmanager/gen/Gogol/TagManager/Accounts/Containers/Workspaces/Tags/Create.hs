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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.create@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Create
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTagsCreateResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesTagsCreate,
    TagManagerAccountsContainersWorkspacesTagsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.create@ method which the
-- 'TagManagerAccountsContainersWorkspacesTagsCreate' request conforms to.
type TagManagerAccountsContainersWorkspacesTagsCreateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tags"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Tag
    Core.:> Core.Post '[Core.JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTagsCreate' smart constructor.
data TagManagerAccountsContainersWorkspacesTagsCreate = TagManagerAccountsContainersWorkspacesTagsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Tag,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTagsCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTagsCreate ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Tag ->
  TagManagerAccountsContainersWorkspacesTagsCreate
newTagManagerAccountsContainersWorkspacesTagsCreate parent payload =
  TagManagerAccountsContainersWorkspacesTagsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersWorkspacesTagsCreate
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesTagsCreate =
      Tag
  type
    Scopes
      TagManagerAccountsContainersWorkspacesTagsCreate =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesTagsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  TagManagerAccountsContainersWorkspacesTagsCreateResource
            )
            Core.mempty
