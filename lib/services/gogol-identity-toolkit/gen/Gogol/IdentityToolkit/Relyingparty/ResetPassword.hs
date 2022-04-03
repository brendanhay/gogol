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
-- Module      : Gogol.IdentityToolkit.Relyingparty.ResetPassword
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reset password for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.resetPassword@.
module Gogol.IdentityToolkit.Relyingparty.ResetPassword
  ( -- * Resource
    IdentityToolkitRelyingpartyResetPasswordResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyResetPassword (..),
    newIdentityToolkitRelyingpartyResetPassword,
  )
where

import Gogol.IdentityToolkit.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.resetPassword@ method which the
-- 'IdentityToolkitRelyingpartyResetPassword' request conforms to.
type IdentityToolkitRelyingpartyResetPasswordResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "resetPassword"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyResetPasswordRequest
    Core.:> Core.Post '[Core.JSON] ResetPasswordResponse

-- | Reset password for a user.
--
-- /See:/ 'newIdentityToolkitRelyingpartyResetPassword' smart constructor.
newtype IdentityToolkitRelyingpartyResetPassword = IdentityToolkitRelyingpartyResetPassword
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyResetPasswordRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyResetPassword' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyResetPassword ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyResetPasswordRequest ->
  IdentityToolkitRelyingpartyResetPassword
newIdentityToolkitRelyingpartyResetPassword payload =
  IdentityToolkitRelyingpartyResetPassword {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyResetPassword
  where
  type
    Rs IdentityToolkitRelyingpartyResetPassword =
      ResetPasswordResponse
  type
    Scopes IdentityToolkitRelyingpartyResetPassword =
      '[CloudPlatform'FullControl]
  requestClient
    IdentityToolkitRelyingpartyResetPassword {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyResetPasswordResource
            )
            Core.mempty
