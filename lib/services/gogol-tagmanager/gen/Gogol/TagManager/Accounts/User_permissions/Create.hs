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
-- Module      : Gogol.TagManager.Accounts.User_permissions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user\'s Account & Container access.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.create@.
module Gogol.TagManager.Accounts.User_permissions.Create
  ( -- * Resource
    TagManagerAccountsUser_permissionsCreateResource,

    -- ** Constructing a Request
    newTagManagerAccountsUser_permissionsCreate,
    TagManagerAccountsUser_permissionsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.create@ method which the
-- 'TagManagerAccountsUser_permissionsCreate' request conforms to.
type TagManagerAccountsUser_permissionsCreateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "user_permissions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserPermission
    Core.:> Core.Post '[Core.JSON] UserPermission

-- | Creates a user\'s Account & Container access.
--
-- /See:/ 'newTagManagerAccountsUser_permissionsCreate' smart constructor.
data TagManagerAccountsUser_permissionsCreate = TagManagerAccountsUser_permissionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Account\'s API relative path. Example: accounts\/{account_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserPermission,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsUser_permissionsCreate' with the minimum fields required to make a request.
newTagManagerAccountsUser_permissionsCreate ::
  -- |  GTM Account\'s API relative path. Example: accounts\/{account_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserPermission ->
  TagManagerAccountsUser_permissionsCreate
newTagManagerAccountsUser_permissionsCreate parent payload =
  TagManagerAccountsUser_permissionsCreate
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
    TagManagerAccountsUser_permissionsCreate
  where
  type
    Rs TagManagerAccountsUser_permissionsCreate =
      UserPermission
  type
    Scopes TagManagerAccountsUser_permissionsCreate =
      '[Tagmanager'Manage'Users]
  requestClient
    TagManagerAccountsUser_permissionsCreate {..} =
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
                  TagManagerAccountsUser_permissionsCreateResource
            )
            Core.mempty
