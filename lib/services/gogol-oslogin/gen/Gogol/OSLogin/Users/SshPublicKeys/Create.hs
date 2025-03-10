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
-- Module      : Gogol.OSLogin.Users.SshPublicKeys.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an SSH public key
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.create@.
module Gogol.OSLogin.Users.SshPublicKeys.Create
  ( -- * Resource
    OSLoginUsersSshPublicKeysCreateResource,

    -- ** Constructing a Request
    OSLoginUsersSshPublicKeysCreate (..),
    newOSLoginUsersSshPublicKeysCreate,
  )
where

import Gogol.OSLogin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @oslogin.users.sshPublicKeys.create@ method which the
-- 'OSLoginUsersSshPublicKeysCreate' request conforms to.
type OSLoginUsersSshPublicKeysCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sshPublicKeys"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SshPublicKey
    Core.:> Core.Post '[Core.JSON] SshPublicKey

-- | Create an SSH public key
--
-- /See:/ 'newOSLoginUsersSshPublicKeysCreate' smart constructor.
data OSLoginUsersSshPublicKeysCreate = OSLoginUsersSshPublicKeysCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique ID for the user in format @users\/{user}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: SshPublicKey,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersSshPublicKeysCreate' with the minimum fields required to make a request.
newOSLoginUsersSshPublicKeysCreate ::
  -- |  Required. The unique ID for the user in format @users\/{user}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SshPublicKey ->
  OSLoginUsersSshPublicKeysCreate
newOSLoginUsersSshPublicKeysCreate parent payload =
  OSLoginUsersSshPublicKeysCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest OSLoginUsersSshPublicKeysCreate where
  type Rs OSLoginUsersSshPublicKeysCreate = SshPublicKey
  type
    Scopes OSLoginUsersSshPublicKeysCreate =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient OSLoginUsersSshPublicKeysCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      oSLoginService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy OSLoginUsersSshPublicKeysCreateResource)
          Core.mempty
