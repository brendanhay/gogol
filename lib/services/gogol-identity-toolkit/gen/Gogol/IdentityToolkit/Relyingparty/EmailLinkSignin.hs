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
-- Module      : Gogol.IdentityToolkit.Relyingparty.EmailLinkSignin
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.emailLinkSignin@.
module Gogol.IdentityToolkit.Relyingparty.EmailLinkSignin
  ( -- * Resource
    IdentityToolkitRelyingpartyEmailLinkSigninResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyEmailLinkSignin (..),
    newIdentityToolkitRelyingpartyEmailLinkSignin,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.emailLinkSignin@ method which the
-- 'IdentityToolkitRelyingpartyEmailLinkSignin' request conforms to.
type IdentityToolkitRelyingpartyEmailLinkSigninResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "emailLinkSignin"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyEmailLinkSigninRequest
    Core.:> Core.Post '[Core.JSON] EmailLinkSigninResponse

-- | Reset password for a user.
--
-- /See:/ 'newIdentityToolkitRelyingpartyEmailLinkSignin' smart constructor.
newtype IdentityToolkitRelyingpartyEmailLinkSignin = IdentityToolkitRelyingpartyEmailLinkSignin
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyEmailLinkSigninRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyEmailLinkSignin' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyEmailLinkSignin ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyEmailLinkSigninRequest ->
  IdentityToolkitRelyingpartyEmailLinkSignin
newIdentityToolkitRelyingpartyEmailLinkSignin payload =
  IdentityToolkitRelyingpartyEmailLinkSignin {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyEmailLinkSignin
  where
  type
    Rs IdentityToolkitRelyingpartyEmailLinkSignin =
      EmailLinkSigninResponse
  type
    Scopes IdentityToolkitRelyingpartyEmailLinkSignin =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartyEmailLinkSignin {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartyEmailLinkSigninResource
          )
          Core.mempty
