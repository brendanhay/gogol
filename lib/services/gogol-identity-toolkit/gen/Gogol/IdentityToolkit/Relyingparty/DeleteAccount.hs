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
-- Module      : Gogol.IdentityToolkit.Relyingparty.DeleteAccount
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete user account.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.deleteAccount@.
module Gogol.IdentityToolkit.Relyingparty.DeleteAccount
  ( -- * Resource
    IdentityToolkitRelyingpartyDeleteAccountResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyDeleteAccount (..),
    newIdentityToolkitRelyingpartyDeleteAccount,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.deleteAccount@ method which the
-- 'IdentityToolkitRelyingpartyDeleteAccount' request conforms to.
type IdentityToolkitRelyingpartyDeleteAccountResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "deleteAccount"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyDeleteAccountRequest
    Core.:> Core.Post '[Core.JSON] DeleteAccountResponse

-- | Delete user account.
--
-- /See:/ 'newIdentityToolkitRelyingpartyDeleteAccount' smart constructor.
newtype IdentityToolkitRelyingpartyDeleteAccount = IdentityToolkitRelyingpartyDeleteAccount
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyDeleteAccountRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyDeleteAccount' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyDeleteAccount ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyDeleteAccountRequest ->
  IdentityToolkitRelyingpartyDeleteAccount
newIdentityToolkitRelyingpartyDeleteAccount payload =
  IdentityToolkitRelyingpartyDeleteAccount {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyDeleteAccount
  where
  type
    Rs IdentityToolkitRelyingpartyDeleteAccount =
      DeleteAccountResponse
  type
    Scopes IdentityToolkitRelyingpartyDeleteAccount =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyDeleteAccount {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyDeleteAccountResource
          )
          Core.mempty
