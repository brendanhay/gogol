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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Template.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.templates.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Templates.Update
  ( -- * Resource
    TagManagerAccountsContainersWorkspacesTemplatesUpdateResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersWorkspacesTemplatesUpdate,
    TagManagerAccountsContainersWorkspacesTemplatesUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.templates.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesTemplatesUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesTemplatesUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] CustomTemplate
    Core.:> Core.Put '[Core.JSON] CustomTemplate

-- | Updates a GTM Template.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTemplatesUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesTemplatesUpdate = TagManagerAccountsContainersWorkspacesTemplatesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the templates in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Custom Template\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/templates\/{template/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: CustomTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTemplatesUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTemplatesUpdate ::
  -- |  GTM Custom Template\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/templates\/{template/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CustomTemplate ->
  TagManagerAccountsContainersWorkspacesTemplatesUpdate
newTagManagerAccountsContainersWorkspacesTemplatesUpdate path payload =
  TagManagerAccountsContainersWorkspacesTemplatesUpdate
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
    TagManagerAccountsContainersWorkspacesTemplatesUpdate
  where
  type
    Rs
      TagManagerAccountsContainersWorkspacesTemplatesUpdate =
      CustomTemplate
  type
    Scopes
      TagManagerAccountsContainersWorkspacesTemplatesUpdate =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient
    TagManagerAccountsContainersWorkspacesTemplatesUpdate {..} =
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
                  TagManagerAccountsContainersWorkspacesTemplatesUpdateResource
            )
            Core.mempty
