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
-- Module      : Network.Google.TagManager.Accounts.User_permissions.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.update@.
module Network.Google.TagManager.Accounts.User_permissions.Update
  ( -- * Resource
    TagManagerAccountsUser_permissionsUpdateResource,

    -- ** Constructing a Request
    newTagManagerAccountsUser_permissionsUpdate,
    TagManagerAccountsUser_permissionsUpdate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.update@ method which the
-- 'TagManagerAccountsUser_permissionsUpdate' request conforms to.
type TagManagerAccountsUser_permissionsUpdateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserPermission
    Core.:> Core.Put '[Core.JSON] UserPermission

-- | Updates a user\'s Account & Container access.
--
-- /See:/ 'newTagManagerAccountsUser_permissionsUpdate' smart constructor.
data TagManagerAccountsUser_permissionsUpdate = TagManagerAccountsUser_permissionsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM UserPermission\'s API relative path. Example: accounts\/{account/id}\/user/permissions\/{user/permission/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserPermission,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsUser_permissionsUpdate' with the minimum fields required to make a request.
newTagManagerAccountsUser_permissionsUpdate ::
  -- |  GTM UserPermission\'s API relative path. Example: accounts\/{account/id}\/user/permissions\/{user/permission/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserPermission ->
  TagManagerAccountsUser_permissionsUpdate
newTagManagerAccountsUser_permissionsUpdate path payload =
  TagManagerAccountsUser_permissionsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsUser_permissionsUpdate
  where
  type
    Rs TagManagerAccountsUser_permissionsUpdate =
      UserPermission
  type
    Scopes TagManagerAccountsUser_permissionsUpdate =
      '["https://www.googleapis.com/auth/tagmanager.manage.users"]
  requestClient
    TagManagerAccountsUser_permissionsUpdate {..} =
      go
        path
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
                  TagManagerAccountsUser_permissionsUpdateResource
            )
            Core.mempty
