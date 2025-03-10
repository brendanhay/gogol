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
-- Module      : Gogol.IdentityToolkit.Relyingparty.SendVerificationCode
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send SMS verification code.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.sendVerificationCode@.
module Gogol.IdentityToolkit.Relyingparty.SendVerificationCode
  ( -- * Resource
    IdentityToolkitRelyingpartySendVerificationCodeResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartySendVerificationCode (..),
    newIdentityToolkitRelyingpartySendVerificationCode,
  )
where

import Gogol.IdentityToolkit.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @identitytoolkit.relyingparty.sendVerificationCode@ method which the
-- 'IdentityToolkitRelyingpartySendVerificationCode' request conforms to.
type IdentityToolkitRelyingpartySendVerificationCodeResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "sendVerificationCode"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartySendVerificationCodeRequest
    Core.:> Core.Post
              '[Core.JSON]
              IdentitytoolkitRelyingpartySendVerificationCodeResponse

-- | Send SMS verification code.
--
-- /See:/ 'newIdentityToolkitRelyingpartySendVerificationCode' smart constructor.
newtype IdentityToolkitRelyingpartySendVerificationCode = IdentityToolkitRelyingpartySendVerificationCode
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartySendVerificationCodeRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartySendVerificationCode' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartySendVerificationCode ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartySendVerificationCodeRequest ->
  IdentityToolkitRelyingpartySendVerificationCode
newIdentityToolkitRelyingpartySendVerificationCode payload =
  IdentityToolkitRelyingpartySendVerificationCode
    { payload =
        payload
    }

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartySendVerificationCode
  where
  type
    Rs IdentityToolkitRelyingpartySendVerificationCode =
      IdentitytoolkitRelyingpartySendVerificationCodeResponse
  type
    Scopes IdentityToolkitRelyingpartySendVerificationCode =
      '[CloudPlatform'FullControl]
  requestClient IdentityToolkitRelyingpartySendVerificationCode {..} =
    go (Core.Just Core.AltJSON) payload identityToolkitService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IdentityToolkitRelyingpartySendVerificationCodeResource
          )
          Core.mempty
