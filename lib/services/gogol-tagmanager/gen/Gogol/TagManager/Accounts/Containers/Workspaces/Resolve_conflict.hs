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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Resolve_conflict
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resolves a merge conflict for a workspace entity by updating it to the resolved entity passed in the request.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.resolve_conflict@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Resolve_conflict
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesResolve_conflictResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersWorkspacesResolve_conflict (..),
    newTagManagerAccountsContainersWorkspacesResolve_conflict,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.resolve_conflict@ method which the
-- 'TagManagerAccountsContainersWorkspacesResolve_conflict' request conforms to.
type TagManagerAccountsContainersWorkspacesResolve_conflictResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "resolve_conflict" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Entity
    Core.:> Core.Post '[Core.JSON] ()

-- | Resolves a merge conflict for a workspace entity by updating it to the resolved entity passed in the request.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesResolve_conflict' smart constructor.
data TagManagerAccountsContainersWorkspacesResolve_conflict = TagManagerAccountsContainersWorkspacesResolve_conflict
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the entity/in/workspace in the merge conflict.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Entity,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesResolve_conflict' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesResolve_conflict ::
  -- |  GTM Workspace\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace_id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Entity ->
  TagManagerAccountsContainersWorkspacesResolve_conflict
newTagManagerAccountsContainersWorkspacesResolve_conflict path payload =
  TagManagerAccountsContainersWorkspacesResolve_conflict
    { xgafv = Core.Nothing,
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
    TagManagerAccountsContainersWorkspacesResolve_conflict
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesResolve_conflict =
      ()
  type
    Scopes
      TagManagerAccountsContainersWorkspacesResolve_conflict =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersWorkspacesResolve_conflict {..} =
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
                  TagManagerAccountsContainersWorkspacesResolve_conflictResource
            )
            Core.mempty
