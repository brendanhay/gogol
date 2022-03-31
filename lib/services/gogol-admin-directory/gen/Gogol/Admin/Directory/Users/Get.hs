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
-- Module      : Gogol.Admin.Directory.Users.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.get@.
module Gogol.Admin.Directory.Users.Get
  ( -- * Resource
    DirectoryUsersGetResource,

    -- ** Constructing a Request
    newDirectoryUsersGet,
    DirectoryUsersGet,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.users.get@ method which the
-- 'DirectoryUsersGet' request conforms to.
type DirectoryUsersGetResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customFieldMask" Core.Text
    Core.:> Core.QueryParam "projection" UsersGetProjection
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "viewType" UsersGetViewType
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] User

-- | Retrieves a user.
--
-- /See:/ 'newDirectoryUsersGet' smart constructor.
data DirectoryUsersGet = DirectoryUsersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when @projection=custom@.
    customFieldMask :: (Core.Maybe Core.Text),
    -- | What subset of fields to fetch for this user.
    projection :: UsersGetProjection,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text,
    -- | Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see </admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin Retrieve a user as a non-administrator>.
    viewType :: UsersGetViewType
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersGet' with the minimum fields required to make a request.
newDirectoryUsersGet ::
  -- |  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryUsersGet
newDirectoryUsersGet userKey =
  DirectoryUsersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customFieldMask = Core.Nothing,
      projection = UsersGetProjection_Basic,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey,
      viewType = UsersGetViewType_AdminView
    }

instance Core.GoogleRequest DirectoryUsersGet where
  type Rs DirectoryUsersGet = User
  type
    Scopes DirectoryUsersGet =
      '[ Admin'Directory'User,
         Admin'Directory'User'Readonly
       ]
  requestClient DirectoryUsersGet {..} =
    go
      userKey
      xgafv
      accessToken
      callback
      customFieldMask
      (Core.Just projection)
      uploadType
      uploadProtocol
      (Core.Just viewType)
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryUsersGetResource)
          Core.mempty
