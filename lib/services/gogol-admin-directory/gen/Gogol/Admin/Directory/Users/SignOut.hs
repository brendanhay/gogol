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
-- Module      : Gogol.Admin.Directory.Users.SignOut
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a user out of all web and device sessions and reset their sign-in cookies. User will have to sign in by authenticating again.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.signOut@.
module Gogol.Admin.Directory.Users.SignOut
  ( -- * Resource
    DirectoryUsersSignOutResource,

    -- ** Constructing a Request
    DirectoryUsersSignOut (..),
    newDirectoryUsersSignOut,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.users.signOut@ method which the
-- 'DirectoryUsersSignOut' request conforms to.
type DirectoryUsersSignOutResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "signOut"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Signs a user out of all web and device sessions and reset their sign-in cookies. User will have to sign in by authenticating again.
--
-- /See:/ 'newDirectoryUsersSignOut' smart constructor.
data DirectoryUsersSignOut = DirectoryUsersSignOut
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifies the target user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersSignOut' with the minimum fields required to make a request.
newDirectoryUsersSignOut ::
  -- |  Identifies the target user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryUsersSignOut
newDirectoryUsersSignOut userKey =
  DirectoryUsersSignOut
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersSignOut where
  type Rs DirectoryUsersSignOut = ()
  type
    Scopes DirectoryUsersSignOut =
      '[Admin'Directory'User'Security]
  requestClient DirectoryUsersSignOut {..} =
    go
      userKey
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
              Core.Proxy DirectoryUsersSignOutResource
          )
          Core.mempty
