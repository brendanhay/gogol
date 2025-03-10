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
-- Module      : Gogol.OSLogin.Users.SshPublicKeys.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an SSH public key.
--
-- /See:/ <https://cloud.google.com/compute/docs/oslogin/ Cloud OS Login API Reference> for @oslogin.users.sshPublicKeys.get@.
module Gogol.OSLogin.Users.SshPublicKeys.Get
  ( -- * Resource
    OSLoginUsersSshPublicKeysGetResource,

    -- ** Constructing a Request
    OSLoginUsersSshPublicKeysGet (..),
    newOSLoginUsersSshPublicKeysGet,
  )
where

import Gogol.OSLogin.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @oslogin.users.sshPublicKeys.get@ method which the
-- 'OSLoginUsersSshPublicKeysGet' request conforms to.
type OSLoginUsersSshPublicKeysGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SshPublicKey

-- | Retrieves an SSH public key.
--
-- /See:/ 'newOSLoginUsersSshPublicKeysGet' smart constructor.
data OSLoginUsersSshPublicKeysGet = OSLoginUsersSshPublicKeysGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format @users\/{user}\/sshPublicKeys\/{fingerprint}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OSLoginUsersSshPublicKeysGet' with the minimum fields required to make a request.
newOSLoginUsersSshPublicKeysGet ::
  -- |  Required. The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format @users\/{user}\/sshPublicKeys\/{fingerprint}@. See 'name'.
  Core.Text ->
  OSLoginUsersSshPublicKeysGet
newOSLoginUsersSshPublicKeysGet name =
  OSLoginUsersSshPublicKeysGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest OSLoginUsersSshPublicKeysGet where
  type Rs OSLoginUsersSshPublicKeysGet = SshPublicKey
  type
    Scopes OSLoginUsersSshPublicKeysGet =
      '[CloudPlatform'FullControl, Compute'FullControl]
  requestClient OSLoginUsersSshPublicKeysGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      oSLoginService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy OSLoginUsersSshPublicKeysGetResource)
          Core.mempty
