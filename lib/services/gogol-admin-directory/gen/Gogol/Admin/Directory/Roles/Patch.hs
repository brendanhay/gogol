{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Admin.Directory.Roles.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.patch@.
module Gogol.Admin.Directory.Roles.Patch
  ( -- * Resource
    DirectoryRolesPatchResource,

    -- ** Constructing a Request
    DirectoryRolesPatch (..),
    newDirectoryRolesPatch,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.roles.patch@ method which the
-- 'DirectoryRolesPatch' request conforms to.
type DirectoryRolesPatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "roles"
    Core.:> Core.Capture "roleId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Role
    Core.:> Core.Patch '[Core.JSON] Role

-- | Patches a role.
--
-- /See:/ 'newDirectoryRolesPatch' smart constructor.
data DirectoryRolesPatch = DirectoryRolesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customer :: Core.Text,
    -- | Multipart request metadata.
    payload :: Role,
    -- | Immutable ID of the role.
    roleId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryRolesPatch' with the minimum fields required to make a request.
newDirectoryRolesPatch ::
  -- |  Immutable ID of the Google Workspace account. See 'customer'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Role ->
  -- |  Immutable ID of the role. See 'roleId'.
  Core.Text ->
  DirectoryRolesPatch
newDirectoryRolesPatch customer payload roleId =
  DirectoryRolesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      payload = payload,
      roleId = roleId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryRolesPatch where
  type Rs DirectoryRolesPatch = Role
  type Scopes DirectoryRolesPatch = '[Admin'Directory'Rolemanagement]
  requestClient DirectoryRolesPatch {..} =
    go
      customer
      roleId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryRolesPatchResource)
          Core.mempty
