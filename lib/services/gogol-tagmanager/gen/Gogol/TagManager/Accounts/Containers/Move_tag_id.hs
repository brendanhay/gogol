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
-- Module      : Gogol.TagManager.Accounts.Containers.Move_tag_id
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Move Tag ID out of a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.move_tag_id@.
module Gogol.TagManager.Accounts.Containers.Move_tag_id
  ( -- * Resource
    TagManagerAccountsContainersMove_tag_idResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersMove_tag_id (..),
    newTagManagerAccountsContainersMove_tag_id,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.move_tag_id@ method which the
-- 'TagManagerAccountsContainersMove_tag_id' request conforms to.
type TagManagerAccountsContainersMove_tag_idResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "move_tag_id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowUserPermissionFeatureUpdate" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "copySettings" Core.Bool
    Core.:> Core.QueryParam "copyTermsOfService" Core.Bool
    Core.:> Core.QueryParam "copyUsers" Core.Bool
    Core.:> Core.QueryParam "tagId" Core.Text
    Core.:> Core.QueryParam "tagName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Container

-- | Move Tag ID out of a Container.
--
-- /See:/ 'newTagManagerAccountsContainersMove_tag_id' smart constructor.
data TagManagerAccountsContainersMove_tag_id = TagManagerAccountsContainersMove_tag_id
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.
    allowUserPermissionFeatureUpdate :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether or not to copy tag settings from this tag to the new tag.
    copySettings :: (Core.Maybe Core.Bool),
    -- | Must be set to true to accept all terms of service agreements copied from the current tag to the newly created tag. If this bit is false, the operation will fail.
    copyTermsOfService :: (Core.Maybe Core.Bool),
    -- | Whether or not to copy users from this tag to the new tag.
    copyUsers :: (Core.Maybe Core.Bool),
    -- | GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    path :: Core.Text,
    -- | Tag ID to be removed from the current Container.
    tagId :: (Core.Maybe Core.Text),
    -- | The name for the newly created tag.
    tagName :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersMove_tag_id' with the minimum fields required to make a request.
newTagManagerAccountsContainersMove_tag_id ::
  -- |  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersMove_tag_id
newTagManagerAccountsContainersMove_tag_id path =
  TagManagerAccountsContainersMove_tag_id
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowUserPermissionFeatureUpdate = Core.Nothing,
      callback = Core.Nothing,
      copySettings = Core.Nothing,
      copyTermsOfService = Core.Nothing,
      copyUsers = Core.Nothing,
      path = path,
      tagId = Core.Nothing,
      tagName = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TagManagerAccountsContainersMove_tag_id where
  type Rs TagManagerAccountsContainersMove_tag_id = Container
  type
    Scopes TagManagerAccountsContainersMove_tag_id =
      '[Tagmanager'Edit'Containers]
  requestClient TagManagerAccountsContainersMove_tag_id {..} =
    go
      path
      xgafv
      accessToken
      allowUserPermissionFeatureUpdate
      callback
      copySettings
      copyTermsOfService
      copyUsers
      tagId
      tagName
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersMove_tag_idResource
          )
          Core.mempty
