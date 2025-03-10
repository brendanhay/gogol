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
-- Module      : Gogol.IdentityToolkit.Relyingparty.SignOutUser
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sign out user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.signOutUser@.
module Gogol.IdentityToolkit.Relyingparty.SignOutUser
  ( -- * Resource
    IdentityToolkitRelyingpartySignOutUserResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartySignOutUser (..),
    newIdentityToolkitRelyingpartySignOutUser,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.signOutUser@ method which the
-- 'IdentityToolkitRelyingpartySignOutUser' request conforms to.
type IdentityToolkitRelyingpartySignOutUserResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "signOutUser"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartySignOutUserRequest
    Core.:> Core.Post
              '[Core.JSON]
              IdentitytoolkitRelyingpartySignOutUserResponse

-- | Sign out user.
--
-- /See:/ 'newIdentityToolkitRelyingpartySignOutUser' smart constructor.
newtype IdentityToolkitRelyingpartySignOutUser = IdentityToolkitRelyingpartySignOutUser
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartySignOutUserRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySignOutUser' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySignOutUser ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartySignOutUserRequest ->
  IdentityToolkitRelyingpartySignOutUser
newIdentityToolkitRelyingpartySignOutUser payload =
  IdentityToolkitRelyingpartySignOutUser {payload = payload}

instance Core.GoogleRequest IdentityToolkitRelyingpartySignOutUser where
  type
    Rs IdentityToolkitRelyingpartySignOutUser =
      IdentitytoolkitRelyingpartySignOutUserResponse
  type
    Scopes IdentityToolkitRelyingpartySignOutUser =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartySignOutUser {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartySignOutUserResource
          )
          Core.mempty
