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
-- Module      : Gogol.Admin.Directory.Users.Aliases.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an alias.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.aliases.delete@.
module Gogol.Admin.Directory.Users.Aliases.Delete
  ( -- * Resource
    DirectoryUsersAliasesDeleteResource,

    -- ** Constructing a Request
    newDirectoryUsersAliasesDelete,
    DirectoryUsersAliasesDelete,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.users.aliases.delete@ method which the
-- 'DirectoryUsersAliasesDelete' request conforms to.
type DirectoryUsersAliasesDeleteResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "aliases"
    Core.:> Core.Capture "alias" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes an alias.
--
-- /See:/ 'newDirectoryUsersAliasesDelete' smart constructor.
data DirectoryUsersAliasesDelete = DirectoryUsersAliasesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The alias to be removed.
    alias :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersAliasesDelete' with the minimum fields required to make a request.
newDirectoryUsersAliasesDelete ::
  -- |  The alias to be removed. See 'alias'.
  Core.Text ->
  -- |  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryUsersAliasesDelete
newDirectoryUsersAliasesDelete alias userKey =
  DirectoryUsersAliasesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alias = alias,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance
  Core.GoogleRequest
    DirectoryUsersAliasesDelete
  where
  type Rs DirectoryUsersAliasesDelete = ()
  type
    Scopes DirectoryUsersAliasesDelete =
      '[Admin'Directory'User, Admin'Directory'User'Alias]
  requestClient DirectoryUsersAliasesDelete {..} =
    go
      userKey
      alias
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryUsersAliasesDeleteResource
          )
          Core.mempty
