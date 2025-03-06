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
-- Module      : Gogol.Admin.Directory.Users.Aliases.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.insert@.
module Gogol.Admin.Directory.Users.Aliases.Insert
  ( -- * Resource
    DirectoryUsersAliasesInsertResource,

    -- ** Constructing a Request
    DirectoryUsersAliasesInsert (..),
    newDirectoryUsersAliasesInsert,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.users.aliases.insert@ method which the
-- 'DirectoryUsersAliasesInsert' request conforms to.
type DirectoryUsersAliasesInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "aliases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Alias
    Core.:> Core.Post '[Core.JSON] Alias

-- | Adds an alias.
--
-- /See:/ 'newDirectoryUsersAliasesInsert' smart constructor.
data DirectoryUsersAliasesInsert = DirectoryUsersAliasesInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Alias,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersAliasesInsert' with the minimum fields required to make a request.
newDirectoryUsersAliasesInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Alias ->
  -- |  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryUsersAliasesInsert
newDirectoryUsersAliasesInsert payload userKey =
  DirectoryUsersAliasesInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersAliasesInsert where
  type Rs DirectoryUsersAliasesInsert = Alias
  type
    Scopes DirectoryUsersAliasesInsert =
      '[Admin'Directory'User, Admin'Directory'User'Alias]
  requestClient DirectoryUsersAliasesInsert {..} =
    go
      userKey
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
          (Core.Proxy :: Core.Proxy DirectoryUsersAliasesInsertResource)
          Core.mempty
