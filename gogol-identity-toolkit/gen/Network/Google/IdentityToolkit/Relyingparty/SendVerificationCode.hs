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
-- Module      : Network.Google.IdentityToolkit.Relyingparty.SendVerificationCode
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send SMS verification code.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.sendVerificationCode@.
module Network.Google.IdentityToolkit.Relyingparty.SendVerificationCode
  ( -- * Resource
    IdentityToolkitRelyingpartySendVerificationCodeResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartySendVerificationCode,
    IdentityToolkitRelyingpartySendVerificationCode,
  )
where

import Network.Google.IdentityToolkit.Types
import qualified Network.Google.Prelude as Core

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
  IdentityToolkitRelyingpartySendVerificationCode {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartySendVerificationCode
  where
  type
    Rs
      IdentityToolkitRelyingpartySendVerificationCode =
      IdentitytoolkitRelyingpartySendVerificationCodeResponse
  type
    Scopes
      IdentityToolkitRelyingpartySendVerificationCode =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IdentityToolkitRelyingpartySendVerificationCode {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartySendVerificationCodeResource
            )
            Core.mempty
