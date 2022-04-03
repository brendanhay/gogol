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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Custom Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.create@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Create
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTemplatesCreateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesTemplatesCreate (..),
    newTagManagerAccountsContainersWorkspacesTemplatesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.create@ method which the
-- 'TagManagerAccountsContainersWorkspacesTemplatesCreate' request conforms to.
type TagManagerAccountsContainersWorkspacesTemplatesCreateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "templates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CustomTemplate
    Core.:> Core.Post '[Core.JSON] CustomTemplate

-- | Creates a GTM Custom Template.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTemplatesCreate' smart constructor.
data TagManagerAccountsContainersWorkspacesTemplatesCreate = TagManagerAccountsContainersWorkspacesTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTemplatesCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTemplatesCreate ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomTemplate ->
  TagManagerAccountsContainersWorkspacesTemplatesCreate
newTagManagerAccountsContainersWorkspacesTemplatesCreate parent payload =
  TagManagerAccountsContainersWorkspacesTemplatesCreate
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
    TagManagerAccountsContainersWorkspacesTemplatesCreate
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesTemplatesCreate =
      CustomTemplate
  type
    Scopes
      TagManagerAccountsContainersWorkspacesTemplatesCreate =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesTemplatesCreate {..} =
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
                  TagManagerAccountsContainersWorkspacesTemplatesCreateResource
            )
            Core.mempty
