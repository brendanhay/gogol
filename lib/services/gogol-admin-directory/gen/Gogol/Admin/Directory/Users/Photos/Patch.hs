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
-- Module      : Gogol.Admin.Directory.Users.Photos.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a photo for the user. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.patch@.
module Gogol.Admin.Directory.Users.Photos.Patch
  ( -- * Resource
    DirectoryUsersPhotosPatchResource,

    -- ** Constructing a Request
    DirectoryUsersPhotosPatch (..),
    newDirectoryUsersPhotosPatch,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.users.photos.patch@ method which the
-- 'DirectoryUsersPhotosPatch' request conforms to.
type DirectoryUsersPhotosPatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "photos"
    Core.:> "thumbnail"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserPhoto
    Core.:> Core.Patch '[Core.JSON] UserPhoto

-- | Adds a photo for the user. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>.
--
-- /See:/ 'newDirectoryUsersPhotosPatch' smart constructor.
data DirectoryUsersPhotosPatch = DirectoryUsersPhotosPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UserPhoto,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersPhotosPatch' with the minimum fields required to make a request.
newDirectoryUsersPhotosPatch ::
  -- |  Multipart request metadata. See 'payload'.
  UserPhoto ->
  -- |  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryUsersPhotosPatch
newDirectoryUsersPhotosPatch payload userKey =
  DirectoryUsersPhotosPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersPhotosPatch where
  type Rs DirectoryUsersPhotosPatch = UserPhoto
  type Scopes DirectoryUsersPhotosPatch = '[Admin'Directory'User]
  requestClient DirectoryUsersPhotosPatch {..} =
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
          (Core.Proxy :: Core.Proxy DirectoryUsersPhotosPatchResource)
          Core.mempty
