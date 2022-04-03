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
-- Module      : Gogol.Admin.Directory.Users.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a deleted user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.undelete@.
module Gogol.Admin.Directory.Users.Undelete
  ( -- * Resource
    DirectoryUsersUndeleteResource,

    -- ** Constructing a Request
    DirectoryUsersUndelete (..),
    newDirectoryUsersUndelete,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.users.undelete@ method which the
-- 'DirectoryUsersUndelete' request conforms to.
type DirectoryUsersUndeleteResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "undelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserUndelete
    Core.:> Core.Post '[Core.JSON] ()

-- | Undeletes a deleted user.
--
-- /See:/ 'newDirectoryUsersUndelete' smart constructor.
data DirectoryUsersUndelete = DirectoryUsersUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UserUndelete,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The immutable id of the user
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersUndelete' with the minimum fields required to make a request.
newDirectoryUsersUndelete ::
  -- |  Multipart request metadata. See 'payload'.
  UserUndelete ->
  -- |  The immutable id of the user See 'userKey'.
  Core.Text ->
  DirectoryUsersUndelete
newDirectoryUsersUndelete payload userKey =
  DirectoryUsersUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersUndelete where
  type Rs DirectoryUsersUndelete = ()
  type
    Scopes DirectoryUsersUndelete =
      '[Admin'Directory'User]
  requestClient DirectoryUsersUndelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy DirectoryUsersUndeleteResource
          )
          Core.mempty
