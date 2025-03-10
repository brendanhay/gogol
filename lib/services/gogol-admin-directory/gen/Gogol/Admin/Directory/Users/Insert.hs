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
-- Module      : Gogol.Admin.Directory.Users.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user. Mutate calls immediately following user creation might sometimes fail as the user isn\'t fully created due to propagation delay in our backends. Check the error details for the \"User creation is not complete\" message to see if this is the case. Retrying the calls after some time can help in this case. If @resolveConflictAccount@ is set to @true@, a @202@ response code means that a conflicting unmanaged account exists and was invited to join the organization. A @409@ response code means that a conflicting account exists so the user wasn\'t created based on the <https://support.google.com/a/answer/11112794 handling unmanaged user accounts> option selected.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.insert@.
module Gogol.Admin.Directory.Users.Insert
  ( -- * Resource
    DirectoryUsersInsertResource,

    -- ** Constructing a Request
    DirectoryUsersInsert (..),
    newDirectoryUsersInsert,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.users.insert@ method which the
-- 'DirectoryUsersInsert' request conforms to.
type DirectoryUsersInsertResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "resolveConflictAccount" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] User
    Core.:> Core.Post '[Core.JSON] User

-- | Creates a user. Mutate calls immediately following user creation might sometimes fail as the user isn\'t fully created due to propagation delay in our backends. Check the error details for the \"User creation is not complete\" message to see if this is the case. Retrying the calls after some time can help in this case. If @resolveConflictAccount@ is set to @true@, a @202@ response code means that a conflicting unmanaged account exists and was invited to join the organization. A @409@ response code means that a conflicting account exists so the user wasn\'t created based on the <https://support.google.com/a/answer/11112794 handling unmanaged user accounts> option selected.
--
-- /See:/ 'newDirectoryUsersInsert' smart constructor.
data DirectoryUsersInsert = DirectoryUsersInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: User,
    -- | Optional. If set to @true@, the option selected for <https://support.google.com/a/answer/11112794 handling unmanaged user accounts> will apply. Default: @false@
    resolveConflictAccount :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersInsert' with the minimum fields required to make a request.
newDirectoryUsersInsert ::
  -- |  Multipart request metadata. See 'payload'.
  User ->
  DirectoryUsersInsert
newDirectoryUsersInsert payload =
  DirectoryUsersInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resolveConflictAccount = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryUsersInsert where
  type Rs DirectoryUsersInsert = User
  type Scopes DirectoryUsersInsert = '[Admin'Directory'User]
  requestClient DirectoryUsersInsert {..} =
    go
      xgafv
      accessToken
      callback
      resolveConflictAccount
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryUsersInsertResource)
          Core.mempty
